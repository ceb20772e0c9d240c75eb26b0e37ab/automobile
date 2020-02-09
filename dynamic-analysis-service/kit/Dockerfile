FROM alpine:latest
MAINTAINER sasha_karaseva
USER root

RUN apk add --no-cache git adb wget openjdk9

# SSL PINNING BYPASS
RUN wget -O "https://github.com/iSECPartners/Android-SSL-TrustKiller/releases/download/v1/Android-SSL-TrustKiller.apk"

# Extract and repack Android backups
# RUN git clone https://github.com/nelenkov/android-backup-extractor.git
