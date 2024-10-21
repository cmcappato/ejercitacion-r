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
sort(HpVehiculos)


#8 (INVESTIGAR) Escribe un programa que contenga 3 vectores con 5 números al azar, luego, unir los tres vectores en una matriz, finalmente que muestre el contenido de la matriz, en cada ejecución la matriz debe cambiar (hint: cbind)

VectorAleatorio1 <- c(sample(1:10, 5, replace = FALSE))
VectorAleatorio2 <- c(sample(1:10, 5, replace = FALSE))
VectorAleatorio3 <- c(sample(1:10, 5, replace = FALSE))

VectoresEnMatriz <- cbind(VectorAleatorio1, VectorAleatorio2) # Uno los dos primeros vectores, ya que no puedo unir mas de dos a la vez
VectoresEnMatrizFinal <- cbind(VectoresEnMatriz, VectorAleatorio3) # Uno el vector restante usando la primera matriz y el vector 3

print(VectoresEnMatrizFinal)

#9 - Usando el dataset nottem, escribir un programa que me indique la temperatura mas baja de todo el set, la máxima, y después la mínima y máxima por mes, y finalmente el mínimo, máximo y promedio por año.

nottemcopy <- nottem # Realizo una copia del dataset para poder trabajarlo
nottemvector = as.numeric(nottemcopy) # Lo convierto a numérico ya que el original es de tipo Time Series
print(min(nottemvector))
print(max(nottemvector))

nottem1920 <- nottemvector[c(1:12)] # Sirve para hacer una copia del vector, en este caso le indico el rango de posiciones. A diferencia de los arrays, en los vectores se empieza desde la posición 1 y no desde la posición 0
print(min(nottem1920))
print(max(nottem1920))
print(mean(nottem1920))

nottem1921 <- nottemvector[c(13:24)]
print(nottem1921)
print(min(nottem1921))
print(max(nottem1921))
print(mean(nottem1921))

nottem1922 <- nottemvector[c(25:36)]
print(nottem1922)
print(min(nottem1922))
print(max(nottem1922))
print(mean(nottem1922))

nottem1923 <- nottemvector[c(37:48)]
print(nottem1923)
print(min(nottem1923))
print(max(nottem1923))
print(mean(nottem1923))

nottem1924 <- nottemvector[c(49:60)]
print(nottem1924)
print(min(nottem1924))
print(max(nottem1924))
print(mean(nottem1924))

nottem1925 <- nottemvector[c(61:72)]
print(nottem1925)
print(min(nottem1925))
print(max(nottem1925))
print(mean(nottem1925))

nottem1926 <- nottemvector[c(73:84)]
print(nottem1926)
print(min(nottem1926))
print(max(nottem1926))
print(mean(nottem1926))

nottem1927 <- nottemvector[c(85:96)]
print(nottem1927)
print(min(nottem1927))
print(max(nottem1927))
print(mean(nottem1927))

nottem1928 <- nottemvector[c(97:108)]
print(nottem1928)
print(min(nottem1928))
print(max(nottem1928))
print(mean(nottem1928))

nottem1929 <- nottemvector[c(109:120)]
print(nottem1929)
print(min(nottem1929))
print(max(nottem1929))
print(mean(nottem1929))

nottem1930 <- nottemvector[c(121:132)]
print(nottem1930)
print(min(nottem1930))
print(max(nottem1930))
print(mean(nottem1930))

nottem1931 <- nottemvector[c(133:144)]
print(nottem1931)
print(min(nottem1931))
print(max(nottem1931))
print(mean(nottem1931))

nottem1932 <- nottemvector[c(145:156)]
print(nottem1932)
print(min(nottem1932))
print(max(nottem1932))
print(mean(nottem1932))

nottem1933 <- nottemvector[c(157:168)]
print(nottem1933)
print(min(nottem1933))
print(max(nottem1933))
print(mean(nottem1933))

nottem1934 <- nottemvector[c(169:180)]
print(nottem1934)
print(min(nottem1934))
print(max(nottem1934))
print(mean(nottem1934))

