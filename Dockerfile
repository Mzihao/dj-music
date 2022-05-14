FROM python:3.9.7-slim-buster
WORKDIR /music
COPY . .
RUN pip install -r requirements.txt
CMD ["python","manage.py","runserver","0.0.0.0:8000"]