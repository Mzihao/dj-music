from django.shortcuts import render, redirect
from django.core.paginator import Paginator
from django.core.paginator import EmptyPage
from django.core.paginator import PageNotAnInteger
from django.shortcuts import reverse
from django.db.models import Q, F
from index.models import *
def searchView(request, page):
    if request.method == 'GET':
        searchs = Dynamic.objects.select_related('song').order_by('-search').all()[:6]
        kword = request.session.get('kword', '')
        if kword:
            songs = Song.objects.filter(Q(name__icontains=kword) | Q(singer=kword)).order_by('-release').all()
        else:
            songs = Song.objects.order_by('-release').all()[:50]
        paginator = Paginator(songs, 5)
        try:
            pages = paginator.page(page)
        except PageNotAnInteger:
            pages = paginator.page(1)
        except EmptyPage:
            pages = paginator.page(paginator.num_pages)
        if kword:
            idList = Song.objects.filter(name__icontains=kword)
            for i in idList:
                dynamics = Dynamic.objects.filter(song_id=i.id)
                if dynamics:
                    dynamics.update(search=F('search') + 1)
                else:
                    dynamic = Dynamic(plays=0, search=1, download=0, song_id=i.id)
                    dynamic.save()
        return render(request, 'search.html', locals())
    else:
        request.session['kword'] = request.POST.get('kword', '')
        return redirect(reverse('search', kwargs={'page': 1}))