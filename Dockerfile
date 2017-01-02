FROM alpine:3.5

ADD start_runit /sbin/
RUN 	mkdir /etc/container_environment &&\
        chmod a+x /sbin/start_runit && mkdir /etc/service && mkdir /etc/runit_init.d && \
        echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
        echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
        apk --update upgrade && apk add runit && rm -rf /var/cache/apk/*

CMD ["/sbin/start_runit"]
