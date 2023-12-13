FROM ubuntu:latest
WORKDIR /opt/app

RUN apt-get update && apt-get install -y \
    wkhtmltopdf \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN wget -qO /usr/local/bin/yg https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 \
    && chmod a+x /usr/local/bin/yq

COPY src src
COPY scripts scripts
COPY .env .env