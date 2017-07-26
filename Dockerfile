FROM docker
MAINTAINER HB SB VG CM BC AA

RUN apk update && \
    apk add \
        openssh\
        openrc

RUN rc-update add sshd

RUN adduser -D -h /home/user user
RUN mkdir /home/user/.ssh
COPY id_rsa.pub /home/user/.ssh/authorized_keys
RUN chmod 700 /home/user/.ssh
RUN chmod 644 /home/user/.ssh/*
USER user
WORKDIR /home/user

CMD while : ; do sleep 1000; done
