FROM hendrikmaus/nomad-cli:0.12.7

RUN apk update && apk add bash gettext curl

RUN curl -L https://comento-s3-bucket.s3.ap-northeast-2.amazonaws.com/levant/dev-0.3.0/linux-amd64-levant -o /usr/bin/levant

RUN chmod +x /usr/bin/levant

WORKDIR /nomad-deploy

COPY deploy /nomad-deploy/deploy

RUN chmod +x /nomad-deploy/deploy

ENTRYPOINT ["/nomad-deploy/deploy"]
