from django.shortcuts import render, redirect
from .models import Product, Size, Image, Color, Kart, Buy
from account.models import User
import os
from django.conf import settings
from django.core.files.storage import FileSystemStorage
import uuid

# Create your views here.


def top(request):

    new_product_data = Product.objects.prefetch_related(
        "color_set", "size_set", "image_set").order_by("-id")
    # print(request.session["user_id"])
    # print(request.session["product_list"])
    if "user_id" in request.session:
        print(request.session["user_id"])
    else:
        print("ない")

    return render(request, "top.html", {"new_product_data": new_product_data})


def product_list(request):
    products = Product.objects.all().prefetch_related(
        "color_set", "size_set", "image_set").order_by("id")
    request.session["last_page"] = request.build_absolute_uri()
    return render(request, "product_list.html", {"products": products})


def product(request, id):
    print(request.session)
    request.session["last_page"] = request.build_absolute_uri()
    if "user_id" not in request.session:
        return redirect("/user/login/")
    product_data = Product.objects.prefetch_related(
        "color_set", "size_set", "image_set").get(id=id)
    # print(product_data.image_set.all(), "product")
    if request.method == "POST":
        color = request.POST.get("color")
        size = request.POST.get("size", "")
        count = request.POST.get("count")
        print(id, color, size, count)
        user_data = User.objects.get(id=request.session["user_id"])
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

    return render(request, "product.html", {"product_data": product_data})


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

    if request.method == "POST":
        print()
        pay_data = request.POST
        print(pay_data)
        for id, count in pay_data.items():
            # print(id, count)
            
            
            if id != 'csrfmiddlewaretoken':
                count = int(count)
                kart_product_data = Kart.objects.get(id = uuid.UUID(id))
                user_data = User.objects.get(id = uuid.UUID(request.session["user_id"]))
                print(kart_product_data.product)
                product_data = Product.objects.get(id=kart_product_data.product.id)
                if int(kart_product_data.count) < count:
                    # カートテーブルに登録されている個数より多かったらさらに商品テーブルからストックを減らす
                    print("多い", count - int(kart_product_data.count))
                    product_data.stock -= (count - int(kart_product_data.count))
                    product_data.save()
                elif int(kart_product_data.count) > count:
                    print("低い")
                    product_data.stock += (int(kart_product_data.count) - count)
                    product_data.save()
                else:
                    pass
                
                new_buy = Buy(
                    product = kart_product_data.product,
                    user_id = user_data,
                    color = kart_product_data.color,
                    count = count,
                    image = kart_product_data.image,
                )
                
                new_buy.save()
                kart_product_data.delete()
                return redirect("/kart/")
            else:
                pass
    
    kart_data = Kart.objects.filter(user_id = uuid.UUID(request.session["user_id"]))
    # for product in kart_data:
    #     print(product.image)
    
    if not kart_data:
        print("商品がありません")
    
    
    return render(request, "kart.html", {"kart_data":kart_data})