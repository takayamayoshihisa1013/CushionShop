from django.db import models
import uuid

# Create your models here.

class Product(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=50)
    description = models.TextField()
    price = models.IntegerField()
    stock = models.IntegerField()
    color = models.CharField(max_length=10)
    top_img = models.CharField(max_length=100)

class Size(models.Model):
    id = models.AutoField(primary_key=True)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    size_name = models.CharField(max_length=10)
    size = models.IntegerField()

class image(models.Model):
    id = models.AutoField(primary_key=True)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    image = models.CharField(max_length=100)
    
