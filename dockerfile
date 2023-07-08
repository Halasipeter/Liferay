FROM httpd:latest
COPY index.html /usr/local/apache2/htdocs/
COPY image.jpg /usr/local/apache2/htdocs/