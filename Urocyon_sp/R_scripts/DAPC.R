###########################################
##  Analisis de componentes princiales   ##
###########################################

library(adegenet)

# Cargamos los datos
sec<-read.genepop("../Datos/fox_GP1.gen", ncode=2L)

#Calculamos componentes principales 
discriDePca<-dapc (sec)
	# Estos son los valores que yo escogi para hacer la prueba
    	#Choose the number PCs to retain (>=1): "50"
    	#Choose the number discriminant functions to retain (>=1): "2"
scatter (discriDePca)

### buscamos la optimización en el número de componentes a utilizar
optim.a.score (discriDePca)
    #Optimo = "9"

### Recalculamos 
discriDePca<-dapc (sec, n.pca = 9, n.da = 2)
scatter (discriDePca)
