# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from .models import Product,Domain,Domain_ip,Server,Server_type,Area_type,Domain_idc,Domain_check,Progress_type,Progress,Config_type,Config,Alter,Undo,Transaction_type
# Register your models here.

class ProductAdmin(admin.ModelAdmin):
    list_display = ('name','area_type','description','contact')

class DomainAdmin(admin.ModelAdmin):
    list_display = ('product','domain','slb_vhost','slb_cluster','domain_url','respone_way')

class Domain_ipAdmin(admin.ModelAdmin):
    list_display = ('name','ip','description','status')

class ServerAdmin(admin.ModelAdmin):
    list_display = ('product','server','description','public_ip','private_ip','idc_location','status','url_path','ha_status')

class Server_typeAdmin(admin.ModelAdmin):
    list_display = ('server_name','description')

class Area_typeAdmin(admin.ModelAdmin):
    list_display = ('area_name','description')

class Domain_idcAdmin(admin.ModelAdmin):
    list_display = ('id','idc')

class Domain_checkAdmin(admin.ModelAdmin):
    list_display = ('domain_name','api_abstract','api_description','api_url')

class Progress_typeAdmin(admin.ModelAdmin):
    list_display = ('progress_name','description')

class Progress_Admin(admin.ModelAdmin):
    list_display = ('product_rel','server_rel','progress_rel','description','config_name_rel','comment')

class Config_typeAdmin(admin.ModelAdmin):
    list_display = ('config_type_name','description')

class ConfigAdmin(admin.ModelAdmin):
    list_display = ('description','config_path','config_content')

class AlterAdmin(admin.ModelAdmin):
    list_display = ('alter_name','alter_content','alter_time')

class Transaction_typeAdmin(admin.ModelAdmin):
    list_display = ('transaction_name','description')

class UndoAdmin(admin.ModelAdmin):
    list_display = ('product_rel','undo_event','ip','priority','create_time','status')

admin.site.register(Product,ProductAdmin)
admin.site.register(Domain,DomainAdmin)
admin.site.register(Domain_ip,Domain_ipAdmin)
admin.site.register(Server,ServerAdmin)
admin.site.register(Server_type,Server_typeAdmin)
admin.site.register(Area_type,Area_typeAdmin)
admin.site.register(Domain_idc,Domain_idcAdmin)
admin.site.register(Domain_check,Domain_checkAdmin)
admin.site.register(Progress_type,Progress_typeAdmin)
admin.site.register(Progress,Progress_Admin)
admin.site.register(Config_type,Config_typeAdmin)
admin.site.register(Config,ConfigAdmin)
admin.site.register(Alter,AlterAdmin)
admin.site.register(Undo,UndoAdmin)
admin.site.register(Transaction_type,Transaction_typeAdmin)
