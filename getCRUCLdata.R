# Script Description ----------------------
# This script implements a basic workflow to extract the CRU CL v.2.0 climate datasets
# using the getCRUCLdata R package (Sparks 2019). More information about the getCRUCLdata
# R package found here: https://cran.r-project.org/web/packages/getCRUCLdata/index.html.
#
# Script by:      Jose Don T. De Alban
# Date created:   29 Mar 2020


# Set Working Directory -------------------
setwd("/Users/dondealban/Dropbox/Research/getcrucldata/")

# Load Libraries --------------------------
library(getCRUCLdata)
library(raster)
library(ggplot2)

# Read Input Data -------------------------