#!/bin/bash 

docker run \
  --name caddy \
  --rm \
  -p 8080:80 \
  -p 4443:443 \
  -v /Users/josephhughes/src/caddy-local/Caddyfile:/etc/caddy/Caddyfile \
  -v caddy_data:/data \
  -v caddy_config:/config \
  -e CF_API_TOKEN=foobar \
  jjhughes57/caddy-local