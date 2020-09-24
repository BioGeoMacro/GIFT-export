
env_raster <- function(){
  require(jsonlite)
  require(dplyr)
  # Return the miscellaneous environmental information
  return(
    read_json(paste0(
      "http://",credentials[[1]], ":",credentials[[2]],
      "@gift.uni-goettingen.de/api/extended/index.php?query=env_raster"), simplifyVector = TRUE))
 
  # Making internal reference function 
}

