#This is a sample Image 
FROM ubuntu
MAINTAINER kapildeo patil

RUN apt update
RUN apt-get install -y nginx
RUN mkdir -p /kapil/nginex
COPY . /kapil/nginex
WORKDIR /kapil/nginex
EXPOSE 80/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

