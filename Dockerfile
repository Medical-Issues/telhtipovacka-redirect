FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
RUN printf 'server {\n\
    listen 80;\n\
    location / {\n\
        return 301 https://telhtipovacka.duckdns.org$request_uri;\n\
    }\n\
}\n' > /etc/nginx/conf.d/default.conf
EXPOSE 80
