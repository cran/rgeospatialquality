## ----loading, echo=FALSE-------------------------------------------------
library(rgeospatialquality)

## ----rgbif_extraction----------------------------------------------------
if(requireNamespace("rgbif", quietly = TRUE)){
    library(rgbif)
    
    d <- occ_data(
        scientificName="Apis mellifera",
        limit=50,
        minimal=FALSE
    )
}

## ----rgbif_parsing-------------------------------------------------------
if(requireNamespace("rgbif", quietly = TRUE)){
    d <- d$data
    str(d)
}

## ----rgbif_format--------------------------------------------------------
if(requireNamespace("rgbif", quietly = TRUE)){
    "decimalLatitude" %in% names(d)
    "decimalLongitude" %in% names(d)
    "countryCode" %in% names(d)
    "scientificName" %in% names(d)
}

## ----api_call------------------------------------------------------------
if(requireNamespace("rgbif", quietly = TRUE)){
    dd <- add_flags(d)
    str(dd)
    dd[1,]$flags  # Flags for the first record
}

