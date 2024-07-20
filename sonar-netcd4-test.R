# Testing the sonarchive python app
# using R's netcdf functionality to investigate files and changes made using app.
 require(ncdf4)

 setwd("C:/Users/jchawarski/OneDrive - ASL Environmental Sciences Inc/R&D/Sonarchive")
 
test <- nc_open("23062413.nc")

attributes(test$var)
attributes(test$dim)

time <- ncvar_get(test, "Environment/time1")
tunits <- ncatt_get(test, "Environment/time1", "units")

unique(test$names)

ncvar_get(test,"Environment/channel")

print(test)

ncatt_get(test,)

nc_data <- nc_open('23062413.nc')
# Save the print(nc) dump to a text file
{
  sink('23062413.nc_metadata.txt')
  print(nc_data)
  sink()
}

ncatt_get(nc_data,0, "conventions") # add a zero to get global, or top-level attributes. 

ncvar_get(nc_data, "Sonar/Beam_group1/range_sample")

backscat_att <- ncatt_get(nc_data, "Sonar/Beam_group1/backscatter_r") 
backscat <- ncvar_get(nc_data, "Sonar/Beam_group1/backscatter_r") # results in 4 matrices, one for each channel

dim(backscat[,,1]) # dimensions of the echogram, channel 1

range <- ncatt_get(nc_data,"Sonar")


