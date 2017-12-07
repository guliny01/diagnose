# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainweb', '0005_auto_20171205_0340'),
    ]

    operations = [
        migrations.AlterField(
            model_name='progress',
            name='config_name_rel',
            field=models.ForeignKey(related_name='config_rel', default=1, to='mainweb.Config_type'),
        ),
    ]
