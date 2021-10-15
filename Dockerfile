FROM alpine:3.14

# renovate: datasource=pypi depName=yamllint
ENV YAMLLINT_VERSION=1.26.3

RUN apk add --no-cache python3 python3-dev py3-pip && \
    pip3 install -U yamllint==${YAMLLINT_VERSION} && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
