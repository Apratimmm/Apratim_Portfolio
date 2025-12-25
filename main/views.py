from django.http import HttpResponse
from django.shortcuts import render,redirect
from django.views.generic.base import TemplateView

def home(request):
    return render(request, 'homepage.html')