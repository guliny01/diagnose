# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('mainweb', '0006_server_ha_status'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='mttr_h',
            field=models.CharField(default='1', max_length=100),
        ),
        migrations.AddField(
            model_name='product',
            name='slo',
            field=models.CharField(default='99.9%', max_length=100),
        ),
        migrations.AlterField(
            model_name='alter',
            name='alter_time',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
    ]
