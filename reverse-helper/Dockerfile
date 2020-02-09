FROM alpine::latest
MAINTAINER sasha_karaseva
USER root

RUN apk add --no-cache wget openjdk9 git

RUN wget -O /usr/local/bin/apktool.jar "https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.1.jar" 
RUN chmod +x /usr/local/bin/apktool.jar
RUN java -jar /usr/local/bin/apktool.jar

RUN git clone https://github.com/skylot/jadx.git && cd jadx \
jadx/gradlew dist

RUN git clone https://github.com/CalebFenton/simplify.git && cd simplify \
chmod +x .