nottem1935 <- nottemvector[c(181:192)]
print(nottem1935)
print(min(nottem1935))
print(max(nottem1935))
print(mean(nottem1935))

nottem1936 <- nottemvector[c(193:204)]
print(nottem1936)
print(min(nottem1936))
print(max(nottem1936))
print(mean(nottem1936))


nottem1937 <- nottemvector[c(205:216)]
print(nottem1937)
print(min(nottem1937))
print(max(nottem1937))
print(mean(nottem1937))

nottem1938 <- nottemvector[c(217:228)]
print(nottem1938)
print(min(nottem1938))
print(max(nottem1938))
print(mean(nottem1938))

nottem1939 <- nottemvector[c(229:240)]
print(nottem1939)
print(min(nottem1939))
print(max(nottem1939))
print(mean(nottem1939))

nottemJan <- nottemvector[c(1, 13, 25, 37, 49, 61, 73, 85, 97, 109, 121, 133, 145, 157, 169, 181, 193, 205, 217, 229)] # Sirve para hacer una copia del vector, en este caso le indico las posiciones
print(min(nottemJan))
print(max(nottemJan))

nottemFeb <- nottemvector[c(2, 14, 26, 38, 50, 62, 74, 86, 98, 110, 122, 134, 146, 158, 170, 182, 194, 206, 218, 230)]
print(min(nottemFeb))
print(max(nottemFeb))

nottemMar <- nottemvector[c(3, 15, 27, 39, 51, 63, 75, 87, 99, 111, 123, 135, 147, 159, 171, 183, 195, 207, 219, 231)]
print(min(nottemMar))
print(max(nottemMar))

nottemApr <- nottemvector[c(4, 16, 28, 40, 52, 64, 76, 88, 100, 112, 124, 136, 148, 160, 172, 184, 196, 208, 220, 232)]
print(min(nottemApr))
print(max(nottemApr))

nottemMay <- nottemvector[c(5, 17, 29, 41, 53, 65, 77, 89, 101, 113, 125, 137, 149, 161, 173, 185, 197, 209, 221, 233)]
print(min(nottemMay))
print(max(nottemMay))

nottemJun <- nottemvector[c(6, 18, 30, 42, 54, 66, 78, 90, 102, 114, 126, 138, 150, 162, 174, 186, 198, 210, 222, 234)]
print(min(nottemJun))
print(max(nottemJun))

nottemJul <- nottemvector[c(7, 19, 31, 43, 55, 67, 79, 91, 103, 115, 127, 139, 151, 163, 175, 187, 199, 211, 223, 235)]
print(min(nottemJul))
print(max(nottemJul))

nottemAug <- nottemvector[c(8, 20, 32, 44, 56, 68, 80, 92, 104, 116, 128, 140, 152, 164, 176, 188, 200, 212, 224, 236)]
print(min(nottemAug))
print(max(nottemAug))

nottemSep <- nottemvector[c(9, 21, 33, 45, 57, 69, 81, 93, 105, 117, 129, 141, 153, 165, 177, 189, 201, 213, 225, 237)]
print(min(nottemSep))
print(max(nottemSep))

nottemOct <- nottemvector[c(10, 22, 34, 46, 58, 70, 82, 94, 106, 118, 130, 142, 154, 166, 178, 190, 202, 214, 226, 238)]
print(min(nottemOct))
print(max(nottemOct))

nottemNov <- nottemvector[c(11, 23, 35, 47, 59, 71, 83, 95, 107, 119, 131, 143, 155, 167, 179, 191, 203, 215, 227, 239)]
print(min(nottemNov))
print(max(nottemNov))

nottemDec <- nottemvector[c(12, 24, 36, 48, 60, 72, 84, 96, 108, 120, 132, 144, 156, 168, 180, 192, 204, 216, 228, 240)]
print(min(nottemDec))
print(max(nottemDec))

