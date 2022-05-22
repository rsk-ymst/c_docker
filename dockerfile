FROM alpine
WORKDIR /home/projects

RUN apk update && apk add --no-cache \
    git \
    vim \
    gcc \
    g++ \
    libc-dev

# git の設定
RUN git config --global user.name  "rsk-ymst"
RUN git config --global user.email "jey.togo@gmail.com"

CMD cd /home/projects