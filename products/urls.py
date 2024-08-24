from django.contrib import admin
from django.urls import path, include
from . import views

urlpatterns = [
    path("", views.top),
    path("product/", views.product_list),
    path("product/<str:id>/", views.product),
    path("new_product/", views.new_product),
    path("kart/", views.kart),
    path("favorite/", views.favorite)
]