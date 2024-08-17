from django.shortcuts import render

# Create your views here.
def top(request):
    return render(request, "top.html")

def product_list(request):
    
    return render(request, "product_list.html")