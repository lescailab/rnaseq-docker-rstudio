FROM rocker/rstudio:latest

RUN install2.r --error --skipinstalled \
BiocManager \
kableExtra \
remotes \
ggnewscale

RUN Rscript -e "remotes::install_github('YuLab-SMU/ggtree')"

RUN Rscript -e "BiocManager::install(c(\
'Gviz', \
'VariantAnnotation', \
'GenomicFeatures', \
'rtracklayer', \
'Biostrings', \
'DESeq2', \
'tximport', \
'tximeta', \
'msa', \
'seqinr', \
'fgsea', \
'GOSemSim', \
'qvalue', \
'reshape2', \
'downloader', \
'enrichplot', \
'plotly', \
'org.Hs.eg.db', \
'AnnotationDbi', \
'clusterProfiler', \
'DO', \
'DOSE', \
'rvcheck'\
))"


COPY install_packages.R install_packages.R
RUN wget https://cran.r-project.org/src/contrib/tidyverse_2.0.0.tar.gz
RUN Rscript install_packages.R
RUN rm *.tar.gz
RUN rm install_packages.R
