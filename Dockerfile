FROM sunyi00/centos-python:latest

ADD nginx.repo /etc/yum.repos.d/nginx.repo

RUN yum install -y make nginx \
    && pip install supervisor \
    && mkdir -p /var/log/supervisor \

VOLUME ["/var/cache/nginx"]
VOLUME ["/var/log/nginx"]
VOLUME ["/var/log/supervisor"]

EXPOSE 80 443
