FROM ubuntu:16.04
LABELE OWNER='KRISHNA'
LABEL EMAIL="jayakrishna.aggarapu@gmail.com"
ENV REPO="https://github.com/mavrick202/dockertest1.git"
RUN apt update \
    && apt install -y nginx net-tools curl unzip wget git \
    && git clone ${REPO} /tmp/website \
    && cd /tmp/website \
    && cp index.html /var/www/html/index.nginx-debian.html \
    && cp scorekeeper.js /var/www/html \
    && cp style.css /var/www/html \
    && mkdir /testfolderkrishna
CMD [ "/bin/bash" ]
CMD service nginx start