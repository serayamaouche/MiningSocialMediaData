#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Script File: Rfacebook.R  
# Date of creation: 12 Nov 2016
# Date of last modification: 25 Feb 2017
# Author: Seraya Maouche <seraya.maouche@iscb.org>
# Short Description: This script provides an interface to Google+ API
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# CRAN : https://cran.r-project.org/web/packages/plusser/index.html
# Github : https://github.com/cran/plusser

# Load required packages
library(RCurl)

#********************** Installing plusser package from CRAN
# install.packages("plusser")

#********************** Load library
library(plusser)
help(plusser)

# Sets an API key for the Google+ API
myKey = "GooglePlus_API_key"
options(RCurlOptions = list(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")))
setAPIkey(myKey)
