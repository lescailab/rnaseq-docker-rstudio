FROM ghcr.io/lescailab/rnaseq-docker-rstudio:1.2.0


# Install system dependencies
RUN apt-get update && apt-get install -y \
    libglpk-dev \
    libxml2-dev \
    && rm -rf /var/lib/apt/lists/*


COPY install_packages.R install_packages.R
RUN wget https://cran.r-project.org/src/contrib/Seurat_5.1.0.tar.gz
RUN wget https://cran.r-project.org/src/contrib/SeuratObject_5.0.2.tar.gz
RUN wget https://cran.r-project.org/src/contrib/Matrix_1.7-0.tar.gz
RUN Rscript install_packages.R
RUN rm *.tar.gz
RUN rm install_packages.R