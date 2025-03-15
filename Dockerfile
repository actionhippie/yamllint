FROM alpine:3.21

# renovate: datasource=pypi depName=yamllint
ENV YAMLLINT_VERSION=1.36.1

RUN apk add --no-cache bash python3 python3-dev py3-pip && \
    pip3 install --break-system-packages -U yamllint==${YAMLLINT_VERSION} && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
