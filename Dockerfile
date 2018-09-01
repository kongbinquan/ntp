FROM centos
MAINTAINER allan
RUN yum install ntp curl -y && rm -rf /etc/ntp.conf\
&& curl -Lks4 https://raw.githubusercontent.com/kongbinquan/ntp/master/start.sh -o /start.sh && mkdir /data \
&& yum clean all && chmod +x /start.sh
ENTRYPOINT ["/start.sh"]
