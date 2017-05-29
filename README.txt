README

Análisis genético del complejo de especies Urocyon littoralis, los datos se obtuvieron de 
Funk et. al., 2016 para seis poblaciones de zorras isleñas (Urocyon littoralis) y una de 
zorras grises (Urocyon cinereoargenteus)

ID de las poblaciones analisadas 
	- gray = zorras grises del sur de California (continente) 
	- smi = zorras isleñas de la Isla San Miguel 
	- sri = zorras isleñas de la Isla Santa Rosa 
	- sci = zorras isleñas de la Isla Santa Cruz
	- sca = zorras isleñas de la Isla Santa Catalina
	- scl = zorras isleñas de la Isla San Clemente
	- sni = zorras isleñas de la Isla San Nicolas


Directorio de Urocyon_sp: 

	Data: 
		Poblaciones.csv --------> Archivo con la relación de la localidad con su 
		código, número de individuos colectados, especie, y coordenadas geográficas 
		en formato decimal 
		
		fox_GP1.gen ------------> Base de datos de los SNPs en formato genepop para 
		las 6 poblaciones de zorras insulares y la población de zorras grises. Con 
		un total de 188 individuos distribuidos de la siguiente manera: 
			- gray = 16 individuos 
			- smi =  21 individuos
			- sri =  23 individuos
			- sci = 24 individuos 
			- sca = 43 individuos
			- scl = 17 individuos
			- sni = 44 individuos

		fox_islas_GP.gen ------------> Base de datos de los SNPs en formato genepop 
		para las 6 poblaciones de zorras insulares sin incluir a la población de zorras 
		grises. Con un total de 172 individuos distribuidos de la siguiente manera: 			 
			- smi =  21 individuos
			- sri =  23 individuos
			- sci = 24 individuos 
			- sca = 43 individuos
			- scl = 17 individuos
			- sni = 44 individuos


	Imagenes:
		fox_DAPC.png ------------> Imagen del análisis de componentes principales con 
		discriminantes en el que se incluyeron las 6 poblaciones de zorras insulares 
		y la población de zorras grises 

		fox_localidades.png ----> Mapa donde se señalan las localidades dde colecta para 
		las seis poblaciones de zorras insulares y la población de zorras grises


	R_scripts:
		Estadisticos_basicos.R -> Script para poder obtener Ho y He para las seis 
		poblaciones de zorras insulares y la poblacion de zorras grises, los estadísticos 
		F globales solo para las seis poblaciones de zorras insulares, y las FST pareadas 
		para las seis poblaciones de zorras insulares y la poblacion de zorras grises 
		
		Mapa_localidades.R -----> Script para hacer el mapa de distribución de las localidades 
		de colecta de las seis poblaciones de zorras insulares y la poblacion de zorras grises
		
		DAPC.R ------------------> Script para hacer el análisis de componentes principales con 
		dsicriminantes para las seis poblaciones de zorras insulares y la poblacion de zorras grises
		
		
