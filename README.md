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
```shell
# 创建后台管理员
python manage.py createsuperuser 

# 生成数据库迁移文件，后面指定app_name：只针对这个app生成迁移脚本（也可以指定多个）也可以不指定单个APP，生成所有APP的迁移文件。
# python manage.py makemigrations app_name
python manage.py makemigrations

# 将迁移文件内容写入数据库中，并生成数据库表
python manage.py migrate 

# 运行
python manage.py runserver
```

## docker run
```shell
docker build -t music:latest .

docker run -it -p 8000:8000 music
```

## 预览
http://127.0.0.1:8000

## 在线预览
http://119.23.40.47:8000/

## 运行图
![demo1](https://github.com/Mzihao/dj-music/blob/master/static/image/demo1.png)

![demo1](https://github.com/Mzihao/dj-music/blob/master/static/image/demo2.png)

![demo1](https://github.com/Mzihao/dj-music/blob/master/static/image/demo3.png)
