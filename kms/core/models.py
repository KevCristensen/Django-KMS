from django.db import models
import datetime
from django.utils import timezone

 
# Create your models here.

class Mecanico(models.Model):
    idMecanico = models.IntegerField(primary_key=True,verbose_name="Id de Mecánico")
    nombreMecanico = models.CharField(max_length=50,verbose_name="Nombre del Mecánico")
    especializacionMecanico = models.CharField(max_length=200, verbose_name="Especialización del Mecánico")
    experienciaMecanico = models.CharField(max_length=200, verbose_name="Experiencia del Mecánico", default='')
    fotoMecanico = models.CharField(max_length=200, verbose_name="Foto del Mecánico")
    fotoTrabajo = models.CharField(max_length=200, verbose_name="Foto del trabajo")
    fotoTrabajo2 = models.CharField(max_length=200, verbose_name="Foto del trabajo")
    fotoTrabajo3 = models.CharField(max_length=200, verbose_name="Foto del trabajo")

    def __int__(self):
        return self.idMecanico

class Carousel(models.Model):
    idFoto = models.IntegerField(primary_key=True,verbose_name="Id de la foto")
    linkFoto = models.CharField(max_length=200, verbose_name="Link de la foto", default='foto.jpg')
    slideCarousel = models.CharField(max_length=200, verbose_name="Slide del Carousel", default='')

    def __int__(self):
        return self.idFoto

class Trabajo(models.Model):
    idTrabajo = models.IntegerField(primary_key=True, verbose_name="Id del trabajo")
    trabajoRealizado = models.CharField(max_length=500, verbose_name="Trabajo realizado")
    diagnostico = models.CharField(max_length=600, verbose_name="Diagnostico del trabajo")
    materiales = models.CharField(max_length=400, verbose_name="Materiales utilizados")
    fecha = models.CharField(max_length=50,verbose_name="Fecha del trabajo")
    idMecanico = models.ForeignKey(Mecanico, on_delete=models.CASCADE)
    def __int__(self):
        return self.idTrabajo
 

class Horario(models.Model):
    idHorario = models.IntegerField(primary_key=True, verbose_name="Id del horario")
    nombre = models.CharField(max_length=50,verbose_name="Nombre de la persona")
    correo = models.CharField(max_length=50,verbose_name="Correo de la persona")
    codigo = models.CharField(max_length=50,verbose_name="Codigo de la persona")
    fecha = models.CharField(max_length=50,verbose_name="Fecha del horario")
    def __int__(self):
        return self.idHorario

