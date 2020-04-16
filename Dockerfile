FROM rust:alpine

ENV BUILD_DIR=/build \
    RUSTFLAGS="-C target-feature=-crt-static"

WORKDIR $BUILD_DIR
RUN rustup component add clippy rustfmt && \
    apk upgrade --update-cache --available && \
    apk add musl-dev openssl-dev && \
    rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
