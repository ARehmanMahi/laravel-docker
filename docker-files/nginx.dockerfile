FROM nginx:1.23.1-alpine

ADD docker-files/nginx/default.conf /etc/nginx/conf.d/default.conf