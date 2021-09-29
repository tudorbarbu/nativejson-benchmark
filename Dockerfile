FROM ubuntu:18.04

RUN apt-get update --fix-missing && \
	DEBIAN_FRONTEND="noninteractive" apt-get install --no-install-recommends -y \
	build-essential \
	ca-certificates \
	curl \
	gcc \
	g++ \
	git \
	libboost-all-dev \
	php-cli

# premake5
RUN mkdir -p /premake5
WORKDIR /premake5

RUN curl -L -s https://github.com/premake/premake-core/releases/download/v5.0.0-alpha16/premake-5.0.0-alpha16-linux.tar.gz | tar -xvz && \
	chmod +x premake5

ENV PATH $PATH:/premake5

VOLUME ["/nativejson-benchmark"]

WORKDIR /nativejson-benchmark
