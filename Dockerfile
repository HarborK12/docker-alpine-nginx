FROM entrack/docker-alpine-s6-overlay:alpine39
MAINTAINER Michael Martin <mmartin@fuelingbrands.com>

#----------------------------------------------------
# Base Alpine edge image with s6 overlay and nginx
#----------------------------------------------------
# @credit John Regan <john@jrjrtech.com>
# @original https://github.com/just-containers/s6-overlay

##/
 # Install Nginx
 #/
RUN apk --no-cache --update add \
    nginx

##/
 # Clean default Nginx site folder
 #/
RUN rm -rf /var/www/*

##/
 # Copy files to file system
 #/
COPY /rootfs /

# Expose Ports
EXPOSE 443
EXPOSE 80
