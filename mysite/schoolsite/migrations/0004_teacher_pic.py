# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2018-01-09 19:52
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schoolsite', '0003_auto_20180109_2000'),
    ]

    operations = [
        migrations.AddField(
            model_name='teacher',
            name='pic',
            field=models.FileField(blank=True, null=True, upload_to=b''),
        ),
    ]
