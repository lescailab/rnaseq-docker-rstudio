FROM ghcr.io/lescailab/rnaseq-docker-rstudio:1.0.0


RUN Rscript -e "BiocManager::install(c(\
'granulator', \
'orthogene'\
))"

RUN Rscript -e "remotes::install_github('liuy12/SCdeconR')"


COPY install_packages.R install_packages.R
RUN wget https://cran.r-project.org/src/contrib/openxlsx_4.2.5.2.tar.gz
RUN wget https://cran.r-project.org/src/contrib/pheatmap_1.0.12.tar.gz
RUN wget https://cran.r-project.org/src/contrib/reticulate_1.38.0.tar.gz
RUN Rscript install_packages.R
RUN rm *.tar.gz
RUN rm install_packages.R
