#
# Dockerfile
#
FROM mkovac/base-debian:latest
MAINTAINER Matej Kovac <matej.kovac@gmail.com>

# assets - big, pre-downloaded files, not modified very often
#
#COPY assets /root/assets

# files and scripts needed to build the image
#
COPY build /root/build

RUN run-parts --report --exit-on-error /root/build/scripts && \
  rm -rfv /root/build /root/assets

VOLUME ["/etc/gitlab-runner", "/home/gitlab-runner"]

# from parent...
#ENTRYPOINT ["/sbin/entrypoint.sh"]
# from parent...
#CMD ["/usr/bin/dumb-init", "/etc/rc.local"]
