#SE PERMITE INVESITGAR POR FUERA DE LOS MATERIALES DE SER NECESARIO
#AL FINALIZAR LA CLASE ENVIEN UNA COPIA POR GRUPO A emilio.leon@bue.edu.ar


#Notas
#Exploración de datasets. Si bien los ejemplos de esta sección estan sobre datasets integrados, es posible hacerlos sobre datasets en CSV.

#Esta guia es un primer contacto a exploración y manipulación de datos. En la proxima guia entraremos en detalle en esto.

#Para visualizar los datasets, dependiendo de que queremos ver, tenemos las siguientes opciones:

datasets::mtcars
print(mtcars)
mtcars

#Para ver resúmenes
?mtcars
summary(mtcars)

#Para explorar las dimensiones del dataset
# use dim() to get dimension of dataset
dim(mtcars) #datos planos

#Si lo quiero presentar mejor uso cat() para indicar que es, guardarlo como texto, 
cat("Dimension:",dim(mtcars))


#Para ver especificamente la cantidad de registros (filas):
nrow(mtcars)

#Para ver especificamente la cantidad de registros (columnas):
ncol(mtcars)

#para ver los nombres de variables (headers de columnas)
names(mtcars)

#Podemos ver, sin usar un vector, los detalles de una variable del dataset
print(mtcars$cyl)
#ó
mtcars$cyl

#adicionalmente podemos ordenar variables con sort()
sort(mtcars$cyl) #como esta en el dataset
sort(mtcars$cyl, decreasing=FALSE) #específicamente incremental
sort(mtcars$cyl, decreasing=TRUE) #ordenado decreciente

#Como recordatorio de guías anteriores - Como leer datos de un csv en un dataframe:
archivoleido = read.csv('/ruta/archivo.csv')

#IMPORTANTE: Puedo aplicar cualquier función estadística y matemática a los datos que traiga del csv o dataframe con el que trabaje. Ver funciones en guías previas.

#Puedo limitar las variables que leo desde un dataset (o csv), con subset():
autosV8 <- subset(mtcars, cyl == 8) # me trae todos los autos con 8 cilindros
print(autosV8)

#Esto es bastante útil para acceder a un grupo particular de datos.


#ahora para escribir la información en un nuevo CSV:

# Creando un dataframe
Mosqueteros <- data.frame (
  Nombre = c("Athos", "Porthos", "Aramis"),
  Edad = c(32, 34, 37),
  Ocupacion = c("Mosquetero", "Mosquetero", "Mosquetero"))

# generando el archivo desde el dataframe
write.csv(Mosqueteros, "mosqueteros.csv")

#alternativamente, generando un archivo desde el resumen de un dataset existente
datosautosV8 <- subset(mtcars, cyl == 8)
write.csv(datosautosV8, "AutosV8.csv")

#ó, en forma directa:
write.csv (subset(mtcars, cyl == 8),"AutosV8v2.csv")

#Esto es útil por dos motivos, permite generar reportes y salidas para usar en otros sistemas, y ademas permite generar un CSV para usar en otro proceso o proyecto. 

#Tambien se puede leer y escribir en formato excel, pero requerimos otra libreria. No se va a usar en esta guia pero si quieren verlo:
install.packages("xlsx")
library("xlsx")
#Leer, donde el sheet es la planilla de excel dentro del archivo
datasetnombre <- read.xlsx('/ruta/archivo.csv', sheetIndex = 1)
#Y para escribir: 
write.xlsx(datasetnombre, "archivo.xlsx")
#hay mas cosas que se pueden hacer, pero de momento dejemos excel por aca.

#para ver los nombres de filas
autos<- c(row.names(mtcars))
print(autos)
#alternativamente, si quisiera solo los que tienen 6 cilindros
autosV6<-row.names(mtcars[mtcars$cyl == 6,])
print(autosV6)
