###########################################
##         Estadisticos basicos          ##
###########################################

## Cargar las librerias 
library(adegenet)
library(hierfstat)

## Cargar el archivo en formato genind
sec<-read.genepop("../Datos/fox_GP1.gen", ncode=2L)

## Seccionar por poblaciones 
sec.pop<-seppop(sec)
summary(sec.pop) #Solo para seccionara correctamente

## Obtencion de estadisticos F globales
fstat(sec)


## Obtencion de estadisticos F por poblacion 
pairwise.fst(sec)


## Obtencion de He por poblacion
He_grey <- Hs(sec.pop[[1]]) 
He_smi <- Hs(sec.pop[[2]]) 
He_sri <- Hs(sec.pop[[3]]) 
He_sci <- Hs(sec.pop[[4]]) 
He_sca <- Hs(sec.pop[[5]]) 
He_scl <- Hs(sec.pop[[6]]) 
He_sni <- Hs(sec.pop[[7]]) 

## Obtencion de Ho por pablacion
  # 1) Crear un objeto por cada poblacion que contenga las Ho para cada marcador
H1 <- summary(sec.pop[[1]]) 
H2 <- summary(sec.pop[[2]])
H3 <- summary(sec.pop[[3]])
H4 <- summary(sec.pop[[4]])
H5 <- summary(sec.pop[[5]])
H6 <- summary(sec.pop[[6]])
H7 <- summary(sec.pop[[7]])

  # 2) Promedio de Ho es la Ho poblacional
Ho1 <- sum(H1$Hobs)/length(H1$Hobs) 
Ho2 <- sum(H2$Hobs)/length(H2$Hobs) 
Ho3 <- sum(H3$Hobs)/length(H3$Hobs) 
Ho4 <- sum(H4$Hobs)/length(H4$Hobs) 
Ho5 <- sum(H5$Hobs)/length(H5$Hobs) 
Ho6 <- sum(H6$Hobs)/length(H6$Hobs) 
Ho7 <- sum(H7$Hobs)/length(H7$Hobs) 



