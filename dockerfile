FROM ubuntu
RUN apt-get update -y\
    apt-get install nginx -y
CMD ["service", "nginx", "start"]