cologne_shape <-
  ffm::bkg_admin_archive(level = "gem", year = "2022") |> 
  dplyr::filter(AGS == "05315000") |> 
  sf::st_transform(3035)

inhabitants_cologne <- 
  z22::z22_data("population", res = "100m", as = "raster") |> 
  terra::crop(cologne_shape) |> 
  terra::mask(cologne_shape)

citizens_cologne <- 
  z22::z22_data("citizens", res = "100m", as = "raster") |> 
  terra::crop(cologne_shape) |> 
  terra::mask(cologne_shape)

immigrants_cologne <- inhabitants_cologne - citizens_cologne

# inhabitants_cologne[is.na(inhabitants_cologne)] <- -9
# citizens_cologne[is.na(citizens_cologne)] <- -9
# immigrants_cologne[is.na(immigrants_cologne) | immigrants_cologne < 0] <- -9

terra::writeRaster(
  inhabitants_cologne, 
  "./data/inhabitants_cologne.tif",
  overwrite = TRUE
)

terra::writeRaster(
  citizens_cologne, 
  "./data/citizens_cologne.tif",
  overwrite = TRUE
)

terra::writeRaster(
  immigrants_cologne, 
  "./data/immigrants_cologne.tif",
  overwrite = TRUE
)

# other census attributes
c(
  "population", "citizens", "foreigners", "age_avg", "families", "households",
  "rent_avg", "vacancies", "inhabitant_space", "building_size"
) |> 
  purrr::walk(~{
    z22::z22_data(.x, res = "1km", as = "raster") |> 
      terra::writeRaster(
        paste0("./data/census22_", .x, ".tif"),
        overwrite = TRUE
      )
  }
  )
