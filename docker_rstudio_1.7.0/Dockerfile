FROM ghcr.io/lescailab/rnaseq-docker-rstudio:1.6.0


# Install system dependencies
RUN apt-get update && apt-get install -y \
    libmagick++-dev \
    librsvg2-dev \
    && apt-get clean


COPY install_packages.R install_packages.R
RUN wget https://cran.r-project.org/src/contrib/PubChemR_2.1.3.tar.gz
RUN wget https://cran.r-project.org/src/contrib/tidymodels_1.3.0.tar.gz
RUN Rscript install_packages.R
RUN rm *.tar.gz
RUN rm install_packages.R