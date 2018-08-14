FROM ubuntu:18.04
LABEL maintainer="administrator@unswpress.com"
LABEL description="Base UNSW Press Ubuntu dockerfile"
ENV UPDATED_AT 2018-08-13
ENV LANG en_AU.UTF-8
ENV LANGUAGE en_AU:en
ENV LC_ALL en_AU.UTF-8
RUN apt-get -qy update \
	&& apt-get -qy full-upgrade
RUN apt-get -qy install tzdata locales && \
	rm -rf var/lib/apt/lists/*
RUN locale-gen en_AU.UTF-8 en_US.UTF-8 \
	&& update-locale LANG=$LANG LANGUAGE=$LANGUAGE LC_ALL=$LC_ALL


