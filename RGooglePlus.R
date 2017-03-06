#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Script File: GoogleScholar2R.R.R  
# Date of creation: 12 Feb 2017
# Date of last modification: 25 Feb 2017
# Author: Seraya Maouche <seraya.maouche@iscb.org>
# Short Description: This script provides functionalities to access citation 
#                     data from Google Scholar
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# Installing depending packages
requiredPackages <- c("scholar","ggplot2","dplyr","stringr",
                       "R.cache","httr","rvest","xml2")
install.packages(requiredPackages)


#********************** Installing scholar from CRAN
# install.packages("scholar")
#
#********************** Installing scholar from github
#if (!require("devtools")) install.packages("devtools")
# devtools::install_github("jkeirstead/scholar")
# https://github.com/jkeirstead

#********************** Load library
library(scholar)
library(ggplot2)
