FROM debian:jessie

RUN apt-get update -y && apt-get install openssh-client -y \
    && mkdir -p ~/.ssh \
    && [ -f /.dockerenv ] && echo "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
