#!/bin/bash
# Update package list and install NGINX
apt-get update -y
apt-get install -y nginx

# Configure NGINX
echo "server {
    listen 80;
    server_name example.com;
    location / {
        root /var/www/html;
        index index.html;
    }
}" > /etc/nginx/sites-available/default

ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/
service nginx restart
