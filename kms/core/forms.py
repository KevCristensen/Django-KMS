from django import forms
from django.forms import ModelForm, fields
from .models import Mecanico, Trabajo, Carousel, Horario
from django.contrib.auth import get_user_model
from django.forms import TextInput, Textarea
non_allowed_usernames = ['abcd']
User = get_user_model()

class MecanicoForm(ModelForm):
    class Meta:
        model = Mecanico
        fields = ['idMecanico','nombreMecanico','especializacionMecanico','experienciaMecanico','fotoMecanico','fotoTrabajo','fotoTrabajo2','fotoTrabajo3']
        widgets = {
            'idMecanico': TextInput(attrs={
                'class': "form-control",
                'style': 'max-width: 300px',
                'placeholder': 'ID del mecánico'
            }),
            'nombreMecanico': TextInput(attrs={
                'class': "form-control",
                'style': 'max-width: 300px',
                'placeholder': 'Nombre del mecánico'
            }),
            'especializacionMecanico': Textarea(attrs={
                'class': "form-control",
                'style': 'maxx-height: 100px',
                'placeholder': 'Especialización del mecánico'
            }),
            'experienciaMecanico': Textarea(attrs={
                'class': "form-control",
                'style': 'maxx-height: 300px',
                'placeholder': 'Experiencia del mecánico'
            }),
            'fotoMecanico': TextInput(attrs={
                'class': "form-control",
                'style': 'max-width: 300px',
                'placeholder': 'Link de la foto del mecánico'
            }),
            'fotoTrabajo': TextInput(attrs={
                'class': "form-control",
                'style': 'max-width: 300px',
                'placeholder': 'Link de la foto del trabajo del mecánico'
            }),
            'fotoTrabajo2': TextInput(attrs={
                'class': "form-control",
                'style': 'max-width: 300px',
                'placeholder': 'Link de la foto del trabajo del mecánico'
            }),
            'fotoTrabajo3': TextInput(attrs={
                'class': "form-control",
                'style': 'max-width: 300px',
                'placeholder': 'Link de la foto del trabajo del mecánico'
            }),
        }


class TrabajoForm(ModelForm):
    class Meta:
        model = Trabajo
        fields = ['idTrabajo','trabajoRealizado','diagnostico','materiales','fecha','idMecanico']

class CarouselForm(ModelForm):
    class Meta:
        model = Carousel
        fields = ['idFoto','linkFoto','slideCarousel']

class HorarioForm(ModelForm):
    class Meta:
        model = Horario
        fields = ['idHorario','nombre','correo','codigo','fecha']


class RegisterForm(forms.Form):
    username = forms.CharField()
    email = forms.EmailField()
    password1 = forms.CharField(
        label='Password',
        widget = forms.PasswordInput(
            attrs = {"class": "form-control",
            "id": "user-password"}
        )
    )
    password2 = forms.CharField(
        label='Confirm password',
        widget = forms.PasswordInput(
            attrs = {"class": "form-control",
            "id": "user-confirm-password"}
        )
    )

    def clean_username(self):
        username = self.cleaned_data.get("username") #esteEsMiNombreDeUsuario == esteesminiombredeusuario
        qs = User.objects.filter(username__iexact=username)
        if username in non_allowed_usernames:
            raise forms.ValidationError("Este no es un usuario válido, porfavor usa otro")
        if qs.exists():
            raise forms.ValidationError("Este no es un usuario válido, porfavor usa otro")
        return username

    def clean_email(self):
        email = self.cleaned_data.get("email") #esteEsMiNombreDeUsuario == esteesminiombredeusuario
        qs = User.objects.filter(email__iexact=email)
        if qs.exists():
            raise forms.ValidationError("Este email ya está en uso.")
        return email

class LoginForm(forms.Form):
    username = forms.CharField()
    password = forms.CharField(
        widget = forms.PasswordInput(
            attrs = {"class": "form-control",
            "id": "user-password"}
        )
    )

    # def clean(self):
    #     username = self.cleaned_data.get("username") #esteEsMiNombreDeUsuario == esteesminiombredeusuario
    #     password = self.cleaned_data.get("password")


    def clean_username(self):
        username = self.cleaned_data.get("username") #esteEsMiNombreDeUsuario == esteesminiombredeusuario
        qs = User.objects.filter(username__iexact=username)
        if not qs.exists():
            raise forms.ValidationError("Este no es un usuario válido")
        return username