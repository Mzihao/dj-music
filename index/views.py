from django.shortcuts import render
from .models import *


def indexView(request):
    songDynamic = Dynamic.objects.select_related('song')
    # 热搜歌曲
    searchs = songDynamic.order_by('-search').all()[:8]
    # 音乐分类
    labels = Label.objects.all()
    # 热门歌曲
    popular = songDynamic.order_by('-plays').all()[:10]
    # 新歌推荐
    recommend = Song.objects.order_by('-release').all()[:3]
    # 热门搜索、热门下载
    downloads = songDynamic.order_by('-download').all()[:6]
    tabs = [searchs[:6], downloads]
    return render(request, 'index.html', locals())


# 自定义404和500的视图函数
def page_not_found(request, exception):
    return render(request, '404.html', status=404)


def page_error(request):
    return render(request, '404.html', status=500)
