# Une série de morceaux de codes utilisés ponctuellement pour organiser les
# fichiers

# Synchronisation du stockage local avec le datalake (S3)
aws.s3::s3sync(path = "data_s3",
               bucket = "fbedecarrats",
               prefix = "diffusion/deforestation_madagascar/data_s3/",
               create = FALSE,
               region = "",
               verbose = FALSE)


# Actualise les indexs
outdir = "data_s3/mapme"
resource <- "gfw_treecover"
rundir <- paste(outdir, resource, sep = "/")
tindex_file <- file.path(rundir, paste0("tileindex_", resource, ".gpkg"))

downloaded_files <- list.files(rundir, full.names = TRUE)
footprints <- lapply(downloaded_files, function(file) {
  tmp <- rast(file)
  footprint <- st_as_sf(st_as_sfc(st_bbox(tmp)))
  st_geometry(footprint) <- "geom"
  footprint$location <- sources(tmp)
  footprint
})
footprints <- do.call(rbind, footprints)
write_sf(footprints, dsn = tindex_file)













