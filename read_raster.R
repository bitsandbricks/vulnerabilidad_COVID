url <- "https://data.humdata.org/dataset/58c3ac3f-febd-4222-8969-59c0fe0e7a0d/resource/e2d1f034-cc0c-44e0-baac-f261f50679f0/download/population_ecu_2018-10-01.zip"

zipfile <- tempfile()
download.file(url, zipfile)
filename <- unzip(zipfile, list = TRUE)$Name[1]
unzip(zipfile, files = filename, exdir = tempdir())

densidad <- read_stars(paste0(tempdir(), "/", filename))

unlink(temp)