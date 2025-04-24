--apache2--
FROM ubuntu 
env user=melvita
RUN apt update 
RUN apt install apache2 -y 
COPY index.html /var/www/html 
EXPOSE 80
--apache2--
