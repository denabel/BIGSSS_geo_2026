# Run this script ONCE before the workshop to create pre-computed data files.
# Run it from the project root: BIGSSS_geo_2026/
# Requires internet access. Takes ~10-20 minutes for 537 hospitals.

library(tidygeocoder)
library(readr)
library(sf)
library(dplyr)
library(osrm)

# --- 1. Geocode NRW hospitals ---
hospitals_nrw <- readr::read_csv("./data/hospitals_nrw.csv",
                                  show_col_types = FALSE)


hospitals_geocoded <- hospitals_nrw |>
  tidygeocoder::geocode(
    address = address,
    method  = "osm",
    verbose = FALSE
  )

hospitals_sf <- hospitals_geocoded |>
  dplyr::filter(!is.na(long)) |>
  sf::st_as_sf(coords = c("long", "lat"), crs = 4326) |>
  sf::st_transform(3035)

saveRDS(hospitals_sf, "./data/hospitals_nrw_geocoded.rds")

# --- 2. Compute isochrones around a Cologne hospital ---

cologne_hospital <- hospitals_sf |>
  dplyr::filter(ort == "Koeln" | grepl("ln$", ort)) |>
  head(1) |>
  sf::st_transform(4326)

iso <- osrm::osrmIsochrone(
  loc    = cologne_hospital,
  breaks = c(15, 30),
  n    = 500
)

saveRDS(iso, "./data/isochrones_cologne_hospital.rds")
