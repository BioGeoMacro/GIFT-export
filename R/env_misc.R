
env_misc <- function(){
  require(jsonlite)
  # Return the miscellaneous environmental information
  return(
    read_json(paste0(
      "http://",credentials[[1]], ":",credentials[[2]],
      "@gift.uni-goettingen.de/api/extended/index.php?query=env_misc")))
  
}

