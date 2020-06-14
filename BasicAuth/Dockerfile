FROM nginx

RUN rm -v /etc/nginx/nginx.conf

RUN apt update ; \
    apt install -y apache2-utils ; \
    mkdir -p /etc/apache2 ; \
    touch /etc/apache2/.htpasswd ; \
    chmod 766 /etc/apache2/.htpasswd

# Debug
# COPY client.pem /etc/nginx/client.pem
# COPY client.key /etc/nginx/client.key

COPY nginx.conf /etc/nginx/nginx.conf
COPY error.html /var/www/error.html
COPY run.sh     /var/run.sh

ARG BACKEND_ADDR
ENV BACKEND_ADDR=${BACKEND_ADDR}

CMD /bin/sh -c "/bin/bash /var/run.sh && nginx -g 'daemon off;'"