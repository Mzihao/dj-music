
from django.urls import path
from .views import *
urlpatterns = [
    path('<int:page>.html', searchView, name='search'),
]
