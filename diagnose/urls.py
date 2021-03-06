"""diagnose URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import include, url
from django.contrib import admin
from mainweb.views import homepage,about,domain_detail,list_domain

urlpatterns = [
    url(r'^$', homepage),
    url(r'^list/([0-9a-zA-Z]+)/$', domain_detail),
    url(r'^domain/$', list_domain),
    url(r'^about/', about),
    url(r'^admin/', admin.site.urls),
]
