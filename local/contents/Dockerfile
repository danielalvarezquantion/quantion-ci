FROM nginx

WORKDIR /var/www/html
RUN mkdir images;
RUN mkdir documents;

# Define mountable directories.
VOLUME ["/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html/images","/var/www/html/documents"]

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 1234
