FROM sunyi00/centos-python:1.0.0

ADD libunwind-1.1-3.sdl7.x86_64.rpm /root/libunwind-1.1-3.sdl7.x86_64.rpm
ADD tengine-2.1.1-3.modsec_2.9.0.el7.centos.x86_64.rpm /root/tengine-2.1.1-3.modsec_2.9.0.el7.centos.x86_64.rpm
ADD tengine-filesystem-2.1.1-3.modsec_2.9.0.el7.centos.noarch.rpm /root/tengine-filesystem-2.1.1-3.modsec_2.9.0.el7.centos.noarch.rpm

RUN yum install -y /root/libunwind-1.1-3.sdl7.x86_64.rpm /root/tengine-filesystem-2.1.1-3.modsec_2.9.0.el7.centos.noarch.rpm /root/tengine-2.1.1-3.modsec_2.9.0.el7.centos.x86_64.rpm \
    && yum -y clean all \
    && pip install supervisor \
    && mkdir -p /var/log/supervisor \
    && mkdir -p /var/log/watcher

RUN mv /etc/tengine /etc/nginx \
    && ln -s /etc/nginx /etc/tengine \
    && mv /etc/nginx/tengine.conf /etc/nginx/nginx.conf \
    && ln -s /etc/nginx/nginx.conf /etc/tengine/tengine.conf \
    && ln -s /usr/sbin/tengine /usr/sbin/nginx \
    && rm -rf /var/log/tengine \
    && ln -s /var/log/nginx /var/log/tengine

VOLUME ["/var/cache/nginx"]
VOLUME ["/var/log/nginx"]
VOLUME ["/var/log/supervisor"]
VOLUME ["/var/log/watcher"]

EXPOSE 80 443
