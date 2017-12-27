# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('mainweb', '0009_auto_20171221_0238'),
    ]

    operations = [
        migrations.AddField(
            model_name='undo',
            name='finish_time',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
        migrations.AlterField(
            model_name='server',
            name='status',
            field=models.CharField(max_length=7, choices=[('Valid', 'Valid'), ('Invalid', 'Inalid')]),
        ),
        migrations.AlterField(
            model_name='undo',
            name='status',
            field=models.CharField(max_length=8, choices=[('Undo', 'Undo'), ('Finished', 'Finished'), ('resolved', 'resolved')]),
        ),
    ]
