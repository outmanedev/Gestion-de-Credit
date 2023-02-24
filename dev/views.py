from django.shortcuts import render,redirect,get_object_or_404
from .models import Carousel
from django.contrib.auth import authenticate, login
from .models import Produit,Client,Credit
from django.contrib import messages
from .forms import ProduitForm,ClientForm,EditCreditForm
from decimal import Decimal
from django.db.models import Sum
from django.utils import timezone
import logging







# Create your views here.
def home(request):
    return render(request, 'home.html')

def index(request):
    return render(request, 'nav.html')


def main(request):
    data = Carousel.objects.all()
    dic = {'data':data}
    return render(request, 'index.html', dic)

# dashborad

def adminHome(request):
    return render(request, 'adminhome.html')

def adminDashboard(request):
    return render(request, 'admindashboard.html')

# authentification
def adminLogin(request):
    msg = None
    if request.method == "POST":
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username, password=password)
        try:
            if user.is_staff:
                login(request, user)
                msg = "User login successfully"
                return redirect(creerCredit)
            else:
                msg = "les données non valides"
        except:
            msg = "les données non valides"
    dic = {'msg': msg}
    return render(request, 'admin_login.html', dic)

def admin_change_password(request):
    if request.method == 'POST':
        o = request.POST.get('currentpassword')
        n = request.POST.get('newpassword')
        c = request.POST.get('confirmpassword')
        user = authenticate(username=request.user.username, password=o)
        if user:
            if n == c:
                user.set_password(n)
                user.save()
                messages.success(request, "Password Changed")
                return redirect('admin_login')
            else:
                messages.success(request, "Password not matching")
                return redirect('admin_change_password')
        else:
            messages.success(request, "Invalid Password")
            return redirect('admin_change_password')
    return render(request, 'admin_change_password.html')





#produit 

def add_produit(request):
    if request.method == 'POST':
        name = request.POST.get('name')
        descrip = request.POST.get('description')
        prix = request.POST.get('prix')
        image = request.FILES.get('image')
        produit = Produit(name=name, descrip=descrip, prix=prix, image=image)
        produit.save()
        return redirect(afficherProduit)  
    return render(request, 'add_produit.html')

def afficherProduit(request):
    produits = Produit.objects.all()
    return render(request, 'afficherProduit.html', locals())

def edit_produit(request, pid):
    produit = Produit.objects.get(id=pid)
    if request.method == 'POST':
        form = ProduitForm(request.POST, instance=produit)
        if form.is_valid():
            if 'image' in request.FILES:
                image = request.FILES['image']
                produit.image = image
            form.save()
            return redirect('afficherProduit')
    else:
        form = ProduitForm(instance=produit)

    return render(request, 'edit_produit.html', {'form': form, 'produit': produit})



def delete_produit(request, pid):
    produit = Produit.objects.get(id=pid)
    produit.delete()
    messages.success(request, "produit supprimé")
    return redirect('afficherProduit')


# client



def add_client(request):
    if request.method == 'POST':
        form = ClientForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('client_list')
    else:
        form = ClientForm()
    return render(request, 'add_client.html', {'form': form})

def client_list(request):
    clients = Client.objects.all()
    return render(request, 'client_list.html', {'clients': clients})

def edit_client(request, client_id):
    client = get_object_or_404(Client, id=client_id)
    if request.method == 'POST':
        form = ClientForm(request.POST, instance=client)
        if form.is_valid():
            form.save()
            return redirect('client_list')
    else:
        form = ClientForm(instance=client)
    context = {'form': form, 'client': client}
    return render(request, 'edit_client.html', context)
    

def delete_client(request, client_id):
    client = get_object_or_404(Client, id=client_id)
    if request.method == 'POST':
        client.delete()
        return redirect('client_list')
    else:
        context = {'client': client}
        return render(request, 'client_list', context)
    

    

# credits


    
def creerCredit(request):
    if request.method == 'POST':
        client_id = request.POST['client']
        produit_id = request.POST['produit']
        quantite = request.POST.get('quantite')
        if quantite is not None:
            quantite = int(quantite)
            client = Client.objects.get(id=client_id)
            produit = Produit.objects.get(id=produit_id)
            montant = Decimal(produit.prix) * Decimal(quantite)
            credit = Credit.objects.create(
                client=client,
                produit=produit,
                quantite=quantite,
                dateCreation=timezone.now(),
                montant=montant
            )
            client.credits += montant
            client.save()
            messages.success(request, 'Le crédit a été créé avec succès.')
            return redirect('creerCredit') 
        else:
            messages.error(request, 'Veuillez entrer une quantité valide.')
            return redirect('creerCredit') 
    else:
        clients = Client.objects.all()
        produits = Produit.objects.all()
        sumCredit = Client.objects.aggregate(Sum('credits'))['credits__sum'] or 0
        context = {
            'clients': clients,
            'produits': produits,
            'sumCredit': sumCredit,
        }
        return render(request, 'creerCredit.html', context)
    
    
def credits_list(request):
    clients = Client.objects.all()
    client_list = []
    for client in clients:
        try:
            latest_credit = client.credit_set.latest('dateCreation')
        except Credit.DoesNotExist:
            logging.warning(f"No Credit objects found for Client '{client.name} {client.prenom}' (ID: {client.id})")
            continue
        
        client_data = {
            'id': client.id,
            'name': client.name,
            'prenom': client.prenom,
            'credits': client.credits,
            'date_creation': latest_credit.dateCreation,
        }
        client_list.append(client_data)
    context = {'client_list': client_list}
    return render(request, 'credits_list.html', context)
    
    
def edit_credits(request, client_id):
    client = get_object_or_404(Client, id=client_id)
    if request.method == 'POST':
        form = EditCreditForm(request.POST, instance=client)
        if form.is_valid():
            form.save()
            return redirect('credits_list')
    else:
        form = EditCreditForm(instance=client)
    return render(request, 'edit_credits.html', {'form': form, 'client': client})
    


#outils

def search(request):
    query = request.GET.get('q')
    produits = Produit.objects.filter(name__icontains=query) if query else []
    clients = Client.objects.filter(name__icontains=query) if query else []
    context = {
        'query': query,
        'produits': produits,
        'clients': clients,
    }
    return render(request, 'search.html', context)






