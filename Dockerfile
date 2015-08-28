FROM alpine:edge

RUN sed -i 's/#rc_sys=""/rc_sys="lxc"/g' /etc/rc.conf

# Networking is setup by Docker
RUN echo 'rc_provide="loopback net"' >> /etc/rc.conf
# RUN rc-update delete loopback boot
# RUN rc-update delete netmount default

# Log boot process to /var/log/rc.log
RUN sed -i 's/^#\(rc_logger="YES"\)$/\1/' /etc/rc.conf

ADD my_init /sbin/

RUN  mkdir /etc/container_environment \
        && chmod a+x /sbin/my_init && mkdir /etc/service && mkdir /etc/my_init.d && \
        apk --update upgrade && apk add runit python3 && rm -rf /var/cache/apk/*

CMD ["/sbin/my_init"]
