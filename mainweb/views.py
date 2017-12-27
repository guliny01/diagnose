# -*- coding: utf-8 -*-

from __future__ import unicode_literals


from django.shortcuts import render
from django.http import HttpResponse
from mainweb.models import Product,Domain,Domain_check

import sys
import os
import commands
import random 
reload(sys)
sys.setdefaultencoding('utf8')


# Create your views here.
from django.template.loader import get_template
from django.http import HttpResponse,Http404
from django.shortcuts import redirect
from datetime import datetime

# Create your views here.
def homepage(request):
    template = get_template('index.html')
    posts = Product.objects.all()
    now = datetime.now()
    html = template.render(locals())
    return HttpResponse(html)

def domain_detail(request,sku):
    try:
        p = Domain.objects.get(id=sku)
    except:
        raise Http404('找不到指定的产品编号')
    template = get_template('disp.html')
    html = template.render({'domain':p})
    return HttpResponse(html)

def list_domain(request):
    #products = Domain.objects.all()
    products = Domain.objects.raw('select a.*,b.api_url from Diagnose.mainweb_domain as a LEFT JOIN Diagnose.mainweb_domain_check as b ON a.id=b.domain_name_id order by a.id')
    #products = Domain.objects.raw('select a.* from mainweb_domain as a ')
    #cursor = connection.cursor() 
    #products = cursor.execute('select a.*,b.api_url from Diagnose.mainweb_Domain as a LEFT JOIN Diagnose.mainweb_Domain_check as b ON a.id=b.id order by a.id')
    #products=rows.fetchone()
    total = Domain.objects.all().count()
    template = get_template('list.html')
    #html = template.render({'products':products},{'total':total})
    html = template.render(locals())
    return HttpResponse(html)

def about(request):
    template = get_template('about.html')
    quotes = ['今日事，今日毕',
              '要收获，先付出',
              '知识就是力量',
              '拖拉浪费生命',
              '有明确目标,努力才有真正的动力']
    html = template.render({'quote':random.choice(quotes)})
    return HttpResponse(html)

