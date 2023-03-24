FROM riscv64/ubuntu:latest

LABEL maintainer="IOInfinity x 源碼無限"

RUN apt-get update && \
    apt-get install -y -q curl gnupg2
RUN curl http://nginx.org/keys/nginx_signing.key | apt-key add -

RUN apt install libterm-readkey-perl -y
RUN apt-get update && \
    apt-get install -y -q nginx

EXPOSE 443 80

CMD ["nginx", "-g", "daemon off;"]
