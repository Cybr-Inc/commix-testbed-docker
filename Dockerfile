FROM lamp:latest

WORKDIR /var/www/example.com/public_html/

RUN rm index.html

RUN apt-get update && apt-get install -y

RUN git clone https://github.com/commixproject/commix-testbed.git commix-testbed

CMD ["apachectl", "-D", "FOREGROUND"]

CMD ["mysql", "start"]