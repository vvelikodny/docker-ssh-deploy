FROM golang:1.8

RUN apt-get update -y && apt-get install openssh-client -y \
    && mkdir -p ~/.ssh \
    && [[ -f /.dockerenv ]] && echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
