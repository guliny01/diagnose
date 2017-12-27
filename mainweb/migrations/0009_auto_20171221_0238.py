# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainweb', '0008_undo'),
    ]

    operations = [
        migrations.AlterField(
            model_name='undo',
            name='status',
            field=models.CharField(max_length=8, choices=[('Finished', 'Finished'), ('Undo', 'Undo')]),
        ),
    ]
