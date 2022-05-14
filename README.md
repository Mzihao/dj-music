# 基于Django的音乐网站

## 描述
基于Django开发的一个音乐在线播放网站

## version
python 3.9

## 安装库
pip install -r requirement.txt

## mysql连接
```python
music/setting.py

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'music_db',
        'USER': 'root',
        'PASSWORD': 'root',
        'HOST': '127.0.0.1',
        'PORT': '3306',
    }
}
```

## 本地运行
python manage.py runserver

## docker run
docker build -t music:latest .

docker run -it -rm -p 8000:8000 music

## 运行图
![demo1](https://github.com/Mzihao/dj-music/blob/master/static/image/demo1.png)

![demo1](https://github.com/Mzihao/dj-music/blob/master/static/image/demo2.png)

![demo1](https://github.com/Mzihao/dj-music/blob/master/static/image/demo3.png)
