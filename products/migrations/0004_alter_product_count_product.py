# Generated by Django 4.2.13 on 2024-08-24 08:17

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0003_rename_count_product_count'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product_count',
            name='product',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='product_counts', to='products.product'),
        ),
    ]
