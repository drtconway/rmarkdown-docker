FROM r-base:latest
RUN apt update && \
    apt upgrade -y && \
    apt install -y \
        pandoc \
        texlive-luatex texlive-latex-extra \
        libcurl4-openssl-dev libssl-dev \
        libxml2-dev
RUN R -e 'install.packages(c("rmarkdown", "knitr", "kableExtra", "ggplot2"))'
