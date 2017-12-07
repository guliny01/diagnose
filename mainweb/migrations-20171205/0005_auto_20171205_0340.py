# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainweb', '0004_auto_20171205_0244'),
    ]

    operations = [
        migrations.AddField(
            model_name='progress',
            name='config_content',
            field=models.TextField(default=''),
        ),
        migrations.AddField(
            model_name='progress',
            name='config_name',
            field=models.CharField(default='/', max_length=100),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='progress',
            name='config_name_rel',
            field=models.ForeignKey(related_name='config_rel', default='/', to='mainweb.Config_type'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='progress',
            name='config_path',
            field=models.CharField(default='/', max_length=100),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='progress',
            name='progress_port',
            field=models.CharField(default='', max_length=10),
        ),
        migrations.AlterField(
            model_name='config',
            name='config_name_rel',
            field=models.ForeignKey(related_name='config_old_rel', to='mainweb.Config_type'),
        ),
    ]
