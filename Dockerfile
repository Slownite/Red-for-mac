FROM ubuntu:18.04
RUN apt update -y && apt upgrade -y
RUN apt install git curl -y
RUN dpkg --add-architecture i386
RUN apt-get update -y
RUN apt-get install libc6:i386 libcurl4:i386 libgtk-3-0:i386 libgdk-pixbuf2.0-0:i386 -y
RUN curl https://static.red-lang.org/dl/auto/linux/red-latest > red
RUN chmod +x red
RUN ./red
