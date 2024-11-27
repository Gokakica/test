# Use the official PHP image with Apache
FROM php:8.2-apache

# Install required PHP extensions and utilities
RUN apt-get update && apt-get install -y \
    libzip-dev \
    unzip \
    && docker-php-ext-install zip pdo pdo_mysql \
    && a2enmod rewrite \
    && apt-get clean

# Copy application files to the container
WORKDIR /var/www/test
COPY . /var/www/test

# Set proper permissions
RUN chown -R www-data:www-data /var/www/text \
    && chmod -R 755 /var/www/test

# Expose port 80
EXPOSE 80

# Start the Apache server
CMD ["apache2-foreground"]
