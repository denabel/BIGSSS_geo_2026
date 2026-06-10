course_content <-
  tibble::tribble(
    ~Day, ~Time, ~Title,
    "June 11", "10:00-11:30", "Introduction",
    "June 11", "11:30-11:45", "Coffee Break",
    "June 11", "11:45-13:00", "Data Formats",
    "June 11", "13:00-14:00", "Lunch Break",
    "June 11", "14:00-15:30", "Mapping",
    "June 11", "15:30-15:45", "Coffee Break",
    "June 11", "15:45-17:00", "Spatial Wrangling",
    "June 12", "10:00-11:30", "Spatial Wrangling",
    "June 12", "11:30-11:45", "Coffee Break",
    "June 12", "11:45-13:00", "Geocoding, Proximity & Spatial Alignment",
    "June 12", "13:00-14:00", "Lunch Break",
    "June 12", "14:00-15:30", "Spatial Analysis",
    "June 12", "15:30-15:45", "Coffee Break",
    "June 12", "15:45-17:00", "Spatial Econometrics & Outlook"
  ) |>
  knitr::kable() |>
  kableExtra::kable_styling() |>
  kableExtra::column_spec(1, color = "gray") |>
  kableExtra::column_spec(2, color = "gray") |>
  kableExtra::column_spec(3, bold = TRUE) |>
  kableExtra::row_spec(2, color = "gray") |>
  kableExtra::row_spec(4, color = "gray") |>
  kableExtra::row_spec(6, color = "gray") |>
  kableExtra::row_spec(9, color = "gray") |>
  kableExtra::row_spec(11, color = "gray") |>
  kableExtra::row_spec(13, color = "gray") |>
  kableExtra::row_spec(7, extra_css = "border-bottom: 1px solid")
