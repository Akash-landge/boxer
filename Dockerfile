FROM ubuntu
LABEL akash="07"
RUN apt update &&\
 apt install nunzip nginx -y && \
 rm -rf /usr/share/nginx/index.html/
WORKDIR /usr/share/nginx/html
COPY oxer.zip .
RUN unzip oxer.zip &&\
mv oxer-html/* .
EXPOSE 81
CMD ["nginx", "-g", "daemon off;"]
