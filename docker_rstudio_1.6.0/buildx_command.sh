# docker buildx create --platform "linux/amd64" --name build --use

docker buildx build \
--label org.opencontainers.image.title=rnaseq-docker-rstudio \
--label org.opencontainers.image.description='container for rna-seq analysis with rstudio and deseq2' \
--label org.opencontainers.image.url=https://github.com/lescailab/rnaseq-docker-rstudio \
--label org.opencontainers.image.source=https://github.com/lescailab/rnaseq-docker-rstudio \
--label org.opencontainers.image.version=1.6.0 \
--label org.opencontainers.image.created=$(date -u +"%Y-%m-%dT%H:%M:%S.%3NZ") \
--label org.opencontainers.image.licenses=MIT \
--platform linux/amd64 \
--tag ghcr.io/lescailab/rnaseq-docker-rstudio:1.6.0 \
--tag ghcr.io/lescailab/rnaseq-docker-rstudio:latest \
--push .