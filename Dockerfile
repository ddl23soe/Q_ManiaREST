FROM php:8.2-apache

# Copia todos os arquivos para o servidor web
COPY . /var/www/html/

# Ativa o módulo de reescrita do Apache (se necessário)
RUN a2enmod rewrite

EXPOSE 80
