\name{SeerMapperEast-package}
\alias{SeerMapperEast-package}
\docType{package}
\title{\var{SeerMapper}-Supplemental 2000 Census Tract East States Boundary Datasets}
\description{
 The \var{SeerMapperEast} package provides supplemental 2000 Census
 Tract boundary datasets for 20 states (PR and DC included), which are without Seer registries and  
 are east of the Mississippi river for use with \var{SeerMapper} package. 
 
 The \var{SeerMapperWest} data only package contains the 2000 census
 tract boundary datasets for 13 states west of the Mississippi river
 that do not contain NCI Seer Registries. The \var{SeerMapperRegs}
 data only package contains the 2000 census trace boundary datasets
 for the 19 states with Seer Registries.

 By loading these packages (via the library function) expands the
 \var{SeerMapper} package abilities to map 2000 census tract level
 data in any of the 50 states, the District of Columbia and Puerto Rico.
}
\details{
    \tabular{ll}{
      Package:  \tab SeerMapperEast\cr
      Type:     \tab Package\cr
      Version:  \tab 1.2.4\cr
      Date:     \tab 2020-06-22\cr
      License:  \tab GPL-2\cr
      LazyLoad: \tab no\cr
    } 

No special action is required by the user to install this package or
load it when running \var{SeerMapper}.  The defined interdependencies
of the packages automatically install the supplemental 2000 census tract
boundary packages when \var{SeerMapper} is install. 
When \var{SeerMapper} is called, if it determines that one or more
supplemental packages need to be loaded, it initiates the loading for
the caller.
\preformatted{  
  library(SeerMapper)
  
  rateDate <- data.frame(FIBS=stateFibs, 
                         Rate=stateRateVector, 
                         pValue=stateRatePValue)
  
  SeerMapper(rateData, Title=c("Test Map"))
 }

If the package attachment or dataset load fails, the caller is 
notified of the problem and mapping is terminated.  

The \var{SeerMapperEast} package contains the 2000 census tract 
boundary datasets for:
\preformatted{
    FIPS   Name
     01     Alabama
     10     Delaware
     11	    District of Columbia
     12	    Florida
     17	    Illinois
     18	    Indiana
     23     Maine
     24     Maryland
     28	    Mississippi
     33	    New Hampshire
     37	    North Carolina
     39	    Ohio
     42     Pennsylvania
     44	    Rhode Island
     45	    South Carolina
     47	    Tennessee
     50	    Vermont
     51	    Virginia
     54     West Virginia
     72	    Puerto Rico
  }
}  
\author{
Jim Pearson \email{jbpearson353@gmail.com}\cr 
Maintainer: "Joe Zou" \email{zouj@imsweb.com}
}


