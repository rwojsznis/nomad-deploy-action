FROM hendrikmaus/nomad-cli:0.12.7

RUN apk update && apk add bash gettext curl

RUN curl -L https://github.com/hashicorp/levant/releases/download/0.2.9/linux-amd64-levant -o /usr/bin/levant

RUN chmod +x /usr/bin/levant

WORKDIR /nomad-deploy
COPY deploy /nomad-deploy/deploy

ENTRYPOINT ["/nomad-deploy/deploy"]
