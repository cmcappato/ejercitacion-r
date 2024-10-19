# EJERCICIOS iniciales 

#Ejercicio 1: Crear un programa que guarde 10 números al azar del uno al 50, los sume, y verifique que: Si la suma es menor a 50, Si la suma es mayor a 50 pero menor a 350, y si la suma es mayor a 350.

#Ejercicio 2: Usando mtcars indicar cuantos vehículos de 6 cilindros hay en el listado.

#Ejercicio 3: Crear un programa que identifique la cantidad de pétalos de una flor ingresando la cantidad de pétalos en el programa. (A modo de prueba, usar 6, margarita, 10 girasol, 7 petunia)

#Ejercicio 4: Usando mtcars, indicar cuantos vehículos tienen cilindrada impar en el listado. 

#Ejercicio 5: que esta haciendo el siguiente código?
xs <- c(1, 2, 3)
for (x in xs) {
  xs <- c(xs, x * 2)
}
xs

#Ejercicio 6: escribir un programa que genere numeros del 1 al 7 usando for, e indicar el cuadrado de cada numero. 

##Ejercicio 7: Escribir un programa que simule el lanzamiento de una moneta 10 veces, indicando en cada lanzamiento si es cara o seca en un vector generado previamente.


# Ejercicios avanzados: 

#Instalar

install.packages("tidyverse")
install.packages("knitr")

#Si quieren ver detalles de tidyverse: https://www.tidyverse.org/packages/
#detalles de knitr: https://www.r-project.org/nosvn/pandoc/knitr.html (deberia estar por defecto)

# Usar
library(tidyverse)
library(knitr)

##Ejercicio 1: Usar dataset titanic provisto. Se estima que el titanic tenia 2224 pasajeros y tripulación a bordo. Usando el CSV provisto, indicar, de cuantas personas tenemos información, cuantos sobrevivieron, y cuantos no. Cual es la tasa de supervivencia de acuerdo a este dataset?

##Ejercicio 2: Usar el dataset Titanic integrado (dataset::Titanic), verificar cuantas personas tenemos en esta versión, cuantas sobrevivieron y cuantos no. Y cual es la tasa de supervivencia.

##Ejercicio 3: Calcular la diferencia entre cada punto de ambos datasets.




