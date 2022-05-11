
from django.urls import path
from .views import *
urlpatterns = [
    # 歌曲播放页
    path('<int:id>.html', playView, name='play'),
    # 歌曲下载
    path('download/<int:id>.html', downloadView, name='download')
]
