# Generated by Django 3.2.4 on 2021-07-08 00:50

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Categoria',
            fields=[
                ('idCategoria', models.IntegerField(primary_key=True, serialize=False, verbose_name='Id de Categoria')),
                ('nombreCategoria', models.CharField(max_length=50, verbose_name='Nombre de la categoria')),
            ],
        ),
        migrations.CreateModel(
            name='Mecanico',
            fields=[
                ('idMecanico', models.IntegerField(primary_key=True, serialize=False, verbose_name='Id de Mecánico')),
                ('nombreMecanico', models.CharField(max_length=50, verbose_name='Nombre del Mecánico')),
                ('especializacionMecanico', models.CharField(max_length=200, verbose_name='Especialización del Mecánico')),
            ],
        ),
        migrations.CreateModel(
            name='Vehiculo',
            fields=[
                ('patente', models.CharField(max_length=6, primary_key=True, serialize=False, verbose_name='Patente')),
                ('marca', models.CharField(max_length=20, verbose_name='Marca Vehiculo')),
                ('modelo', models.CharField(blank=True, max_length=20, null=True, verbose_name='Modelo')),
                ('color', models.CharField(blank=True, max_length=20, null=True, verbose_name='Color')),
                ('peso', models.CharField(blank=True, max_length=20, null=True, verbose_name='Peso')),
                ('categoria', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.categoria')),
            ],
        ),
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('idUsuario', models.IntegerField(primary_key=True, serialize=False, verbose_name='Id del usuario')),
                ('nombreUsuario', models.CharField(max_length=60, verbose_name='Nombre del usuario')),
                ('correoUsuario', models.CharField(max_length=60, verbose_name='Correo del usuario')),
                ('claveUsuario', models.CharField(max_length=60, verbose_name='Contraseña del usuario')),
                ('categoria', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.categoria')),
            ],
        ),
        migrations.CreateModel(
            name='Trabajo',
            fields=[
                ('idTrabajo', models.IntegerField(primary_key=True, serialize=False, verbose_name='Id del trabajo')),
                ('trabajoRealizado', models.CharField(max_length=500, verbose_name='Trabajo realizado')),
                ('diagnostico', models.CharField(max_length=600, verbose_name='Diagnostico del trabajo')),
                ('materiales', models.CharField(max_length=400, verbose_name='Materiales utilizados')),
                ('idMecanico', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.mecanico')),
            ],
        ),
        migrations.CreateModel(
            name='Perrito',
            fields=[
                ('numero_chip', models.CharField(max_length=10, primary_key=True, serialize=False, verbose_name='Número de Chip')),
                ('nombre', models.CharField(blank=True, max_length=20, null=True, verbose_name='Nombre')),
                ('edad', models.CharField(blank=True, max_length=20, null=True, verbose_name='Edad')),
                ('esterilización', models.CharField(blank=True, max_length=20, null=True, verbose_name='Esterilización')),
                ('sexo', models.CharField(blank=True, max_length=20, null=True, verbose_name='Sexo')),
                ('caracteristicas', models.CharField(blank=True, max_length=500, null=True, verbose_name='Caracteristicas')),
                ('foto', models.CharField(blank=True, max_length=500, null=True, verbose_name='Link de la foto')),
                ('categoria', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.categoria')),
            ],
        ),
    ]
