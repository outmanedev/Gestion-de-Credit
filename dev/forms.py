from django import forms
from .models import Produit,Client,Credit


        

class ProduitForm(forms.ModelForm):
    class Meta:
        model = Produit
        fields = ['name', 'image','prix','descrip' ]
        
class ClientForm(forms.ModelForm):
    class Meta:
        model = Client
        fields = ['name', 'prenom', 'telephone']
        


class SearchForm(forms.Form):
    search_query = forms.CharField(label='Search', max_length=100)
    
class CreditForm(forms.ModelForm):
    class Meta:
        model = Credit
        fields = ['client', 'produit', 'quantite','montant']
        
class EditCreditForm(forms.ModelForm):
    class Meta:
        model = Client
        fields = ['credits']
