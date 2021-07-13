from django.urls import path
from django.contrib import admin

from .views import mecanico, home, index, contacto, nosotros, horario, busqueda, login_view, register_view, logout_view, admin_view, form_carousel, form_mecanico, form_horario, form_trabajo, form_del_mecanico, form_mod_mecanico, add_del_mecanico

urlpatterns = [
    path('', index, name="index"),
    path('admin_view/', admin_view, name="admin_view"),
    path('busqueda/', busqueda, name="busqueda"),
    path('login/', login_view, name="login"),
    path('logout/', logout_view, name="logout"),
    path('register/', register_view, name="register"),
    path('horario/', horario, name="horario"),
    path('index/', index, name="index"),
    path('contacto/', contacto, name="contacto"),
    path('nosotros/', nosotros, name="nosotros"),
    path('form_horario/', form_horario, name="form_horario"),
    path('form_mecanico/', form_mecanico, name="form_mecanico"),
    path('form_trabajo/', form_trabajo, name="form_trabajo"),
    path('form_carousel/', form_carousel, name="form_carousel"),
    path('form_del_mecanico/<id>', form_del_mecanico, name="form_del_mecanico"),
    path('form_mod_mecanico/<id>', form_mod_mecanico, name="form_mod_mecanico"),
    path('add_del_mecanico/', add_del_mecanico, name="add_del_mecanico"),

    # path('form-mod-vehiculo/<id>',form_mod_vehiculo,name="form_mod_vehiculo"),
    # path('form-del-vehiculo/<id>',form_del_vehiculo,name="form_del_vehiculo"),

]
