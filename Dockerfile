FROM nginx

WORKDIR /usr/share/nginx/user-center-frontend/html
USER root

COPY ./docker/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./dist /usr/share/nginx/user-center-frontend/html

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
