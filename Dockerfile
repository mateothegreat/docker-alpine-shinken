FROM alpine:edge

# VERSIONS
ENV ALPINE_VERSION=3.7 \
    PYTHON_VERSION=2.7.14

RUN addgroup shinken
RUN adduser -D -G shinken shinken

RUN apk --update add \
    python \
    py2-pip \
    curl-dev

RUN pip install --upgrade pip
RUN pip install shinken \
    pycurl

USER shinken

RUN shinken --init