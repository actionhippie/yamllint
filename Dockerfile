FROM alpine:3.16

# renovate: datasource=pypi depName=yamllint
ENV YAMLLINT_VERSION=1.28.0

RUN apk add --no-cache bash python3 python3-dev py3-pip && \
    pip3 install -U yamllint==${YAMLLINT_VERSION} && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
