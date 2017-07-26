FROM docker
MAINTAINER HB SB VG CM BC AA

RUN apk update && \
    apk add \
        openssh\
        openrc

RUN rc-update add sshd

CMD while : do; sleep 1000; done
