#SE PERMITE INVESITGAR POR FUERA DE LOS MATERIALES DE SER NECESARIO
#AL FINALIZAR LA CLASE ENVIEN UNA COPIA POR GRUPO A emilio.leon@bue.edu.ar

# Los ejercicios avanzados tomense el tiempo para hacerlos e investigarlos, pero mas importante, trabajen JUNTOS o Colaborativamente, esto no significa al mismo tiempo. 

#Notas

# En esta guía vamos a ver ciclos de control.
# IF e IF ELSE
# IF permite evaluar una condición, y retornar una acción:
varx <- 2
if (varx > 1) print("El numero es mayor a 1")

#if else permite evaluar una condición y retornar una acción por el verdadero y otra por el falso
varx1 <- 1
if (varx1 > 1) print("El numero es mayor a 1") else print ("El numero no es mayor a 1")
if (varx1 > 1) print("El numero es mayor a 1") else print ("El numero no es mayor a 1")


#Un ejemolo de uso de ifelse:

x <- 1:10
ifelse(x %% 5 == 0, "XXX", as.character(x))
ifelse(x %% 2 == 0, "Par", "Inpar")


#Recordar si quiero evaluar mas de una condición debo usar operadores logicos, por ejemplo 
# && - Equivalente al operador logico "Y" (Ambas condiciones deben ser verdaderas)
# ||	- Al menos una condición debe ser vedadera para que retorne "True"
# !	Negación lógica, retorna verdadero si la condición es falsa y viceversa. 
  

#Uso de Switch, para evaluar varias condiciones

cantRuedas <- function(x) {
  switch(x,
         Automotor = 4,
         Camion = 6,
         Monociclo = 1,
         Moto = 2,
         stop("Vehiculo no identificado")
  )
}
cantRuedas ("Automotor")
cantRuedas ("Camion")

#Ciclo FOR, me permite que mientras una condición sea verdadera, una acción se ejecute.

for (i in 1:3) {
  print(i)
}

##Uso de Next o Break. Permite saltar al siguiente o romper el ciclo:

for (i in 1:10) {
  if (i < 3) 
    next
  
  print(i)
  
  if (i >= 5)
    break
}

#Ciclo While: el ciclo corre una accion mientras una condicion es verdadera

z <- 1
while(z > 0.1){
  z <- runif(1)
  print(z)
}

#Otro ejemplo:
x = 1
while(x <= 5){
  print(x)
  x = x + 1
}

# Como leer datos de un csv en un dataframe:
archivoleido = read.csv('/ruta/archivo.csv')

##donde la ruta es la ruta del archivo en el sistema local

# si necesito especificar el separador:
archivoleido = read.csv('/ruta/archivo.csv',sep=',')

##Usando el dataset titanic provisto, y donde lo tengo yo localmente
icebergOuch = read.csv('/Users/ealej/OneDrive/Escritorio/R for IFTS/titanic.csv')
print(icebergOuch)