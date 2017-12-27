# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainweb', '0011_undo_priority'),
    ]

    operations = [
        migrations.CreateModel(
            name='Transaction_type',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('transaction_name', models.CharField(max_length=50)),
                ('description', models.CharField(max_length=100)),
                ('comment', models.TextField(default='\u6682\u65e0\u8bf4\u660e')),
            ],
        ),
    ]
