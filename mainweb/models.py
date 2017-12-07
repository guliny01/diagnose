# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
import django.utils.timezone as timezone
import datetime
# Create your models here.

class Area_type(models.Model):
    area_name = models.CharField(max_length=60)
    description = models.CharField(max_length=100)
    def __unicode__(self):
        return self.area_name

class Product(models.Model):
    name = models.CharField(max_length=60)
    area_type = models.ForeignKey(Area_type,on_delete=models.CASCADE)
    description = models.CharField(max_length=100)
    contact = models.CharField(max_length=200)
    comment = models.TextField(default='暂无说明')
    def __unicode__(self):
        return self.name



class Domain(models.Model):
    product = models.ForeignKey(Product,on_delete=models.CASCADE)
    domain = models.CharField(max_length=100)
    slb_vhost = models.CharField(max_length=100)
    vhost_url = models.CharField(max_length=100,default='/')
    cname = models.CharField(max_length=100)
    slb_cluster = models.CharField(max_length=100)
    domain_url = models.CharField(max_length=200,default='/')
    respone_type = (
        ('Http','Http'),
        ('Https','Https'),
    )
    respone_way = models.CharField(max_length=5,choices=respone_type)
    comment = models.TextField(default='暂无说明')
    def __unicode__(self):
        return self.domain

class Domain_idc(models.Model):
    idc = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    def __unicode__(self):
        return self.idc

class Domain_ip(models.Model):
    name = models.ForeignKey(Domain,on_delete=models.CASCADE)
    ip = models.CharField(max_length=100)
    #description = models.CharField(max_length=100)
    description = models.ForeignKey(Domain_idc,on_delete=models.CASCADE)
    status_type = (
        ('Valid','Valid'),
        ('Invalid','Invalid'),
    )
    status = models.CharField(max_length=10,choices=status_type)
    option = models.CharField(max_length=10,default='0')
    slb_node = models.CharField(max_length=10,default='0')
    comment = models.TextField(default='暂无说明')
    def __unicode__(self):
        return self.ip

class Domain_check(models.Model):
    domain_name = models.ForeignKey(Domain,related_name='domain_name',on_delete=models.CASCADE)
    api_abstract = models.CharField(max_length=50)
    api_description = models.CharField(max_length=100)
    api_url = models.CharField(max_length=200)
    comment = models.TextField(default='暂无说明')
    def __unicode__(self):
        return self.api_abstract

class Server_type(models.Model):
    server_name = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    server_config_name = models.CharField(max_length=100,default='')
    server_config_path = models.CharField(max_length=100,default='')
    comment = models.TextField(default='暂无说明')
    def __unicode__(self):
        return self.server_name

class Server(models.Model):
    product = models.ForeignKey(Product,on_delete=models.CASCADE)
    server = models.ForeignKey(Server_type,on_delete=models.CASCADE)
    description = models.CharField(max_length=100,default='')
    vip = models.CharField(max_length=100,default='127.0.0.1')
    public_ip = models.CharField(max_length=100)
    private_ip = models.CharField(max_length=100)
    status_type = (
        ('Valid','Valid'),
        ('Invalid','Inalid'),
    )
    idc_location = models.CharField(max_length=100)
    port = models.CharField(max_length=10,default='80')
    url_path = models.CharField(max_length=100,default='/')
    option = models.CharField(max_length=10,default='0')
    status = models.CharField(max_length=5,choices=status_type)
    comment = models.TextField(default='暂无说明')
    def __unicode__(self):
        return self.description

class Progress_type(models.Model):
    progress_name = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    def __unicode__(self):
        return self.description

class Config_type(models.Model):
    config_type_name = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    comment = models.TextField(default='暂无说明')
    def __unicode__(self):
        return self.config_type_name

class Progress(models.Model):
    product_rel = models.ForeignKey(Product,related_name='product_rel',on_delete=models.CASCADE)
    server_rel = models.ForeignKey(Server_type,related_name='server_rel',on_delete=models.CASCADE)
    progress_rel = models.ForeignKey(Progress_type,related_name='progress_rel',on_delete=models.CASCADE)
    config_name_rel = models.ForeignKey(Config_type,related_name='config_rel',on_delete=models.CASCADE,default=1)
    progress_port = models.CharField(max_length=10,default='')
    description = models.CharField(max_length=100)
    config_name = models.CharField(max_length=100)
    config_content = models.TextField(default='')
    config_path = models.CharField(max_length=100)
    comment = models.TextField(default='暂无说明')
    def __unicode__(self):
        return self.description

class Config(models.Model):
    config_name_rel = models.ForeignKey(Config_type,related_name='config_old_rel',on_delete=models.CASCADE)
    config_name = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    config_content = models.TextField(default='')
    config_path = models.CharField(max_length=100)
    comment = models.TextField(default='暂无说明')
    def __unicode__(self):
        return self.description

class Alter(models.Model):
    alter_name = models.CharField(max_length=100)
    alter_content = models.TextField(default='')
    alter_time = models.DateTimeField(auto_now_add=True)
    comment = models.TextField(default='暂无说明')
    def __unicode__(self):
        return self.alter_name

