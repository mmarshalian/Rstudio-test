# Playing with Data
#
#
# packages neeedd

# remove.packages("remotes")

packages = c("remotes")

packages.check <- lapply(
  packages, 
  FUN = function(x) {
    if (!require(x, character.only = TRUE)) {
      install.packages(x, dependencies = TRUE)
      library(x, character.only = TRUE)
    }
  }
)

