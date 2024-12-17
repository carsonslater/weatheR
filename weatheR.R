# -------------------------------------------------------------------------
#
# Carson Slater
# Date Created: 12.16.2024
# 
# Description: This is an R script with a function that can print the weather
# in the console when ran.
#
# Check out https://github.com/chubin/wttr.in for more info on `wttr.in`
# 
# -------------------------------------------------------------------------


# Dependencies ------------------------------------------------------------

library("curl")

# Function ----------------------------------------------------------------


weather <- function(place = "Waco,TX") {
  
  stopifnot(is.character(place))
  
  if (curl::has_internet()) {
  
    paste0('curl -s "http://wttr.in/', place,'?T" | head -7') |> 
      system()
    
  } else {
    
    stop("weather() needs an internet connection to work.")
    
  }
}







