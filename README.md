#cleanR R Package

> Creates a clean infrastructure with a classical folder organization to keep your R project tidy.

A simple package to run before starting your project.

It contains the single function `organise()` that works as follows:

- Usage
`organize(path, proj = TRUE)`

- Arguments
`path`: Absolute or relative project path. If the directory does not exist, it will be created. Spaces will be replaced by a graceful underscore _ in the files names. Note that it is a (very) good practice to have no white space or weird characters in your project name

`proj`: A boolean. If `TRUE`, create a new project

- Value
A beautifully organized project folder

- Examples
## Not run: 
organize("myProject")

## End(Not run)

