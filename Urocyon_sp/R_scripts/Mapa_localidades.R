###########################################
##         Mapa de distribucion          ##
###########################################

## Cargar librerias
require("RgoogleMaps")

## Cargamos los datos 
geo <- read.table("../Datos/Poblaciones.csv", header=T, sep=",")

## definimos el area del mapa
area <- qbbox(lat=geo$Latitud, lon=geo$Longitud)


## Ponemos los puntos en el mapa
puntos <- cbind.data.frame(lat=geo$Latitud, lon=geo$Longitud, 
                         size="medium", color="red",labels=geo$Localidad) 

## Descargamos el mapa 
mapaGoogle <- GetMap.bbox(lonR=area$lonR, lat=area$latR, markers=puntos, maptype="terrain",
                          destfile="../Imagenes/fox_localidades.png")

PlotOnStaticMap(mapaGoogle)

## Agregamos las etiquetas de las localidades 
TextOnStaticMap(mapaGoogle, lat=geo$Latitud, lon=geo$Longitud, 
                labels=geo$ID, cex = 2, col = "black")