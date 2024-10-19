

# Primer Ejercicio

#SE PERMITE INVESITGAR POR FUERA DE LOS MATERIALES DE SER NECESARIO
#AL FINALIZAR LA CLASE ENVIEN UNA COPIA POR GRUPO A emilio.leon@bue.edu.ar


#Asigno variable, nombrando la variable y usando <- para asignar el valor

NumeroVariable <- 3
print(NumeroVariable)

#al reves tambien funciona
204 -> NumeroInv
print(NumeroInv)

#El tipo de dato que asigno se define en la asignación.

elmejordelmundo <- "Lionel Messi"
print(elmejordelmundo)

#Puedo operar entre numeros y variables facilmente

1+1

Sumador1 <- 10
Sumador2 <- 5
print(Sumador1+Sumador2)

#Operadores matematicos básicos
2+7 #suma
2-9 #resta
5*10 #multiplicación
9/3 #division
9^2 #potencia
10%%3 #Parte entera o resto
9%%3 #Parte entera o resto

#Operadores lógicos
!TRUE #negacion
Numero == NumeroA #comparacion
1 %in% c(4,3,2) #verifico si el numero 1 esta en el vector
Numero != NumeroA #verifico si los dos numeros o variables no son iguales
# <,>,<=,>= menor, mayor, menor o igual y mayor o igual
Numero > NumeroA | NumeroA < NumeroInv #verdadero si alguna condicion es verdadera, o el operador 'O'
Numero > NumeroA & NumeroA < NumeroInv #ambas condiciones deben ser verdaeras o 'y'

#Los conjuntos de datos se pueden crear con esta estructura:

bolsaDeDatos <- c(5,6,7,8,9)
print (bolsaDeDatos)
plot(bolsaDeDatos)

#Notas
#Las variables pueden definirse por tipo, usando as.<type>, donde type es variable, por ejemplo:
var1 <- as.integer(5) #asignando como entero
print(var1) #imprimo el entero
var2 <-as.Date(3021) #asignando como fecha
print(var2) #imprimo la fecha
#puedo ver los objetos en memoria en cualquier momento
print(ls.str())
#otros ejemplos

var3 <- as.numeric(5)
var4 <- as.integer(5)
var5 <- as.complex(5i) #no se asusten, no vamos a entrar con números imaginarios, solo para que sepan que se puede.

#Se puede requerir el ingreso de datos en variables usando readline, por ejemplo
nombre <- readline(prompt="Ingrese su nombre: ")
edad <- readline(prompt="Ingrese su edad: ")
print(paste("Mi nombre es",nombre, "y tengo",edad ,"años."))

#Vectores - Los vimos en la guia anterior, la estructura es simple: <- vector <- c(5,6,7,8,9)
vector <- c(5,6,10,8,9,8)

#Podemos hacer un ploteo simple de cualquier vector
plot(vector)

#Funciones estadísticas básicas

print(mean(vector)) #promedio
max (vector) #maximo
min (vector) #minimo
median (vector) #valor medio, de la secuencia ordenada
mode (vector) #valor mas comun

#Hay funciones para percentiles y quantiles los veremos mas adelante

#Funciones matemáticas simples
sum(vector)
prod(vector)
#restos, sirven para divisibilidad
10%%2
13%%2
15%%5

#existen tambien, funciones trigonométricas, logaritmicas, etc.

#rangos
print(1:10)

#Muestreos al azar
sample(0:100, 10, replace=TRUE)

#vista de lista
lista <- c(1:10)
print (head(lista))
print (head(lista,3)) #o para limitar, alternativamente para ver los ultimos, usar tail.

#dataframes/datasets
dataset <- data.frame(mes = character(),
                      temperatura = numeric(),
                      precipitaciones = numeric(),
                      humedad = numeric())

#Creando dataframes
DF <- data.frame(Col1 = 1:5, #numero de observaciones
                 Col2 = c("Sit1","Sit1","Sit2","Sit2","Sit3"), 
                 Log = c(T,T,F,F,T),
                 Fct = factor(c("A","B","C","B","A")))

print(DF)

#Ordenado
sort(lista,decreasing=FALSE)

# Datasets integrados a R

morley #datos de velocidad de la luz en distintos medios
nhtemp #promedio de temperaturas por año en New Haven (vector)
mtcars #Pruebas de distintos vehiculos
nottem #temperaturas promedio en nottingham (matriz)
iris #medidas de distintas flores

?mtcars #para ver información de este dataset
#mas datasets integrados con:
#datasets::
datasets::airmiles

#Para asignar datos a un dataset:
Data_autos <- mtcars

#Si quisiera encontrar el max y minimo de hp de los vehiculos en el dataset:

max(Data_autos$hp)
min(Data_autos$hp)

#plotear vectores
plot(c(7,9,3,4,5,3,7,8))
plot(mtcars$hp)
