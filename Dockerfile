FROM centos:6.8
MAINTAINER gaoy <rocky11030@163.com>

#ENV DEBIAN_FROMTEND noninteractive
#ENV MISTRAL_BRANCH master

COPY cloudboot-1.4-1.x86_64.rpm /tmp/cloudboot-1.4-1.x86_64.rpm

RUN yum install mount -y && rpm -ivh /tmp/cloudboot-1.4-1.x86_64.rpm && rm -rf /tmp/cloudboot-1.4-1.x86_64.rpm 
#&& echo "daemon off;" >> /opt/cloudboot/etc/nginx/nginx.conf
#RUN setenforce 0

ADD ./service.sh /service.sh

VOLUME ["/opt/cloudboot/etc/dhcp", "/opt/cloudboot/home/www"]

CMD ["/service.sh"]
