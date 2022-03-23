FROM    ubuntu
RUN     apt-get update -y
RUN     apt-get install nginx -y
RUN     mkdir nginx-config
RUN     mkdir www
WORKDIR nginx-config
COPY    default /nginx-config
COPY    default /etc/nginx/sites-available
COPY    default /etc/nginx/sites-enabled
CMD     ["nginx", "-g", "daemon off;"]
