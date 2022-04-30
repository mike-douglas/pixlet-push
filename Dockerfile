FROM alpine:latest
RUN apk add git go libwebp libwebp-dev alpine-sdk

RUN apk add --no-cache git go libwebp libwebp-dev alpine-sdk && \
    git clone https://github.com/tidbyt/pixlet && \
    cd pixlet && \
    make build && \
    cp pixlet /bin/pixlet && \
    cd / && rm -rf /pixlet /root/go /root/.cache/go-build && \
    apk del alpine-sdk go

ADD ./push.sh /bin/push

RUN chmod a+x /bin/push

ENTRYPOINT [ "/bin/push" ]
CMD [ "/app.star" ]