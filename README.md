# rmarkdown-docker
Docker container with RMarkdown support.

Basic support is included for HTML and PDF outputs.

The following R packages are included:

- rmarkdown
- knitr
- kableExtra
- ggplot2

## A Simple Example

This simple [example](example.Rmd) document can be rendered with the following command:

```
$ docker run -v ${PWD}:/data:rw rmarkdown:latest R -e 'library(rmarkdown); render("/data/example.Rmd")'
```

This creates a file `example.html` containing a some text and a plot.
