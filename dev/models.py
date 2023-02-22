from django.db import models

# Create your models here.
from django.db import models
from phone_field import PhoneField

from datetime import datetime, timezone
from django.db.models import Sum

# Create your models here.
class Carousel(models.Model):
    title = models.CharField(max_length=200, null=True, blank=True)
    description = models.TextField(null=True, blank=True)
    image = models.FileField(null=True, blank=True)
    def __str__(self):
        return self.title

class Produit(models.Model):
    name = models.CharField(max_length=100, null=True, blank=True)
    image = models.FileField(null=True, blank=True)
    descrip = models.TextField(null=True, blank=True)
    prix = models.CharField(max_length=100, null=True, blank=True)


    def __str__(self):
        return self.name
    



class Client(models.Model):
    name = models.CharField(max_length=255)
    prenom = models.CharField(max_length=255)
    telephone= models.CharField(max_length=20)
    credits = models.DecimalField(max_digits=10, decimal_places=2, default=0)

    def __str__(self):
        return self.name
    
    
class Credit(models.Model):
    client = models.ForeignKey(Client, on_delete=models.CASCADE)
    produit = models.ForeignKey(Produit, on_delete=models.CASCADE, null=True) 
    quantite = models.PositiveIntegerField(default=1)
    dateCreation =  models.DateTimeField(default=datetime.now)
    update_date = models.DateTimeField(auto_now=True)
    montant = models.PositiveIntegerField(null=True)

    def __str__(self):
        return f"{self.client.name} - {self.produit.name} ({self.quantite})"
    
   
