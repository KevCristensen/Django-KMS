# Generated by Django 3.2.4 on 2021-07-09 13:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0004_auto_20210707_2356'),
    ]

    operations = [
        migrations.AddField(
            model_name='mecanico',
            name='experienciaMecanico',
            field=models.CharField(default='', max_length=200, verbose_name='Experiencia del Mecánico'),
        ),
    ]