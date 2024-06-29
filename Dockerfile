FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

VOLUME /var/log/nginx

EXPOSE 80

COPY nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]

