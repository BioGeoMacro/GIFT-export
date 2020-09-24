
env_misc <- function(){
  # Return the miscellaneous environmental information
  return(
    paste0(
      "http://",credentials[[1]], ":",credentials[[2]],
      "@gift.uni-goettingen.de/api/extended/index.php?query=env_misc&traitid=",
      misc_variable[i]))

}

