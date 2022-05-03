FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY . .

CMD /bin/sh -c "envsubst '\$PORT' < ./default.conf > /etc/nginx/conf.d/default.conf" \
    && nginx -g 'daemon off;'