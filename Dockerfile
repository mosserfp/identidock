from python:3.4

run groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
run pip install Flask==0.10.1 uWSGI==2.0.8
workdir /app
copy app /app
copy cmd.sh /

expose 9090 9191
user uwsgi
cmd ["/cmd.sh"]
