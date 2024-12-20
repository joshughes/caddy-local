FROM caddy:builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/namecheap \
    --with github.com/hairyhenderson/caddy-teapot-module@v0.0.3-0

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy