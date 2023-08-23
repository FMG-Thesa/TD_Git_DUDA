# Installer les bibliothèques R avec des versions spécifiques
install_packages <- function(packages) {
  for (package in packages) {
    if (!requireNamespace(package, quietly = TRUE)) {
      install.packages(package, dependencies = TRUE)
    }
  }
}

# Liste des bibliothèques à installer avec des versions spécifiques
packages_to_install <- c(
  "ggplot2" = "3.3.5",
  "dplyr" = "1.0.7",
  "veritis" = "0.1.0"
)

# Installer les bibliothèques avec des versions spécifiques
install_packages(names(packages_to_install))

# Installer les versions spécifiques
install.packages("https://cran.r-project.org/src/contrib/Archive/veritis/veritis_0.1.0.tar.gz", repos = NULL, type = "source")
