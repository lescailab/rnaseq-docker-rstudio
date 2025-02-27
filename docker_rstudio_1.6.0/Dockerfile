FROM ghcr.io/lescailab/rnaseq-docker-rstudio:1.5.0


RUN Rscript -e "remotes::install_github('nsgrantham/ggdark')"


COPY install_packages.R install_packages.R
RUN wget https://cran.r-project.org/src/contrib/infer_1.0.7.tar.gz
RUN Rscript install_packages.R
RUN rm *.tar.gz
RUN rm install_packages.R