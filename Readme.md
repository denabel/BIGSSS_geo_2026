# Workshop "Geodata & Spatial Analysis" (June 11/12, 2026)

<p align=center>   
<a href="https://github.com/denabel/BIGSSS_geo_2026/archive/refs/heads/main.zip"><b>CLICK HERE FOR DOWNLOAD ALL COURSE MATERIALS</b></a> 
</p>

<p align=center>   
<a href="https://denabel.github.io/BIGSSS_geo_2026/"><b>CLICK HERE FOR AN UNCLUTTERED VIEW</b></a> 
</p>

Materials for the GESIS workshop "Geodata & Spatial Analysis" 

Anne-Kathrin Stroppe (anne-kathrin.stroppe@gesis.org), Dennis Abel (dennis.abel@gesis.org)

Thanks a lot to Stefan Jünger (stefan.juenger@gesis.org), who has co-authored these slides.

## Workshop Description
In recent years, many researchers have renewed interest in the spatially integrated social sciences, following the call for a 'spatial turn' among plenty of its subdisciplines. However, to process, visualize, and analyze geospatial data, social scientists must first be trained in specialized tools called Geographic Information Systems (GIS). The good news is: While this may have been an unacquainted undertaking until recently, the familiar open-source statistical language R can now serve as a full-blown GIS for many research applications.

This course will teach its participants how to exploit R to apply its geospatial techniques in a social science context. We will learn about the most common data formats, their characteristics, and their applications. Most importantly, the course will present available data sources and how to get data and process them for further analysis. These steps involve essential geospatial operations, such as cropping, aggregating, or linking data, and they are the first fundamental steps of modeling and assessing spatial interdependence. The course will be hands-on, so it also includes one of the most rewarding tasks of working with geospatial data: visualizing them through maps.

## What do you find here?
This page comprises the official workshop repository with the most recent changes to our materials. You can find all the course data, slides, and exercises here. The section below links the slides and exercises that will open them directly in the browser as HTML files. They are also stored in the folders `./slides/` and `./exercises`. You can also find all the data in the folder `./data`. They comprise the following official (Open Data) sources:

- Administrative borders of Germany (Prefix *VG250_*) are provided by the German [Federal Agency for Cartography and Geodesy](http://www.bkg.bund.de) (2018). Check out their [Open Data Portal](https://gdz.bkg.bund.de/index.php/default/open-data.html).

- The locations of e-car charging stations in Germany are retrieved from the [Bundesnetzagentur](https://www.bundesnetzagentur.de/DE/Fachthemen/ElektrizitaetundGas/E-Mobilitaet/Ladesaeulenkarte/start.html). 

- Election Results for the German Right-Wing Populist Party *AfD* in the 2021 German federal election ([Der Bundeswahlleiter, Wiesbaden 2018](https://www.bundeswahlleiter.de/bundestagswahlen/2017/ergebnisse/weitere-ergebnisse.html)).

- District attributes are from [INKAR](https://www.inkar.de/) and curated by Bundesinstitut für Bau-, Stadt- und Raumforschung (BBSR)

-   German Census 2022 data are provided by the [Federal Statistical Office Germany, Wiesbaden 2025](https://ergebnisse.zensus2022.de/)

- Shapefiles, voting data, and car-related data for Cologne are gathered from the [Open Data Portal Cologne](https://www.offenedaten-koeln.de/)

- Information about public transport stops and streets are from [OpenStreetMap](https://www.openstreetmap.org/)

- Weather data are gathered from [Climate Data Center of the German Weather Service](https://www.dwd.de/DE/klimaumwelt/cdc/cdc_node.html)

- Land use data are from the [IOER Monitor](https://www.ioer-monitor.de/)

**Please make sure that if you reuse any of the provided data to cite the original data sources.**

## Slides
### Day 1
[1 Introduction](https://denabel.github.io/BIGSSS_geo_2026/slides/1_Introduction.html)

[2 Data Formats](https://denabel.github.io/BIGSSS_geo_2026/slides/2_Data_Formats.html)

[3 Mapping](https://denabel.github.io/BIGSSS_geo_2026/slides/3_Mapping.html)

[4 Spatial Wrangling](https://denabel.github.io/BIGSSS_geo_2026/slides/4_Spatial_Wrangling.html)

### Day 2
[5 Spatial Alignment](https://denabel.github.io/BIGSSS_geo_2026/slides/5_Geocoding_Proximity_Spatial_Alignment.html)

[6 Spatial Analysis](https://denabel.github.io/BIGSSS_geo_2026/slides/6_Spatial_Analysis.html)

[7 Spatial Econometrics & Outlook](https://denabel.github.io/BIGSSS_geo_2026/slides/7_Spatial_Econometrics_Outlook.html)

## Exercises
[1 Package Installation](https://denabel.github.io/BIGSSS_geo_2026/exercises/1_Package_Installation.html)

[2_1 Import Vector Data](https://denabel.github.io/BIGSSS_geo_2026/exercises/2_1_Import_Vector_Data.html)

[2_2 Basic Raster Operations](https://denabel.github.io/BIGSSS_geo_2026/exercises/2_2_Basic_Raster_Operations.html)

[3_1 Mapping](https://denabel.github.io/BIGSSS_geo_2026/exercises/3_1_Mapping.html)

[3_2 Fun with Maps](https://denabel.github.io/BIGSSS_geo_2026/exercises/3_2_Fun_with_Maps.html)

[4_1 OSM Data](https://denabel.github.io/BIGSSS_geo_2026/exercises/4_1_OSM_Data.html)

[4_2 Subsetting and Linking](https://denabel.github.io/BIGSSS_geo_2026/exercises/4_2_Subsetting_Linking.html)

[5_1 Geocoding Proximity](https://denabel.github.io/BIGSSS_geo_2026/exercises/5_1_Geocoding_Proximity.html)

[6 Neighborhood Matrices](https://denabel.github.io/BIGSSS_geo_2026/exercises/6_Neighborhood_Matrices.html)

[7 Spatial Regression](https://denabel.github.io/BIGSSS_geo_2026/exercises/7_Spatial_Regression.html)
