FROM ghcr.io/lescailab/rnaseq-docker-rstudio:1.4.0

RUN Rscript -e "BiocManager::install(c(\
'GEOquery', \
'affy', \
'limma', \
'oligo', \
'sva' \
))"