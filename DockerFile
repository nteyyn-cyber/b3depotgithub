FROM nginx:latest
RUN apt-get update && apt-get install -y curl
COPY monsite/ /usr/share/nginx/html/
EXPOSE 80
