FROM nginx:mainline-alpine

RUN rm -rvf /var/www/html/*

COPY Utility.conf /etc/nginx/conf.d/

WORKDIR /var/www/html/Utility

COPY . .

EXPOSE 8090

CMD ["nginx", "-g", "daemon off;"]

