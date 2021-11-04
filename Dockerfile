FROM hashicorp/levant:0.3.0

WORKDIR /nomad-deploy

COPY deploy /nomad-deploy/deploy

ENTRYPOINT ["/nomad-deploy/deploy"]
