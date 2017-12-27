# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('mainweb', '0007_auto_20171221_0203'),
    ]

    operations = [
        migrations.CreateModel(
            name='Undo',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('undo_event', models.CharField(max_length=100)),
                ('description', models.CharField(max_length=200)),
                ('ip', models.CharField(default='/', max_length=100)),
                ('create_time', models.DateTimeField(default=django.utils.timezone.now)),
                ('status', models.CharField(max_length=5, choices=[('Finished', 'Finished'), ('Undo', 'Undo')])),
                ('comment', models.TextField(default='\u6682\u65e0\u8bf4\u660e')),
                ('product_rel', models.ForeignKey(related_name='product_undo_rel', to='mainweb.Product')),
            ],
        ),
    ]
