from django.shortcuts import render

# Create your views here.
def top(request):
    return render(request, "top.html")

def product_list(request):
    
    return render(request, "product_list.html")

def product(request, id):
    
    if request.method == "POST":
        color = request.POST.get("color")
        size = request.POST.get("size", "")
        count = request.POST.get("count")
        print(id, color, size, count)
    
    return render(request, "product.html")

def new_product(request):
    
    if request.method == "POST":
        product_name = request.POST.get("name")
        price = request.POST.get("price")
        color = request.POST.get("color")
        size_name = request.POST.getlist("size_name")
        size_x = request.POST.getlist("size_x")
        size_y = request.POST.getlist("size_y")
        top_img = request.POST.get("top_img")
        sub_img_li = request.POST.getlist("sub_img")
        
        print(product_name, price, color, size_name, size_x, size_y, top_img, sub_img_li)
        
        size_group = []
        for i in range(len(size_name)):
            size = []
            size.append(size_name[i])
            size.append(size_x[i])
            size.append(size_y[i])
            size_group.append(size)
        
        # size = size_name + size_x + size_y
        
        print(size_group)
    
    return render(request, "new_product.html")
