FROM golang

COPY . /go/src/github.com/etsy/hound
COPY ssh-config /root/.ssh/config


RUN go-wrapper install github.com/etsy/hound/cmds/houndd

EXPOSE 6080

ENTRYPOINT [ "/go/bin/houndd", "-conf", "/hound/config.json"]
