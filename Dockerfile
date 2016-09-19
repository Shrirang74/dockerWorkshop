FROM fedora
MAINTAINER http://fedoraproject.org/wiki/Cloud

RUN dnf -y update && dnf clean all
RUN dnf -y install nginx && dnf clean all
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/

EXPOSE 80

CMD [ "/usr/sbin/nginx" ]
