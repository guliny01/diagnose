# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainweb', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='progress',
            name='progress_rel',
            field=models.ForeignKey(related_name='progress_rel', to='mainweb.Progress_type'),
        ),
    ]
