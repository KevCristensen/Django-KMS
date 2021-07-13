# Generated by Django 3.2.4 on 2021-07-08 03:42

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='mecanico',
            name='fotoMecanico',
            field=models.CharField(default='', max_length=200, verbose_name='Foto del Mecánico'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='trabajo',
            name='fotoTrabajo',
            field=models.CharField(default='', max_length=200, verbose_name='Foto del trabajo'),
            preserve_default=False,
        ),
    ]
