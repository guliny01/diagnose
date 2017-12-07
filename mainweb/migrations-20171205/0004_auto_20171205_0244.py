# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainweb', '0003_domain_ip_slb_node'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='progress_type',
            name='config_content',
        ),
        migrations.RemoveField(
            model_name='progress_type',
            name='config_name',
        ),
        migrations.RemoveField(
            model_name='progress_type',
            name='content',
        ),
        migrations.RemoveField(
            model_name='progress_type',
            name='path',
        ),
    ]
