FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/
COPY scripts/ /usr/share/nginx/html/scripts/

EXPOSE 80

# nginx 실행
CMD ["nginx", "-g", "daemon off;"]