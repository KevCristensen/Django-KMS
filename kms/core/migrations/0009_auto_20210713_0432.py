# Generated by Django 3.2.4 on 2021-07-13 08:32

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0008_alter_carousel_slidecarousel'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='perrito',
            name='categoria',
        ),
        migrations.RemoveField(
            model_name='usuario',
            name='categoria',
        ),
        migrations.RemoveField(
            model_name='vehiculo',
            name='categoria',
        ),
        migrations.DeleteModel(
            name='Categoria',
        ),
        migrations.DeleteModel(
            name='Perrito',
        ),
        migrations.DeleteModel(
            name='Usuario',
        ),
        migrations.DeleteModel(
            name='Vehiculo',
        ),
    ]