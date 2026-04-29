# =============================================================================
# install_packages.R
# 
# Content:  Package Installation for Introduction to Geospatial Techniques for 
#           Social Scientists in R  2026
# 
# Version:  Apr 20 2026
# =============================================================================

# --- Task ---------------------------------------------------------------------
# Please run this script in full before the course starts.
# If a package fails to install, note the error message and contact us.
# =============================================================================



# --- Notes on System Dependencies ---------------------------------------------
# Some packages require additional software installed on your system:
#
# - OpenStreetMap : requires Java (install JDK and set JAVA_HOME)
# - gganimate     : requires 'gifski' or 'av'; for video output install ffmpeg
#                   install.packages("gifski")  # for GIF output
# - terra / sf    : these packages depend on C++ libraries (GDAL, GEOS, PROJ).
#                   On Windows, CRAN ships pre-compiled binaries that bundle
#                   those libraries, so no extra software is needed.
#                   On macOS/Linux you may need to install them via Homebrew or
#                   your system package manager.
# =============================================================================


# --- CRAN Packages ------------------------------------------------------------

# We use the easypackages package to install and load 
if (!requireNamespace("easypackages", quietly = TRUE)) install.packages("easypackages")
library(easypackages)


# Geospatial core
easypackages::packages(
  "sf",             # Simple Features: vector data
  "terra",          # Raster data (modern replacement for raster)
  "tmap",           # Thematic maps
  "tmaptools",      # Helper tools for tmap
  "ggspatial",      # Spatial layers for ggplot2 (scale bar, north arrow)
  "tidyterra",      # tidyverse integration for terra
  "osmdata",        # Download OpenStreetMap data
  "OpenStreetMap",  # Render OSM tiles as background maps
  "tidygeocoder",   # Geocoding via public APIs
  "exactextractr"   # Fast raster extraction for polygons
)

# Spatial statistics
easypackages::packages(
  "spdep",          # Spatial dependence (weights, autocorrelation tests)
  "sfdep",          # tidyverse-compatible interface to spdep
  "spatialreg",     # Spatial regression models
  "spatstat"        # Spatial point pattern analysis
)

# Data manipulation
easypackages::packages(
  "dplyr",          # Data wrangling
  "tidyr",          # Data tidying
  "tibble",         # Modern data frames
  "readr",          # Fast data import
  "purrr",          # Functional programming
  "magrittr",       # Pipe operators
  "glue",           # String interpolation
  "stringr",        # String manipulation
  "units"           # Physical units for numeric vectors
)

# Visualization
easypackages::packages(
  "ggplot2",        # Grammar of graphics
  "cowplot",        # Plot composition and alignment
  "colorBlindness", # Color-blind-friendly palettes
  "gganimate",      # Animated ggplot2 maps and plots
  "leaflet",        # Interactive web maps
  "mapview",        # Quick interactive spatial data viewing
  "patchwork"       # Combine multiple ggplot2 plots
)




# --- Non-CRAN Packages --------------------------------------------------------
# These packages are hosted on GitHub or GESIS GitLab.
# Install 'pak' first if not already available.

if (!requireNamespace("pak", quietly = TRUE)) install.packages("pak")

pak::pkg_install(c(
  "StefanJuenger/bkggeocoder",                          # Offline geocoding (BKG), developed at GESIS
  "StefanJuenger/z11",                                  # German Census 2011 grid data
  "jslth/z22",                                          # German Census 2022 grid data
  "jslth/ffm",                                          # BKG administrative boundaries archive
  "git::https://git.gesis.org/sora-service/sora.git"    # GESIS survey data access 
))




