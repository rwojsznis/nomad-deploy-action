FROM hendrikmaus/nomad-cli:0.12.7

RUN apk update && apk add bash gettext

WORKDIR /nomad-deploy
COPY deploy /nomad-deploy/deploy

ENTRYPOINT ["/nomad-deploy/deploy"]
