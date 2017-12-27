# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainweb', '0012_transaction_type'),
    ]

    operations = [
        migrations.AddField(
            model_name='undo',
            name='transaction_rel',
            field=models.ForeignKey(related_name='transaction_undo_rel', default=1, to='mainweb.Transaction_type'),
        ),
    ]
