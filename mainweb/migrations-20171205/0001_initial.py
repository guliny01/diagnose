# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Alter',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('alter_name', models.CharField(max_length=100)),
                ('alter_content', models.TextField(default='')),
                ('alter_time', models.DateTimeField(auto_now_add=True)),
                ('comment', models.TextField(default='\u6682\u65e0\u8bf4\u660e')),
            ],
        ),
        migrations.CreateModel(
            name='Area_type',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('area_name', models.CharField(max_length=60)),
                ('description', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Config',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('config_name', models.CharField(max_length=100)),
                ('description', models.CharField(max_length=100)),
                ('config_content', models.TextField(default='')),
                ('config_path', models.CharField(max_length=100)),
                ('comment', models.TextField(default='\u6682\u65e0\u8bf4\u660e')),
            ],
        ),
        migrations.CreateModel(
            name='Config_type',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('config_type_name', models.CharField(max_length=100)),
                ('description', models.CharField(max_length=100)),
                ('comment', models.TextField(default='\u6682\u65e0\u8bf4\u660e')),
            ],
        ),
        migrations.CreateModel(
            name='Domain',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('domain', models.CharField(max_length=100)),
                ('slb_vhost', models.CharField(max_length=100)),
                ('vhost_url', models.CharField(default='/', max_length=100)),
                ('cname', models.CharField(max_length=100)),
                ('slb_cluster', models.CharField(max_length=100)),
                ('domain_url', models.CharField(default='/', max_length=200)),
                ('respone_way', models.CharField(max_length=5, choices=[('Http', 'Http'), ('Https', 'Https')])),
                ('comment', models.TextField(default='\u6682\u65e0\u8bf4\u660e')),
            ],
        ),
        migrations.CreateModel(
            name='Domain_check',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('api_abstract', models.CharField(max_length=50)),
                ('api_description', models.CharField(max_length=100)),
                ('api_url', models.CharField(max_length=200)),
                ('comment', models.TextField(default='\u6682\u65e0\u8bf4\u660e')),
                ('domain_name', models.ForeignKey(related_name='domain_name', to='mainweb.Domain')),
            ],
        ),
        migrations.CreateModel(
            name='Domain_idc',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('idc', models.CharField(max_length=100)),
                ('description', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Domain_ip',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('ip', models.CharField(max_length=100)),
                ('status', models.CharField(max_length=10, choices=[('Valid', 'Valid'), ('Invalid', 'Invalid')])),
                ('option', models.CharField(default='0', max_length=10)),
                ('comment', models.TextField(default='\u6682\u65e0\u8bf4\u660e')),
                ('description', models.ForeignKey(to='mainweb.Domain_idc')),
                ('name', models.ForeignKey(to='mainweb.Domain')),
            ],
        ),
        migrations.CreateModel(
            name='Product',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=60)),
                ('description', models.CharField(max_length=100)),
                ('contact', models.CharField(max_length=200)),
                ('comment', models.TextField(default='\u6682\u65e0\u8bf4\u660e')),
                ('area_type', models.ForeignKey(to='mainweb.Area_type')),
            ],
        ),
        migrations.CreateModel(
            name='Progress',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('description', models.CharField(max_length=100)),
                ('comment', models.TextField(default='\u6682\u65e0\u8bf4\u660e')),
                ('product_rel', models.ForeignKey(related_name='product_rel', to='mainweb.Product')),
            ],
        ),
        migrations.CreateModel(
            name='Progress_type',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('progress_name', models.CharField(max_length=100)),
                ('description', models.CharField(max_length=100)),
                ('path', models.CharField(max_length=100)),
                ('content', models.TextField(default='')),
                ('config_name', models.CharField(max_length=100)),
                ('config_content', models.TextField(default='')),
            ],
        ),
        migrations.CreateModel(
            name='Server',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('description', models.CharField(default='', max_length=100)),
                ('vip', models.CharField(default='127.0.0.1', max_length=100)),
                ('public_ip', models.CharField(max_length=100)),
                ('private_ip', models.CharField(max_length=100)),
                ('idc_location', models.CharField(max_length=100)),
                ('port', models.CharField(default='80', max_length=10)),
                ('url_path', models.CharField(default='/', max_length=100)),
                ('option', models.CharField(default='0', max_length=10)),
                ('status', models.CharField(max_length=5, choices=[('Valid', 'Valid'), ('Invalid', 'Inalid')])),
                ('comment', models.TextField(default='\u6682\u65e0\u8bf4\u660e')),
                ('product', models.ForeignKey(to='mainweb.Product')),
            ],
        ),
        migrations.CreateModel(
            name='Server_type',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('server_name', models.CharField(max_length=100)),
                ('description', models.CharField(max_length=100)),
                ('server_config_name', models.CharField(default='', max_length=100)),
                ('server_config_path', models.CharField(default='', max_length=100)),
                ('comment', models.TextField(default='\u6682\u65e0\u8bf4\u660e')),
            ],
        ),
        migrations.AddField(
            model_name='server',
            name='server',
            field=models.ForeignKey(to='mainweb.Server_type'),
        ),
        migrations.AddField(
            model_name='progress',
            name='progress_rel',
            field=models.ForeignKey(related_name='progress_rel', to='mainweb.Server_type'),
        ),
        migrations.AddField(
            model_name='progress',
            name='server_rel',
            field=models.ForeignKey(related_name='server_rel', to='mainweb.Server_type'),
        ),
        migrations.AddField(
            model_name='domain',
            name='product',
            field=models.ForeignKey(to='mainweb.Product'),
        ),
        migrations.AddField(
            model_name='config',
            name='config_name_rel',
            field=models.ForeignKey(related_name='config_rel', to='mainweb.Config_type'),
        ),
    ]
