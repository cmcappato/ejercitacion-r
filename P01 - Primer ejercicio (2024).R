#Ejercicios
#  ---------------------------------------
# Verificamos si funciona R:

# Crear un hola mundo
# Crear una suma de dos variables en forma directa y con variables
# Crear una resta de dos variables en forma directa y con variables
# Calcular la potencia en forma directa y con variables
# Plotear un conjunto de datos

#Ejercicios iniciales

#1 - Escriba un programa de R para tomar la entrada del usuario (nombre y edad) y mostrar los valores.

NombreUsuario <- readline(prompt = "Ingresa tu nombre: ")
EdadUsuario <- readline(prompt = "Ingresa tu edad: ")
print(paste("Mi nombre es", NombreUsuario, "y tengo", EdadUsuario, "años"))

#2 - Escriba un programa de R para obtener los detalles de los objetos en memoria. Hacerlo con un vector, variables y finalmente con un set de datos integrados.

NombreYEdadVector <- c(NombreUsuario, EdadUsuario)
print(NombreYEdadVector)

print(NombreUsuario)
print(EdadUsuario)

NombreYEdadDF <- data.frame(Nombre = NombreUsuario,
                            Edad = EdadUsuario)
print(NombreYEdadDF)

#3 - Escribe un programa R para crear una secuencia de números del 10 al 50 y encuentra la media de los números del 20 al 60 y la suma de los números del 51 al 91.

Secuencia1 = c(10:50)
print("Secuencia de números del 10 al 50:")
print(Secuencia1)

Secuencia2 <- c(20:60)
MediaSecuencia2 <- median(Secuencia2)
print(MediaSecuencia2)

Secuencia3 <- c(51:91)
SumaSecuencia3 <- sum(Secuencia3)
print(SumaSecuencia3)

#4 - Escribe un programa de R para crear un vector que contenga 10 valores enteros aleatorios entre -10 y +10.

VectorEnterosAleatorios <- sample(-10:10, 10, replace = FALSE) #el parámetro replace sirve para indicar si quiero que los valores sigan estando dentro del vector, o si se los quita, es decir, que se los pueda volver a elegir

#5 - Escribe un programa para imprimir únicamente los diez primeros vehículos del dataset de mtcars. Adicionalmente, que liste aparte las 5 primeras cilindradas, y que me diga la cilindrada más común.

DiezPrimerosAutos <- head(mtcars, 10)
print(DiezPrimerosAutos)

install.packages('DescTools') # Instalo el paquete para poder hacer uso de la función Mode, ya que no existe en R por defecto

CincoPrimerasCilindradas <- c(head(mtcars$cyl, 5))
CilindradaMasComun <- Mode(CincoPrimerasCilindradas) # Ésta función Mode esta dentro del paquete DescTools
print(CilindradaMasComun)

#6 - Cual es el promedio de cilindrada de los vehículos en mtcars?

Cilindradas <- c(mtcars$cyl)
PromCilindradas <- mean(Cilindradas)
print(PromCilindradas)

#7 -Escribe un programa para guardar todos los hp de los vehículos de mtcars en un vector, calcular moda, media y mediana, e imprimir la información. Luego, ordenar los datos y mostrar los 10 superiores

HpVehiculos <- c(mtcars$hp) 

MediaHpAuto <- mean(HpVehiculos)
MedianaHpAuto <- median(HpVehiculos)
ModaHpAuto <- Mode(HpVehiculos)

print(paste("Media:", MediaHpAuto, "Mediana:", MedianaHpAuto, "Moda:", ModaHpAuto)) # Este print muestra 3 resultados ya que hay 3 valores que son populares dentro del dataset

#8 (INVESTIGAR) Escribe un programa que contenga 3 vectores con 5 números al azar, luego, unir los tres vectores en una matriz, finalmente que muestre el contenido de la matriz, en cada ejecución la matriz debe cambiar (hint: cbind)

VectorAleatorio1 <- c(sample(1:10, 5, replace = FALSE))
VectorAleatorio2 <- c(sample(1:10, 5, replace = FALSE))
VectorAleatorio3 <- c(sample(1:10, 5, replace = FALSE))

VectoresEnMatriz <- cbind(VectorAleatorio1, VectorAleatorio2) # Uno los dos primeros vectores, ya que no puedo unir mas de dos a la vez
VectoresEnMatrizFinal <- cbind(VectoresEnMatriz, VectorAleatorio3) # Uno el vector restante usando la primera matriz y el vector 3

print(VectoresEnMatrizFinal)

#9 - Usando el dataset nottem, escribir un programa que me indique la temperatura mas baja de todo el set, la máxima, y después la mínima y máxima por mes, y finalmente el mínimo, máximo y promedio por año.

class(nottem)

nottemcopy <- nottem
nottemvector = as.numeric(nottemcopy)
print(nottemvector)

nottem1920 <- nottemvector[c(1:12)]
print(nottem1920)
nottem1921 <- nottemvector[c(13:24)]
print(nottem1921)

#10 - Crear un dataset que contenga el nombre, apellido, edad, año de nacimiento, mes de nacimiento y día de nacimiento de cada miembro de su grupo. Puede hacerse directamente o con cbind. Una vez hecho, que muestre el contenido, que indique la edad máxima, la mínima y el promedio de edad del grupo.

#11 - (INVESTIGAR) Usando el dataset creado en el ejercicio 10, imprimir el resumen de la información. Probar de hacer lo mismo con iris.

#12 Del set IRIS, ordenar indicar el promedio de longitud de pétalos, solamente de la especie setosa. Luego indicar el máximo de longitud de pétalo, solo de la especie virginica. (Se puede resolver solo con lo aclarado en esta guía pero hay formas mas elegantes de hacerlo)

#13 Usando el dataset de nhtemp, cual es el promedio total de temperaturas? cual es el promedio total de temperaturas entre 1912 y 1922, y cual es el promedio de temperaturas entre 1961 y 1971. En todos los casos, cual es el mínimo y el máximo.

#13 Usando el dataset mtcars, indicar cuantos vehículos tienen caja de cambios en números impares

#14 Calcular la relación entre los cilindros y el hp de los vehículos en mtcars y mostrarlo. Luego calcular, modo, mediana y promedio

#15 - Usando cualquier dataset en datasets::, hacer un estudio aplicando todo lo visto hasta ahora, este ejercicio es libre, pero se pide al menos un resumen, mediana, modo, promedio, alguna relación, top de información, etc. Esta información tiene que tener sentido y ser consistente dentro de los datos analizados.
