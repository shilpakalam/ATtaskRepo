# Create your views here.
import os

from django.shortcuts import render


def index(request):
    return render(request, "accounts/index.html", {
        "ATC_USERNAME": os.environ.get('ATC_USERNAME'),
        "ATC_PASSWORD": os.environ.get('ATC_PASSWORD')
    })
