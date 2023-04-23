FROM nginx

WORKDIR /usr/share/nginx/html/
USER root

COPY ./docker/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./dist /usr/shart/nginx/html/

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
