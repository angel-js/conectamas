# Generated by Django 3.1.12 on 2022-11-28 17:59

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0004_paciente'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Comentario',
            new_name='Comment',
        ),
        migrations.AlterModelOptions(
            name='comment',
            options={'ordering': ['estado'], 'verbose_name_plural': 'Comments'},
        ),
        migrations.AlterModelTable(
            name='comment',
            table='comment',
        ),
    ]