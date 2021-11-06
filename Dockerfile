FROM emqz/levant:latest

WORKDIR /nomad-deploy

COPY deploy /nomad-deploy/deploy

ENTRYPOINT ["/nomad-deploy/deploy"]
