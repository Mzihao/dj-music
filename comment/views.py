from django.core.paginator import Paginator
from django.core.paginator import EmptyPage
from django.core.paginator import PageNotAnInteger
from django.shortcuts import render, redirect
from django.shortcuts import reverse
from django.http import Http404
from index.models import *
import time


def commentView(request, id):
    # 热搜歌曲
    searchs = Dynamic.objects.select_related('song').order_by('-search').all()[:6]
    # 点评内容的提交功能
    if request.method == 'POST':
        text = request.POST.get('comment', '')
        # 如果用户处于登录状态，则使用用户名，反之使用匿名用户
        if request.user.username:
            user = request.user.username
        else:
            user = '匿名用户'
        now = time.strftime('%Y-%m-%d', time.localtime(time.time()))
        if text:
            comment = Comment()
            comment.text = text
            comment.user = user
            comment.date = now
            comment.song_id = id
            comment.save()
        return redirect(reverse('comment', kwargs={'id': str(id)}))
    else:
        songs = Song.objects.filter(id=id).first()
        # 歌曲不存在抛出404异常
        if not songs:
            raise Http404('歌曲不存在')
        c = Comment.objects.filter(song_id=id).order_by('date')
        page = int(request.GET.get('page', 1))
        paginator = Paginator(c, 2)
        try:
            pages = paginator.page(page)
        except PageNotAnInteger:
            pages = paginator.page(1)
        except EmptyPage:
            pages = paginator.page(paginator.num_pages)
        return render(request, 'comment.html', locals())
