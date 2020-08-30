FROM linode/lamp

WORKDIR /var/www/example.com/public_html/

RUN rm index.html

RUN apt-get update && \
    apt-get install git -y && \
    git clone https://github.com/commixproject/commix-testbed.git commix-testbed

CMD ["apachectl", "-D", "FOREGROUND"]
