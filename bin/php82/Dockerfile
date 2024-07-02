# Use a imagem oficial do PHP 8.3
FROM php:8.3-apache

# Atualize a lista de pacotes
RUN apt-get update -y

# Instale as extensões necessárias do PHP
RUN docker-php-ext-install pdo pdo_mysql

# Copie os arquivos do seu projeto para o contêiner
COPY . /var/www/html/

# Exponha a porta 80
EXPOSE 80

# Inicie o servidor Apache
CMD ["apache2-foreground"]
