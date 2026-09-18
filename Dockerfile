FROM alpine:3.24@sha256:e7c4abb69531cb09e2a2bbb56fad3367ab694865c49df898c1c683185cc4376c

# renovate: datasource=pypi depName=yamllint
ENV YAMLLINT_VERSION=1.38.0

RUN apk add --no-cache bash python3 python3-dev py3-pip && \
    pip3 install --break-system-packages -U yamllint==${YAMLLINT_VERSION} && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
