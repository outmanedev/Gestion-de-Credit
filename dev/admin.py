from django.contrib import admin
from.models import Produit,Client

# Register your models here.

from .models import Carousel

admin.site.register(Carousel)
admin.site.register(Produit)
admin.site.register(Client)



