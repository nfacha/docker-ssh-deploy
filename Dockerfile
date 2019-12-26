FROM ubuntu:18.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y \
&& apt-get install openssh-client -y --no-install-recommends \
&& rm -rf /var/lib/apt/lists/*
RUN mkdir -p ~/.ssh
RUN echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
