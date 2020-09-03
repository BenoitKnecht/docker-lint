FROM python:alpine

RUN apk --no-cache add git npm && \
    apk --no-cache add -t deps gcc libffi-dev libressl-dev make musl-dev && \
    pip install ansible-lint==4.3.4 demjson==2.2.4 yamllint==1.24.2 yapf==0.30.0 && \
    npm install --global markdownlint-cli2@v0.0.8 && \
    apk --no-cache del --purge deps
