# Generated by Django 4.1.5 on 2023-02-20 20:59

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('dev', '0008_alter_credit_total_credits'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='credit',
            name='produit',
        ),
    ]
