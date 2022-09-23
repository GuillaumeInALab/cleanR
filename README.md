# cleanR

Creates a clean infrastructure with a classical folder organization to keep your R project tidy.
A simple package to run before starting your project.

## Installation

`cleanR` can be installed directly from GitHub.

```r
install_packages("devtools")
devtools::install_github("GuillaumeInALab/cleanR")
```

## Usage
It contains the single function `organize()` that works as follows:

`organize(path, proj = TRUE)`

**Arguments**

`path`: Absolute or relative project path. If the directory does not exist, it will be created. Spaces will be replaced by a graceful underscore _ in the files names. Note that it is a (very) good practice to avoid white space or weird characters in your project name

`proj`: A boolean. If `TRUE`, create a new RStudio project


## Examples

```r
organize("myProject")

#Does not create a RStudio project
organize("myProject", proj = FALSE)
```


