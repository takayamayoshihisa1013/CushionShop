from django.shortcuts import render, redirect
from .models import Product, Size, Image, Color, Kart, Buy, Favorite, Product_count
from account.models import User
import os
from django.conf import settings
from django.core.files.storage import FileSystemStorage
import uuid
from django.db.models import Sum
import math
from django.db.models.functions import TruncDate
from collections import defaultdict
from django.db.models.functions import TruncDate

# Create your views here.

def login_check(request):
    if "user_id" in request.session:
        login_check = True
        print(request.session["user_id"])
    else:
        print("ない")
        login_check = False

    return login_check


def top(request):

    new_product_data = Product.objects.prefetch_related(
        "color_set", "size_set", "image_set").order_by("-created_at")[0:16]

    login_check(request)
    
    
    # print(request.session["user_id"])
    # print(request.session["product_list"])

    return render(request, "top.html", {"new_product_data": new_product_data, "login_check": login_check(request)})


def product_list(request):
    page = int(request.GET.get("page", "1"))
    search = request.GET.get("search", "")
    type = request.GET.get("type", "")
    sort = request.GET.get("sort", "")
    start_id = 16 * (page - 1)
    end_id = start_id + 16
    
    if sort:
        if sort =="new":
            product_sort = "-created_at"
            
            print("new")
        elif sort =="high-price":
            product_sort = "-price"
            print("hp")
        elif sort =="low-price":
            product_sort  = "price"
            print("lp")
        elif sort == "popular":
            product_sort = "-product_counts__buy_count"
        else:
            product_sort = "created_at"
            print("else")
    else:
        product_sort = "created_at"
    # print(page)
    
    if search:
        products = Product.objects.filter(name__contains=search).prefetch_related(
            "color_set", "size_set", "image_set").order_by(product_sort)[start_id:end_id]
        count = Product.objects.filter(name__contains=search).prefetch_related(
            "color_set", "size_set", "image_set").order_by(product_sort)
        add_url = {"search": search}
    elif type:
        products = Product.objects.filter(product_type__iexact=type).prefetch_related(
            "color_set", "size_set", "image_set").order_by(product_sort)[start_id:end_id]
        count = products = Product.objects.filter(product_type__iexact=type).prefetch_related(
            "color_set", "size_set", "image_set").order_by(product_sort)[start_id:end_id]
        print(type)
        add_url = {"type": type}

    else:
        products = Product.objects.all().prefetch_related(
            "color_set", "size_set", "image_set").order_by(product_sort)[start_id:end_id]
        count = Product.objects.all().prefetch_related(
            "color_set", "size_set", "image_set").order_by(product_sort)
        add_url = {}
    request.session["last_page"] = request.build_absolute_uri()
    total = range(1, math.ceil((count.count()) / 16) + 1)
    print(total, products.count())
    context = {
        "products": products,
        "login_check": login_check(request), 
        "total": total,
        "sort": sort,
        "now_page":page
        }
    context.update(add_url)
    print(context)
    return render(request, "product_list.html", context)


def product(request, id):
    print(request.session)
    request.session["last_page"] = request.build_absolute_uri()
    if "user_id" not in request.session:
        return redirect("/user/login/")
    product_data = Product.objects.prefetch_related(
        "color_set", "size_set", "image_set").get(id=id)
    # print(product_data.image_set.all(), "product")
    user_data = User.objects.get(id=uuid.UUID(request.session["user_id"]))
    exist_favorite = Favorite.objects.filter(
        product=product_data, user_id=user_data).first()
    if exist_favorite:
        favorite = True
    else:
        favorite = False

    view_count, created = Product_count.objects.get_or_create(
        product=product_data)
    if not created:
        view_count.view_count += 1
        view_count.save()
    else:
        view_count.view_count = 1
        view_count.save()

    read_more = Product.objects.all().prefetch_related(
        "color_set", "size_set", "image_set", "product_counts"
    ).annotate(
        total_buy_count=Sum("product_counts__buy_count")
    ).order_by(
        "-total_buy_count"
    )[:16]

    if request.method == "POST":
        color = request.POST.get("color")
        size = request.POST.get("size", "")
        count = request.POST.get("count")
        print(id, color, size, count)
        # user_data = User.objects.get(id=request.session["user_id"])
        if request.POST.get("submit") == "kart":
            print("kart")

            exist_kart = Kart.objects.filter(
                user_id=user_data, color=color, product=product_data).first()
            if exist_kart:
                print(exist_kart.id, "exist!")
                exist_kart.count += int(count)
                exist_kart.save()
            else:
                print("カートに存在しないよ")

                new_kart = Kart(
                    product=product_data,
                    user_id=user_data,
                    color=color,
                    count=count,
                    image=product_data.top_img
                )

                new_kart.save()

            product_data.stock -= int(count)
            product_data.save()
            return redirect(request.session["last_page"])

        elif request.POST.get("submit") == "buy":
            print("buy")

        else:
            print("error")

    return render(request, "product.html", {"product_data": product_data, "favorite": favorite, "login_check": login_check(request), "read_more": read_more})


