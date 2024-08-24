# myapp/templatetags/custom_filters.py
from django import template

register = template.Library()

@register.filter
def multiply(value, arg):
    try:
        return value * arg
    except (ValueError, TypeError):
        return ''

@register.filter
def add(value, arg):
    try:
        return value + arg
    except (ValueError, TypeError):
        return ''

@register.filter
def divide(value, arg):
    try:
        return int(value / arg)
    except (ValueError, TypeError):
        return ''