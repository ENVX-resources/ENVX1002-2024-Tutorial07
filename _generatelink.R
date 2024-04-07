# Use this script to generate your address for GitHub

# What is the github user name?
github_user <- "ENVX-resources"

# extract repository name from the current working directory
repo_name <- basename(getwd())
rmd_file <- list.files(recursive = TRUE, pattern = "\\.Rmd$")
# extract the path to the Rmd file by detecting it
if (length(rmd_file) == 0) {
  stop("No Rmd file found in the current directory or subdirectories")
} else if (length(rmd_file) > 1) {
  # more than one Rmd file found, stop and state only one should be present
  stop("More than one Rmd file found in the current directory, please keep only one Rmd file")
}

# generate path to mybinder.org
mybinder_path <- paste0("https://mybinder.org/v2/gh/", github_user, "/", repo_name, "/main?urlpath=shiny/", rmd_file)
mybinder_path