def new_product(request):

    if request.method == "POST":
        product_name = request.POST.get("name")
        price = request.POST.get("price")
        colors = request.POST.getlist("color")
        stock = request.POST.get("stock")
        description = request.POST.get("description")
        size_name = request.POST.getlist("size_name")
        size_x = request.POST.getlist("size_x")
        size_y = request.POST.getlist("size_y")
        top_img = request.FILES.get("top_img")
        sub_img_li = request.FILES.getlist("sub_img")
        product_type = request.POST.get("product_type")

        print(product_name, price, colors, description, size_name,
            size_x, size_y, top_img, sub_img_li, product_type)

        # 画像ファイルの保存先ディレクトリ
        image_directory = os.path.join(
            settings.BASE_DIR, 'products', 'static', "images", 'product_images')

        # ディレクトリが存在しない場合、作成する
        if not os.path.exists(image_directory):
            os.makedirs(image_directory)

        # FileSystemStorageを使ってファイルを保存
        fs = FileSystemStorage(location=image_directory)

        if top_img:
            top_img_name = fs.save(top_img.name, top_img)
        else:
            top_img_name = None

        sub_img_names = []
        for sub_img in sub_img_li:
            sub_img_name = fs.save(sub_img.name, sub_img)
            sub_img_names.append(sub_img_name)

        new_product = Product(
            name=product_name,
            description=description,
            price=price,
            stock=stock,
            top_img=top_img_name,
            product_type=product_type
        )

        new_product.save()

        product_id = new_product

        colors = [Color(product=product_id, color=color) for color in colors]

        if colors:
            Color.objects.bulk_create(colors)

        size_group = []
        for i in range(len(size_name)):
            size = []
            size.append(size_name[i])
            size.append(size_x[i])
            size.append(size_y[i])
            size_group.append(size)
            new_size = Size(
                product=product_id,
                size_name=size_name[i],
                size_x=size_x[i],
                size_y=size_y[i]
            )

            new_size.save()

        sub_images = [Image(product=product_id, image=sub_img_name)
                            for sub_img_name in sub_img_names]

        if sub_images:
            Image.objects.bulk_create(sub_images)

    return render(request, "new_product.html")


def kart(request):
    # user_data = User.objects.get(id = uuid.UUID(request.session["user_id"]))
    request.session["last_page"] = request.build_absolute_uri()
    if "user_id" not in request.session:
        return redirect("/user/login/")
    if request.method == "POST":
        print()
        pay_data = request.POST
        print(pay_data)
        for id, count in pay_data.items():
            # print(id, count)

            if id != 'csrfmiddlewaretoken':
                count = int(count)
                kart_product_data = Kart.objects.get(id=uuid.UUID(id))
                user_data = User.objects.get(
                    id=uuid.UUID(request.session["user_id"]))
                print(kart_product_data.product)
                product_data = Product.objects.get(
                    id=kart_product_data.product.id)
                if int(kart_product_data.count) < count:
                    # カートテーブルに登録されている個数より多かったらさらに商品テーブルからストックを減らす
                    print("多い", count - int(kart_product_data.count))
                    product_data.stock -= (count -
                                           int(kart_product_data.count))
                    product_data.save()
                elif int(kart_product_data.count) > count:
                    print("低い")
                    product_data.stock += (int(kart_product_data.count) - count)
                    product_data.save()
                else:
                    pass

                new_buy = Buy(
                    product=kart_product_data.product,
                    user_id=user_data,
                    color=kart_product_data.color,
                    count=count,
                    image=kart_product_data.image,
                )

                new_buy.save()
                kart_product_data.delete()

                buy_count, created = Product_count.objects.get_or_create(
                    product=product_data)

                if not created:
                    buy_count.buy_count += count
                    buy_count.save()
                else:
                    buy_count.buy_count = count
                    buy_count.save()

                return redirect("/kart/")
            else:
                pass

    kart_data = Kart.objects.filter(
        user_id=uuid.UUID(request.session["user_id"]))
    # for product in kart_data:
    #     print(product.image)

    if not kart_data:
        print("商品がありません")

    return render(request, "kart.html", {"kart_data": kart_data, "login_check": login_check(request)})


def favorite(request):
    
    id = request.POST.get("favorite")
    print("favorite", id)
    user_data = User.objects.get(id=uuid.UUID(request.session["user_id"]))
    product_data = Product.objects.get(id=uuid.UUID(id))
    exist_favorite = Favorite.objects.filter(
        product=product_data, user_id=user_data).first()
    if exist_favorite:
        exist_favorite.delete()
    else:
        new_favorite = Favorite(
            product=product_data,
            user_id=user_data
        )
        new_favorite.save()
    return redirect(request.session["last_page"])

def favorite_page(request):
    request.session["last_page"] = request.build_absolute_uri()
    if "user_id" not in request.session:
        return redirect("/user/login/")
    page = int(request.GET.get("page", "1"))
    start_id = 8 * (page - 1)
    end_id = start_id + 8
    products = Product.objects.filter(favorite__user_id=uuid.UUID(request.session["user_id"])).prefetch_related(
        "color_set", "size_set", "image_set"
    ).order_by("created_at")[start_id:end_id]
    request.session["last_page"] = request.build_absolute_uri()
    total = range(1, math.ceil((Favorite.objects.all().count()) / 8) + 1)
    context = {
        "products": products,
        "login_check": login_check(request),
        "total": total,
        "favorite":"favorite"
        }
    return render(request, "product_list.html", context)



def history(request):
    request.session["last_page"] = request.build_absolute_uri()
    if "user_id" not in request.session:
        return redirect("/user/login/")
    history_data = Buy.objects.filter(user_id=uuid.UUID(request.session["user_id"])).annotate(date=TruncDate("time")).order_by("-time")
    
    grouped_history = defaultdict(list)
    for history in history_data:
        grouped_history[history.time.date()].append(history)
    
    # print(grouped_history)
    
    for date, histories in grouped_history.items():
        # print(date)
        for history in histories:
            print(history.image)
    
    return render(request, "history.html", {"grouped_history": grouped_history.items(), "login_check": login_check(request)})
