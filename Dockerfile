#LABEL maintainer="boidiaka@gmail.com"
FROM ubuntu:18.04   
RUN  apt-get -y update &&  apt-get -y install nginx
COPY --chown=root:root Files/default /etc/nginx/sites-available/default
COPY --chown=root:root Files/index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
