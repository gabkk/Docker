FROM debian:latest

RUN adduser gkuma

USER gkuma

MAINTAINER gabriel KUMA <gkuma@student.42.fr>

RUN apt-get update ; apt-get install -y nano nginx

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file from the current directory
ADD default.conf /etc/nginx/

EXPOSE 80

