library(dplyr)
library(sf)
library(mapme.biodiversity)
library(wdpar)

# Downloading Protected areas from Madagascar
PA_mada <- wdpa_fetch("Madagascar", wait = TRUE,
                              download_dir = "data_s3/WDPA") %>%
  filter(STATUS != "Proposed") %>%
  filter(DESIG != "Locally Managed Marine Area", DESIG != "Marine Park") 

# Discard points and cast multipolygons as polygons
PA_poly <- PA_mada %>%
  filter(st_geometry_type(.) == "MULTIPOLYGON") %>%
  st_cast("POLYGON")

# Create portfolio
PA_poly <- init_portfolio(x = PA_poly, 
                                  years = 2000:2020,
                                  outdir = "data_s3/mapme",
                                  cores = 1,
                                  add_resources = TRUE,
                                  verbose = TRUE)
# Get GFW data
PA_poly <- get_resources(x = PA_poly, 
                             resources = c("gfw_treecover", "gfw_lossyear", 
                                           "gfw_emissions"))
# Compute indicators
PApoly <- calc_indicators(x = PA_poly,
                          indicators = "treecover_area_and_emissions", 
                          min_cover = 10, min_size = 1)