#10 - Crear un dataset que contenga el nombre, apellido, edad, año de nacimiento, mes de nacimiento y día de nacimiento de cada miembro de su grupo. Puede hacerse directamente o con cbind. Una vez hecho, que muestre el contenido, que indique la edad máxima, la mínima y el promedio de edad del grupo.

InfoGrupo <- data.frame(Nombre = c("Carolina", "Rocio", "Florencia", "Cecilia", "Gaston", "Natalia"),
                      Apellido = c("Cappato","Vazquez","Chirino", "Campos", "Ramirez", "Barron"),
                      Edad = c(30, 37, 33, 34, 34, 30),
                      Anio = c(1993, 1987, 1991, 1990, 1989, 1993),
                      Mes = c(11, 2, 2, 1, 11, 10),
                      Dia = c(22, 8, 22, 25, 3, 23))

print(InfoGrupo)
print(paste("Edad maxima: ", max(InfoGrupo$Edad)))
print(paste("Edad minima: ", min(InfoGrupo$Edad)))
print(paste("Promedio: ", mean(InfoGrupo$Edad)))

#11 - (INVESTIGAR) Usando el dataset creado en el ejercicio 10, imprimir el resumen de la información. Probar de hacer lo mismo con iris

summary(InfoGrupo)
summary(iris)


#12 Del set IRIS, ordenar indicar el promedio de longitud de pétalos, solamente de la especie setosa. Luego indicar el máximo de longitud de pétalo, solo de la especie virginica. (Se puede resolver solo con lo aclarado en esta guía pero hay formas mas elegantes de hacerlo)

Setosas <- filter(iris, Species == "setosa") 
LongitudPetalosSetosas <- sort(Setosas$Petal.Length)
PromedioLongitudPetalosSetosa <- mean(LongitudPetalosSetosas)

Virginica <- filter(iris, Species == "virginica") 
LongitudMaximaPetalosVirginica <- max(Virginica$Petal.Length)

#13 Usando el dataset de nhtemp, cual es el promedio total de temperaturas? cual es el promedio total de temperaturas entre 1912 y 1922, y cual es el promedio de temperaturas entre 1961 y 1971. En todos los casos, cual es el mínimo y el máximo.

nhtempcopy <- nhtemp
nhtempvector <- as.numeric(nhtempcopy)
PromedioTemperaturas <- mean(nhtempvector)

nhtemp1912a1922 <- nhtempvector[c(1:10)]
PromedioTemperaturas1912a1922 <- mean(nhtemp1912a1922)
Minimo1 <- min(nhtemp1912a1922)
Maximo1 <- max(nhtemp1912a1922)

nhtemp1961a1971 <- nhtempvector[c(51:60)]
PromedioTemperaturas1961a1971 <- mean(nhtemp1961a1971)
Minimo2 <- min(nhtemp1961a1971)
Maximo2 <- max(nhtemp1961a1971)

#13 Usando el dataset mtcars, indicar cuantos vehículos tienen caja de cambios en números impares

CajaDeCambiosImpar <- filter(mtcars, gear %% 2 != 0)
print(count(CajaDeCambiosImpar))

#14 Calcular la relación entre los cilindros y el hp de los vehículos en mtcars y mostrarlo. Luego calcular, moda, mediana y promedio

Cilindradas <- mtcars$cyl
CaballosDeFuerza <- mtcars$hp
plot(Cilindradas, CaballosDeFuerza)

PromedioCilindradas <- mean(Cilindradas)
ModaCilindradas <- Mode(Cilindradas)
MedianaCilindradas <- median(Cilindradas)

PromedioCaballosDeFuerza <- mean(CaballosDeFuerza)
ModaCaballosDeFuerza <- Mode(CaballosDeFuerza)
MedianaCaballosDeFuerza <- median(CaballosDeFuerza)

#15 - Usando cualquier dataset en datasets::, hacer un estudio aplicando todo lo visto hasta ahora, este ejercicio es libre, pero se pide al menos un resumen, mediana, modo, promedio, alguna relación, top de información, etc. Esta información tiene que tener sentido y ser consistente dentro de los datos analizados.
