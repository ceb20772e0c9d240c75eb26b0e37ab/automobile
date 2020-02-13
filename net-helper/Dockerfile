FROM python:alpine3.11
MAINTAINER sasha_karaseva
USER root

WORKDIR /home/root/mitmproxy

RUN apk add --no-cache git adb
RUN pip install --upgrade pip && pip install mitmproxy

# proxy export ip and port to devices
