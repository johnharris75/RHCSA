FROM ubi9/ubi
MAINTAINER John Harris
LABEL description="a basic Apache container on RHEL 9 UBI"
RUN yum install -y httpd 
RUN echo "Hello from docker" > /usr/share/httpd/noindex.index.html
EXPOSE 80
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]
