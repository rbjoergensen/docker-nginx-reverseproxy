FROM nginx

RUN rm -v /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/nginx.conf
COPY error.html /var/www/error.html
COPY run.sh     /var/run.sh

ARG BACKEND_ADDR
ENV BACKEND_ADDR=${BACKEND_ADDR}

CMD /bin/sh -c "/bin/bash /var/run.sh && nginx -g 'daemon off;'"