FROM python:alpine

RUN apk --no-cache add -t deps gcc libffi-dev libressl-dev make musl-dev && \
    pip install ansible-lint==3.4.23 yamllint==1.11.1 yapf==0.22.0 && \
    apk --no-cache del --purge deps
