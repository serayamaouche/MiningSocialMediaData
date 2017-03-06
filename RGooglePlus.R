#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Script File: RGooglePlus.R  
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
# [1] TRUE

# harvestProfile(): Retrieve the profile of Google+ users
myProfile=harvestProfile("+googleplus", parseFun = parseProfile)

## harvestActivity(): Retrieve the users that acted on a G+ post
# This function returns a (character) vector of Google+ user IDs.
# kind denotes the kind of person to be retrieved: c("plusoners", "resharers"),
users.p <- harvestActivity(myKey, "plusoners") 

# harvestPage(): Retrieve the posts of a user’s G+ page
# This function retrieves the most recent posts that a user put on his page. Google calls this ‘listing
# activities‘.
myposts=harvestPage("+[name]", parseFun = parsePost, results = 1, nextToken = NULL, cr = 1)
str(myposts)
plot(myposts$ti,myposts$nR)
plot(myposts$ti,myposts$nC)
myPosts.df = harvestPage("115484368398593587193")
gPosts.df  = harvestPage("+google", results=20)


# Searching for Google+ Posts
searchPost("#genomics")
