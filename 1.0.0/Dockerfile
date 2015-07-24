FROM sunyi00/centos-python:1.0.0

ADD nginx.repo /etc/yum.repos.d/nginx.repo

RUN yum install -y nginx \
    && yum -y clean all \
    && pip install supervisor \
    && mkdir -p /var/log/supervisor \
    && mkdir -p /var/log/watcher

VOLUME ["/var/cache/nginx"]
VOLUME ["/var/log/nginx"]
VOLUME ["/var/log/supervisor"]
VOLUME ["/var/log/watcher"]

EXPOSE 80 443
