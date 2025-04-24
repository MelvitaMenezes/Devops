--apache2--
FROM ubuntu 
env user=melvita
RUN apt update 
RUN apt install apache2 -y 
COPY index.html /var/www/html 
EXPOSE 80
--apache2--

Build docker image // docker build -t apache_image:1.0 .
run docker image / docker run -it -d --name ap -p 9000:80  apache_image:1.0 /bin/bash
container will be built

--Python--
FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "app.py"]
--Python--
