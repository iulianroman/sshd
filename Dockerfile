FROM 314a1f078530
MAINTAINER Iulian Roman <iulian.roman@gmail.com>
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd
ONBUILD ADD sshd_config /etc/ssh/sshd_config
CMD /usr/sbin/sshd -D

USER nobody
WORKDIR /tmp
ENV test "Hello" 

EXPOSE 2222
