**Análisis genético del complejo de especies _Urocyon littoralis_**

####*Carmina Martínez Gonzalez*####

**Resumen**

En este proyecto se utilizaron los datos de Funk *et al.* 2016 para analizar la diversidad  genética y estructuración de las seis subespecies de *Urocyon littoralis*, utilizando a su especie hermana la zorra gris (*Urocyon cinereoargenteus*) como grupo externo. Los datos se analizaron mediante el uso de distintas librerías de R. Se encontró que la diversidad genética de las poblaciones es baja, y presenten una alta estructuración genética entre ellas, tan alta que podrían llegar a ser consideradas como especies diferentes.

**Diversidad Genética**

Con el uso de la librería de R *adegenet* se calculó la heterocigosis observada (H~O~) y esperada (H~E~) de las zorras insulares (*Urocyon littoralis*), y se comparó con la diversidad genética de su especie hermana, la zorra gris (*Urocyon cinereoargenteus*) **(Cuadro 1)**.

**Cuadro 1.** Heterocigosis observada (H~O~) y heterocigosis esperada (H~E~) para las poblaciones de zorras insulares y su especie hermana.

| **Población** |  **H~O~** |  **H~E~** |
|--------|--------|--------|
|Grey| 0.239|0.261|
| Smi | 0.060 | 0.251 |
| Sri | 0.147 | 0.112 |
| Sci | 0.114 | 0.064 |
| Sca | 0.232 | 0.058 |
| Scl | 0.065 | 0.011 |
| Sni | 0.016 | 0.148 |

Podemos ver que la diversidad genética de las zorras insulares es mucho menor que la de las zorras grises, exceptuando por la población de la isla Santa Catalina cuya diversidad genética es casi tan alta como la de las zorras grises.

Esta diferencia en la diversidad genética de Santa Catalina con la del resto de las islas, podría deberse al hecho de que Santa Catalina es la isla más grande, además de que a diferencia de las otras poblaciones, la población de Santa Catalina no ha pasado por algún cuello de botella reciente (Funk *et al*., 2016).

Estructura Genética

Con el uso de las librerías de R *adegenet* y *hierfstat* se calcularon las F~ST~ globales de las zorras insulares sin incluir a las zorras grises. Se encontró que las poblaciones presentan una alta estructuración genética (**F~ST~ =  0.742**), con endogamia (**F~IT~ = 0.752**), pero los individuos dentro de las poblaciones no parecen tener un exceso de endogamia (**F~IS~ = 0.038**)

Para la obtención de las F~ST~ pareadas se utilizaron también las librerías de R *adegenet* y *hierfstat*, para este análisis si se incluyeron tanto a las poblaciones de zorras insulares como las de zorras grises **(Cuadro 2)**.

**Cuadro 2.** Resultados de la F~ST~ pareada para las poblaciones de zorras insulares y la de zorra gris.

|--------| **Grey** | **Smi** | **Sri** | **Sci** | **Sca** | **Scl** |
|--------|--------|--------|--------|--------|--------|
| **Smi** |0.524|
| **Sri** |0.402|0.373|
| **Sci** | 0.438|0.624|0.398|
|**Sca** | 0.254|0.471|0.382|0.348|
|**Scl** | 0.490|0.775|0.598|0.628|0.260|
|**Sni** |0.624|0.900|0.795|0.826|0.423|0.770|

Podemos observar que entre todas las poblaciones existe una muy marcada estructura genética, siendo de las más altas la que hay entre Isla San Nicolás con el resto de las islas. Esto probablemente se deba a que Isla San Nicolás es de las islas más pequeñas y de las más alejadas, además que Funk *et al* (2016)  reportan que la densidad de esta población es menor a las otras ** (Figura 1)**.

![](https://github.com/MinaMaglez/Trabajo_Final_Bioinfo/blob/master/Urocyon_sp/Imagenes/fox_localidades.png)
**Figura 1**. Mapa de localidades en las que se obtuvieron las muestras analizadas.

Para hacer el Análisis de componentes principales con discriminantes (DAPC) se utilizó la librería de R *adegenet*. Para este análisis también incluimos tanto a las zorras insulares como a las zorras grises **(Figura 2)**.

![](https://github.com/MinaMaglez/Trabajo_Final_Bioinfo/blob/master/Urocyon_sp/Imagenes/fox_DAPC.png)
**Figura 2**. DAPC de las 6 poblaciones de zorras insulares y la población de zorras grises.

En el DACP podemos observar que los resultados no son del todo congruentes con los obtenidos por el análisis de las F~ST~ pareadas. Aunque obtuvimos que en efecto existe una clara estructuración genética de las poblaciones, en esta ocasión la población más separada de las demás fue la de zorras grises, y la población de Isla San Nicolás está muy cercana a la población de Isla Santa Catalina. 

Tiene mucho sentido que la población más alejada de todas sea la de zorras grises, ya que esta es una especie distinta que solo fue usada como grupo externo. Pero la estructura entre las poblaciones insulares es muy distinta a lo esperado al ver el análisis de las F~ST~ pareadas y al compararlo con el obtenido por Funk *et al* (2016). Esta diferencia en el DACP que se obtuvo en este análisis probablemente se deba al uso del número componentes que se estableció en el análisis, aun cuando se utilizó la fórmula para optimizarlos. 

**Bibliografía**

- Funk WC, Lovich RE, Hohenlohe PA, Hofman CA, Morrison SA, Sillett TS, Ghalambor CK, Maldonado JE, Rick TC, Day MD, Polato NR, Fitzpatrick SW, Coonan TJ, Crooks KR, Dillon A, Garcelon DK, King JL, Boser CL, Gould N, Andelt WF (2016) Adaptive divergence despite strong genetic drift: genomic analysis of the evolutionary mechanisms causing genetic differentiation in the island fox (Urocyon littoralis). Molecular Ecology 25(10): 2176-2194.

- Funk WC, Lovich RE, Hohenlohe PA, Hofman CA, Morrison SA, Sillett TS, Ghalambor CK, Maldonado JE, Rick TC, Day MD, Polato NR, Fizpatrick SW, Coonan TJ, Crooks KR, Dillon A, Garcelon DK, King JL, Boser CL, Gould N, Andelt WF (2016) Data from: Adaptive divergence despite strong genetic drift: genomic analysis of the evolutionary mechanisms causing genetic differentiation in the island fox (Urocyon littoralis). Dryad Digital Repository.


