FROM gradle:5.6

LABEL maintainer="peter <7061384@126.com>"

# Change application source from dl-cdn.alpinelinux.org to aliyun source
# RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak
# COPY debian/bonic.source.list /etc/apt/sources.list

# install curl
RUN apt-get update \
    && apt-get install -y \
        curl

# Clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    rm /var/log/lastlog /var/log/faillog && \
    apt-get autoremove