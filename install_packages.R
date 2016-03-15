
# Run this file to install packages in the required_packages
# list. Will do the right thing if not present.

required_packages <- c(
    "data.table", 
    "leaflet", 
    "DT",
    "dplyr"
)

install_package_if_necessary <- function(package) {
    if (!require(package, character.only = TRUE)) {
        install.packages(package, dep = TRUE)
    }
}

install_required_packages <- function(required_packages) {
    lapply(required_packages, install_package_if_necessary)
}

invisible(install_required_packages(required_packages))