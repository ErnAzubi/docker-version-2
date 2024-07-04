# Use the official PHP image with Apache
FROM php:8.0-apache

# Copy your PHP and HTML files to the Apache document root
COPY login.html /var/www/html/
COPY validate.php /var/www/html/

# Set needed permissions
RUN chown -R www-data:www-data /var/www/html/
RUN chmod -R 755 /var/www/html/

# Enable Apache mod_rewrite (optional, if you need URL rewriting)
RUN a2enmod rewrite

# Set the working directory
WORKDIR /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
