# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainweb', '0010_auto_20171221_0943'),
    ]

    operations = [
        migrations.AddField(
            model_name='undo',
            name='priority',
            field=models.CharField(default='P3', max_length=4, choices=[('P3', 'P3'), ('P2', 'P2'), ('P1', 'P1')]),
        ),
    ]
