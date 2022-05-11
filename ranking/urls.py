
from django.urls import path
from .views import *
urlpatterns = [
    path('', rankingView, name='ranking'),
    path('.list', RankingList.as_view(), name='rankingList'),
]
