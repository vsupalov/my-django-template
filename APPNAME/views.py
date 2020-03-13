from django.shortcuts import render
from django.views import View

# See https://vsupalov.com/quick-django-refresher-crash-course/#write-views

class StartView(View):
    def get(self, request):
        template_name = 'base.html'
        data = {}
        return render(request, template_name, data)
