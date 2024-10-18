# Use the official PHP image with Apache  
FROM php:8.1-apache

# Set the working directory in the container  
WORKDIR /var/www/html

# Copy the PHP files from the current directory to the container  
COPY . .

# Ensure the correct permissions for the Apache server  
RUN chown -R www-data:www-data /var/www/html

# Expose port 80  
EXPOSE 80
