FROM rocker/tidyverse:4.4.1

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
