from django.contrib import admin
from django.urls import path, include
from . import views

urlpatterns = [
    path("", views.top),
    path("product/", views.product_list)
]