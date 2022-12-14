% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cleanR.R
\name{organize}
\alias{organize}
\title{Create a clean project structure}
\usage{
organize(path, proj = TRUE)
}
\arguments{
\item{path}{Absolute or relative project path. If the directory does not exist, it will be created.
Spaces will be replaced by a graceful underscore \verb{_} in the files names.
Note that it is a (very) good practice to have no white space or weird characters in your project name}

\item{proj}{A boolean. if \code{TRUE}, create a new project}
}
\value{
A beautifully organized project folder
}
\description{
Create a clean project structure
}
\examples{
\dontrun{
organize("myProject")
}

}
