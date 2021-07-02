#' Create a clean project structure
#'
#' @param path Absolute or relative project path. If the directory does not exist, it will be created.
#' Spaces will be replaced by a graceful underscore `_` in the files names.
#' Note that it is a (very) good practice to have no white space or weird characters in your project name
#' @param proj A boolean. if `TRUE`, create a new project
#' @return A beautifully organized project folder
#' @export
#'
#' @examples
#' \dontrun{
#' organize("myProject")
#' }
#'
organize <- function(path, proj = TRUE){

 if(!dir.exists(path)) dir.create(path)
 setwd(path)
 pathf <- getwd()

 nameMain <- paste(gsub("[[:space:]]","_",basename(path)),"_MainScript.Rmd", sep="")
 nameDoc <- paste("doc/",gsub("[[:space:]]","_",basename(path)),"_README.Rmd", sep="")
 configFile <- paste(basename(path),".config", sep="")

 dir.create("data")
 dir.create("figures")
 dir.create("results")
 dir.create("doc")

 file.create(nameMain)
 file.create(nameDoc)
 file.create(configFile)


 sink(nameMain)
 cat("---
 title: \"My New Project\"
 author: \"Guillaume P. Andrieu\"
 date: \"`r Sys.Date()`\"
 output:
 prettydoc::html_pretty:
    theme: architect
    toc: true
    highlight: github
---

Version 0.0.1

**R version**: \"`r R.version.string`\"
**Bioconductor version**: \"`r BiocManager::version()`\"
**Package**: \"`r packageVersion()`\"
     ")

 cat("
```{r setup, include=FALSE}
knitr::opts_chunk$set(echo=TRUE, message = FALSE, warning= FALSE)
``` \n")


 cat("
```{r clean up}
rm(list = ls())
```\n")


cat("
```{r libraries}
if(!require(needs))
  {install.packages(\"needs\" )}
library(needs)

needs(\"\")
``` \n")

cat("
```{r custom functions}

``` \n\n")


cat("
```{r data loading}

``` \n\n\n")


 cat("
```{r debug zone}
# DEBUG ZONE --------------------------------------------------------------
#
#
# Here you can experiment some codes.
# Clean this section when your satisfied with your code
#
#
# END DEBUG ZONE ----------------------------------------------------------
``` \n\n")

 sink()

 sink(nameDoc)
 cat("---
title: \"My New Project - README\"
author: \"Guillaume P. Andrieu\"
date: \"`r Sys.Date()`\"
output:
  output: github_document
---

Version 0.0.1
   ")
 sink()


#Parameters
if(proj) {
  nameProj <- paste(basename(path),".RProj", sep="")
  file.create(nameProj)

  sink(nameProj)
  arguments <- c("Version: 1.0", "", "RestoreWorkspace: Default", "SaveWorkspace: Default",
                 "AlwaysSaveHistory: Default", "", "EnableCodeIndexing: Yes",
                 "UseSpacesForTab: Yes", "NumSpacesForTab: 4", "Encoding: UTF-8",
                 "", "RnwWeave: knitr", "LaTeX: pdfLaTeX")

  cat(paste(arguments, collapse="\n"))
  sink()

}

}
