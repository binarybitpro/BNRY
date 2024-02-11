FROM phusion/baseimage:focal-1.0.0
LABEL maintainer="BinaryBit Developers <dev@binarybit.org>"
LABEL description="Dockerised BinaryBit, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /home/binarybit

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} binarybit && \
    useradd -u ${USER_ID} -g binarybit -s /bin/bash -m -d /home/binarybit binarybit && \
    mkdir /home/binarybit/.binarybit && \
    chown ${USER_ID}:${GROUP_ID} -R /home/binarybit

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER binarybit

VOLUME ["/home/binarybit"]

EXPOSE 15937 9999 25937 25938

WORKDIR /home/binarybit
