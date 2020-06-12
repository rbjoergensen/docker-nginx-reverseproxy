## Nginx Reverse Proxy
##### Required files
- /etc/nginx/client.key
- /etc/nginx/client.pem
##### Optional files
- /var/www/error.html (Error page)
##### Environment variables
- BACKEND_ADDR (eg. 192.168.1.10:8080)
    The address of the backend http service to proxy for.