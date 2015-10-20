#!/usr/bin/env Rscript

## This script installs the packages whose names are given in pkgs and
## github_pkgs.
##
## The packages listed in pkgs are installed from CRAN. If they are
## already installed on the system, then these packages are not reinstalled.
##
## The packages listed in github_pkgs are installed from GitHub using
## devtools::install_github. These packages are reinstalled every time that the
## script is run.

pkgs = c(
    'colorspace',
    'devtools',
    'knitr',
    'mapdata',
    'proj4'
)

github_pkgs = c(
    'btjones16/ocean'
)

for(pkg in pkgs) {
    if(!(pkg %in% rownames(installed.packages()))) {
        install.packages(pkg)
    }   
}

for(pkg in github_pkgs) {
    devtools::install_github(pkg)
}
