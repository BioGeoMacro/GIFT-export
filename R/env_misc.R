
env_misc <- function(){
  require(jsonlite)

  # Return the miscellaneous environmental information as a data frame
  tmp <- read_json(paste0(
    "http://",credentials[[1]], ":",credentials[[2]],
    "@gift.uni-goettingen.de/api/extended/index.php?query=env_misc"),
    simplifyVector = TRUE)
  
  # Extract Citavi number from each list element
  tmp$citavi_ID <- gsub("^.*\\#", "", tmp$citavi_ID)
  tmp$citavi_ID <- substr(tmp$citavi_ID, 1, (nchar(tmp$citavi_ID)-1))
  
  return(tmp)
}

