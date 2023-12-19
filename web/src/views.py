from django.http import HttpResponse
from django.shortcuts import render
from django.views import View


class HomeView(View):
    """Basic home view"""

    template_name = "src/home.html"

    def get(self, request, *args, **kwargs) -> HttpResponse:
        return render(request, self.template_name, {})
