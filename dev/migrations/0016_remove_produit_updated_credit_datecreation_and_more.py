# Generated by Django 4.1.5 on 2023-02-21 02:02

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('dev', '0015_auto_20230221_0251'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='produit',
            name='updated',
        ),
        migrations.AddField(
            model_name='credit',
            name='dateCreation',
            field=models.DateTimeField(default=datetime.datetime.now),
        ),
        migrations.AddField(
            model_name='credit',
            name='produit',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='dev.produit'),
        ),
        migrations.AddField(
            model_name='credit',
            name='total_credits',
            field=models.PositiveIntegerField(null=True),
        ),
    ]
