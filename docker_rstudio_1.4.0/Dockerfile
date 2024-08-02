FROM ghcr.io/lescailab/rnaseq-docker-rstudio:1.3.0


RUN Rscript -e "remotes::install_github('YuLab-SMU/createKEGGdb')"

RUN Rscript -e "BiocManager::install(c(\
'KEGG.db' \
))"


COPY install_packages.R install_packages.R
RUN wget https://cran.r-project.org/src/contrib/readxl_1.4.3.tar.gz
RUN Rscript install_packages.R
RUN rm *.tar.gz
RUN rm install_packages.R