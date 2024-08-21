from django.shortcuts import render, redirect
from .models import User
# Create your views here.

def login(request):
    if request.method == "POST":
        email = request.POST.get("email")
        password = request.POST.get("password")
        user_data = User.objects.get(email = email, password = password)
        if user_data:
            request.session["user_id"] = str(user_data.id)
            if "last_page" in request.session:
                print(request.session["last_page"])
                return redirect(request.session["last_page"])
            else:
                print("last_pageない")
                return redirect("/")
            
    return render(request, "login.html")

def sign_up(request):
    if request.method == "POST":
        username = request.POST.get("username")
        email = request.POST.get("email")
        password = request.POST.get("password")
        print(username, email, password)
        
        new_user = User(
            name = username,
            email = email,
            password = password
        )
        
        new_user.save()
        request.session["user_id"] = str(new_user.id)
        return redirect("/")
        
    return render(request, "signup.html")