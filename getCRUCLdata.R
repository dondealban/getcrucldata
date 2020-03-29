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
library(ggplot2)
library(raster)
library(viridis)

# Read Input Data -------------------------
# The get_CRU_df() function automates the download process and creates tidy dataframes of
# the CRU CL v.2.0 climatology elements.
CRU_data <- get_CRU_df(pre = TRUE,    # precipitation (mm/month)
                       pre_cv = TRUE, # cv of precipitation (%)
                       rd0 = TRUE,    # wet-days (number days with >0.1 millimetres rain per month)
                       tmp = TRUE,    # temperature (degrees Celsius)
                       dtr = TRUE,    # mean diurnal temperature range (degrees Celsius)
                       reh = TRUE,    # relative humidity
                       tmn = TRUE,    # minimum temperature values (degrees Celsius)
                       tmx = TRUE,    # maximum temperature values (degrees Celsius)
                       sunp = TRUE,   # percent of maximum possible sunshine (% of day length)
                       frs = TRUE,    # ground-frost records (number of days with ground-frost per month)
                       wnd = TRUE,    # 10m wind speed (m/s)
                       elv = TRUE)    # elevation (and convert to m from km)

# Extract Specific Climate Elements -------
dfTMP <- get_CRU_df(tmp = TRUE)
dfSUN <- get_CRU_df(sun = TRUE)
dfFRS <- get_CRU_df(frs = TRUE)
dfWND <- get_CRU_df(wnd = TRUE)
dfRD0 <- get_CRU_df(rd0 = TRUE)



