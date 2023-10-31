FROM mariadb:latest


RUN apt-get update && apt-get install -y  default-mysql-client apt-utils \
    && rm -rf /var/lib/apt/lists/*

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' > /etc/timezone
