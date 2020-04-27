FROM node:12.6.0-buster-slim

LABEL maintainer="peter <7061384@126.com>"

# install curl
RUN apt-get update \
    && apt-get install -y \
        openssh-client \
        curl

# Clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    rm /var/log/lastlog /var/log/faillog && \
    apt-get autoremove