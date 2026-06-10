# Run this script ONCE before the workshop to create pre-computed data file.
# Run it from the project root: BIGSSS_geo_2026/

library(tidygeocoder)
library(readr)
library(sf)
library(dplyr)
library(osrm)

# --- 1. Geocode Cologne hospitals ---

hospitals_cologne <- readxl::read_excel("data/krankenhausverzeichnis.xlsx", sheet = 5, skip = 2, col_names=TRUE) |> 
  dplyr::select(1:2,4:9) |>
  setNames(c("land", "kreis", "name", "zusatz", "strasse", "hausnr", "plz", "ort")) |> 
  dplyr::mutate(address = paste(strasse, hausnr, plz, ort, "Germany"))   |> 
  dplyr::filter(grepl("K.ln", ort, ignore.case = TRUE)) 

hospitals_geocoded <- hospitals_cologne |>
  tidygeocoder::geocode(
    address = address,   # "Brückenstr. 45 50996 Köln Germany"
    method  = "osm"
  )

hospitals_sf <- hospitals_geocoded |>
  dplyr::filter(!is.na(long)) |>
  sf::st_as_sf(coords = c("long", "lat"), crs = 4326) |>
  sf::st_transform(3035)

# --- 2. Compute isochrones around a Cologne hospital ---

cologne_hospital <- hospitals_sf |>
  head(1)

iso <- osrm::osrmIsochrone(
  loc    = cologne_hospital,
  breaks = c(15, 30),
  n    = 500
)

saveRDS(iso, "./data/isochrones_cologne_hospital.rds")
