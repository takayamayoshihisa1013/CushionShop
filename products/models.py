from django.db import models
import uuid

# Create your models here.

class Product(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=50)
    description = models.TextField()
    price = models.IntegerField()
    stock = models.IntegerField()
    top_img = models.CharField(max_length=100)
    product_type = models.CharField(max_length=10, default="DEFAULT_TYPE")

class Color(models.Model):
    id = models.AutoField(primary_key=True)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    color = models.CharField(max_length=10)

class Size(models.Model):
    id = models.AutoField(primary_key=True)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    size_name = models.CharField(max_length=10)
    size_x = models.IntegerField(default=0)
    size_y = models.IntegerField(default=0)

class Image(models.Model):
    id = models.AutoField(primary_key=True)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    image = models.CharField(max_length=100)
    
