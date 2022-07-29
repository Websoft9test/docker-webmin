# image: https://github.com/arimal199/alpine-webmin
FROM ghcr.io/arimal199/alpine-webmin

LABEL maintainer="help@websoft9.com"
LABEL version="latest"
LABEL description="Webmin"

ENV WEBMIN_USER=admin
ENV WEBMIN_PASSWORD=admin

WORKDIR /opt
RUN rm -f /opt/install.sh
RUN chmod 777 /opt
ADD install.sh /opt/
ENTRYPOINT [ "sh", "install.sh" ]
EXPOSE 10000
