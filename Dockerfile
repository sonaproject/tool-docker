FROM alpine:latest
MAINTAINER Jian Li <gunine@sk.com>

LABEL Description="Provides useful tools" Version="0.1"

# Alpine-based installation
RUN apk add --update \
  curl \
  jq \
  bash \
  && rm -rf /var/cache/apk/*

# Default is to start a shell.  A more common behavior would be to override
# the command when starting.
CMD ["/bin/sh"]

