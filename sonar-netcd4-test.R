# Testing the sonarchive python app
# using R's netcdf functionality to investigate files and changes made using app.
 require(ncdf4)

 setwd("C:/Users/jchawarski/OneDrive - ASL Environmental Sciences Inc/R&D/Sonarchive")
 
test <- nc_open("Practice Data/17080611.nc")

attributes(test$var)
attributes(test$dim)

time <- ncvar_get(test, "Environment/time1")
tunits <- ncatt_get(test, "Environment/time1", "units")
