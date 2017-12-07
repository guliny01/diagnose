# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainweb', '0002_auto_20171128_0913'),
    ]

    operations = [
        migrations.AddField(
            model_name='domain_ip',
            name='slb_node',
            field=models.CharField(default='0', max_length=10),
        ),
    ]
