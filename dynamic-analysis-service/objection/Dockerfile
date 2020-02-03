FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
apt install -y python3.7 python3-pip unzip aapt zipalign && \
openjdk-11-jdk \
pip3 install -U pip && \
pip install objection && \
mkdir /data

WORKDIR /opt

RUN wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip && \
    unzip platform-tools-latest-linux.zip && \
    rm -rf platform-tools-latest-linux.zip && \
    wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool -O /usr/local/bin/apktool && \
    wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.3.4.jar -O /usr/local/bin/apktool.jar && \
    chmod +x /usr/local/bin/apktool /usr/local/bin/apktool.jar

RUN bash -c "echo 'echo -ne \"\e[93m[?]\e[0m Frida Gadgets/Servers: \e[34mhttps://github.com/frida/frida/releases\e[0m\n\"' >> /root/.bashrc" && \

WORKDIR /data
