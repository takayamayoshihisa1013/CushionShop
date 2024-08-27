from django.contrib import admin
from django.urls import path, include
from . import views

urlpatterns = [
    path("", views.top, name="top"),
    path("product/", views.product_list, name="product_list"),
    path("product/<str:id>/", views.product, name="product"),
    path("new_product/", views.new_product),
    path("kart/", views.kart),
    path("favorite/", views.favorite),
    path("favorite_product/", views.favorite_page),
    path("purchase_history/", views.history, name="purchase_history")
]