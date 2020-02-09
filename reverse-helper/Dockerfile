FROM alpine:latest
MAINTAINER sasha_karaseva
USER root

RUN apk add --no-cache wget openjdk9 git

# dex-tools installation
RUN mkdir dex-tools \
curl "https://api.github.com/repos/pxb1988/dex2jar/releases/latest" \
    | grep "dex-tools-*.*.zip" \
    | cut -d : -f 2,3 \
    | tr -d \" \
    | wget -qi - -O dex-tools/dex-tools.zip \
unzip ~/dex-tools/dex-tools.zip -d ~/dex-tools \
rm ~/dex-tools/dex-tools.zip \
chmod -R +x dex-tools

RUN wget -O /usr/local/bin/apktool.jar "https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.1.jar" \ 
chmod +x /usr/local/bin/apktool.jar

# JDCommandLine installation (used to get code from .jar files)
RUN git clone https://github.com/betterphp/JDCommandLine.git \
chmod +x ~/JDCommandLine/JDCommandLine.jar

# JADX cli installation
RUN git clone https://github.com/skylot/jadx.git \
~/Jadx/gradlew dist

# Deobfuscation tool installation
RUN git clone https://github.com/CalebFenton/simplify.git \
chmod -R +x simplify
