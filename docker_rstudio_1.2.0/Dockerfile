FROM ghcr.io/lescailab/rnaseq-docker-rstudio:1.1.0

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libudunits2-dev \
    libproj-dev \
    libgdal-dev \
    && rm -rf /var/lib/apt/lists/*

RUN Rscript -e "BiocManager::install(c(\
'granulator' \
))"

COPY install_packages.R install_packages.R
RUN wget https://cran.r-project.org/src/contrib/VennDiagram_1.7.3.tar.gz
RUN Rscript install_packages.R
RUN rm *.tar.gz
RUN rm install_packages.R