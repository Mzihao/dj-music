
from django.urls import path
from .views import *
urlpatterns = [
    path('<int:id>.html', commentView, name='comment'),
]
