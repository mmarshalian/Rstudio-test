

# Check if packages are installed:

packages = c("remotes")

package.check <- lapply(
	packages,
	FUN = function(x) {
		if (!require(x, character.only = TRUE)) {
			install.packages(x, dependencies = TRUE)
			library(x, character.only = TRUE)
		}
	}
)

remotes::install_github("teamookla/ooklaOpenDataR")
