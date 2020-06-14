htpasswd -b -c /etc/apache2/.htpasswd $AUTH_USER $AUTH_PASS
sed -i 's/<backend_placeholder>/'$BACKEND_ADDR'/g' /etc/nginx/nginx.conf
# docker run -d -p 80:80 -p 443:443 -e BACKEND_ADDR="192.168.1.10:8080" -e AUTH_USER=user -e AUTH_PASS=password testauth