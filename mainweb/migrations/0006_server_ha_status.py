# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainweb', '0005_auto_20171206_0228'),
    ]

    operations = [
        migrations.AddField(
            model_name='server',
            name='ha_status',
            field=models.CharField(default='1', max_length=10),
        ),
    ]
