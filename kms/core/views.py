from core.forms import MecanicoForm, TrabajoForm, CarouselForm, HorarioForm
from django import forms
from django.shortcuts import render, redirect
from .models import Mecanico, Trabajo, Horario, Carousel
from django.contrib.auth import authenticate, login, logout, get_user_model
# Create your views here.
from .forms import LoginForm, RegisterForm
from django.contrib.auth.decorators import login_required
from django.contrib.admin.views.decorators import staff_member_required
User = get_user_model()

def register_view(request):
    form = RegisterForm(request.POST or None)
    if form.is_valid():
        username = form.cleaned_data.get("username")
        email = form.cleaned_data.get("email")
        password = form.cleaned_data.get("password1")
        password2 = form.cleaned_data.get("password2")
        try: 
            user = User.objects.create_user(username, email, password)
        except:
            user = None

        if user != None:
            login(request, user)
            return redirect("/")
        else:
            request.session['register_error'] = 1 # 1 == True
        
    return render(request, "core/register.html", {"form": form})

def login_view(request):
    form = LoginForm(request.POST or None)
    if form.is_valid():
        username = form.cleaned_data.get("username")
        password = form.cleaned_data.get("password")
        # print(password) esto no se hace, expondrá a mis usuarios
        user = authenticate(request, username=username, password=password)
        if user != None:
            # user is valid and active -> is_active
            # request.user == user
            login(request, user)
            return redirect("/")
        else:
            # attempt = request.session.get("attempt") or 0
            # request.session['attempt'] = attempt + 1
            # return redirect("/invalid-password")
            request.session['invalid_user'] = 1 # 1 == True
        
    return render(request, "core/log_in.html", {"form": form})

def logout_view(request):
    logout(request)
    # request.user == Anon user
    return redirect("/login")
    
@staff_member_required
def form_mecanico(request):
    usuario = request.user
    datos = {
        'form' : MecanicoForm(),
        'usuario':usuario
    }
    if request.method == 'POST':
        formulario = MecanicoForm(request.POST)
        if formulario.is_valid:
            formulario.save()
            datos['mensaje'] = "Guardado correctamente"
    return render(request, 'core/form_mecanico.html', datos)

@staff_member_required
def form_trabajo(request):
    usuario = request.user
    datos = {
        'form' : TrabajoForm(),
        'usuario':usuario
    }
    if request.method == 'POST':
        formulario = TrabajoForm(request.POST)
        if formulario.is_valid:
            formulario.save()
            datos['mensaje'] = "Guardado correctamente"
    return render(request, 'core/form_trabajo.html', datos)

@staff_member_required
def form_carousel(request):
    usuario = request.user
    datos = {
        'form' : CarouselForm(),
        'usuario':usuario
    }
    if request.method == 'POST':
        formulario = CarouselForm(request.POST)
        if formulario.is_valid:
            formulario.save()
            datos['mensaje'] = "Guardado correctamente"
    return render(request, 'core/form_carousel.html', datos)

@staff_member_required
def form_horario(request):
    usuario = request.user
    datos = {
        'form' : HorarioForm(),
        'usuario':usuario
    }
    if request.method == 'POST':
        formulario = HorarioForm(request.POST)
        if formulario.is_valid:
            formulario.save()
            datos['mensaje'] = "Guardado correctamente"
    return render(request, 'core/form_horario.html', datos)

@staff_member_required
def admin_view(request):
    usuario = request.user
    datos = {
        'usuario':usuario

    }
    if request.method == 'POST':
        formulario = VehiculoForm(request.POST)
        if formulario.is_valid:
            formulario.save()
            datos['mensaje'] = "Guardado correctamente"
    return render(request, 'core/admin_view.html', datos)

def home(request):
    
    return render(request, 'core/index.html')

def index(request):
    mecanico = Mecanico.objects.all()
    carousel = Carousel.objects.all()
    trabajo = Trabajo.objects.all()
    usuario = request.user
    datos = {
        'listaMecanico':mecanico,
        'listaCarousel':carousel,
        'listaTrabajo':trabajo,
        'usuario':usuario
    }
    return render(request, 'core/index.html', datos)

def horario(request):
    usuario = request.user
    horario = Horario.objects.all()
    datos = {
        'usuario':usuario,
        'listaHorario':horario
    }
    return render(request, 'core/horario.html', datos)

@login_required(login_url='/login')
def contacto(request):
    usuario = request.user
    datos = {
        'usuario':usuario
    }
    return render(request, 'core/contacto.html', datos)

def nosotros(request):
    usuario = request.user
    datos = {
        'usuario':usuario
    }
    return render(request, 'core/nosotros.html', datos)

def busqueda(request):
    usuario = request.user
    datos = {
        'usuario':usuario
    }
    return render(request, 'core/busqueda.html', datos)

def mecanico(request):
    mecanico = Mecanico.objects.all()
    datos = {
        'listaMecanico':mecanico
    }
    return render(request, 'core/mecanicos.html', datos)

@staff_member_required
def add_del_mecanico(request):
    mecanico = Mecanico.objects.all()
    usuario = request.user
    datos = {
        'listaMecanico':mecanico,
        'usuario':usuario

    }
    return render(request, 'core/add_del_mecanico.html', datos)

@staff_member_required
def form_mod_mecanico(request, id):
    mecanico = Mecanico.objects.get(idMecanico = id)
    datos = {
        'form':MecanicoForm(instance=mecanico)
    }
    if request.method == 'POST':
        formulario = MecanicoForm(data=request.POST,instance=mecanico)
        if formulario.is_valid:
            formulario.save()
            datos['mensaje'] = "Modificados correctamente"
    return render(request,'core/form_mod_mecanico.html',datos)

@staff_member_required
def form_del_mecanico(request, id):
    mecanico = Mecanico.objects.get(idMecanico = id)
    mecanico.delete()
    return redirect( to = "add_del_mecanico")
