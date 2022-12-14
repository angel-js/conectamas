# Generated by Django 3.1.12 on 2022-12-16 23:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0014_auto_20221130_1212'),
    ]

    operations = [
        migrations.CreateModel(
            name='Soporte',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=20)),
                ('apellido', models.CharField(max_length=20)),
                ('email', models.CharField(max_length=80)),
                ('comentario', models.CharField(max_length=200)),
            ],
            options={
                'verbose_name_plural': 'Soportes',
                'db_table': 'Soporte',
                'ordering': ['id'],
            },
        ),
    ]
