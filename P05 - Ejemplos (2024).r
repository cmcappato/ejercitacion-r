#SE PERMITE INVESITGAR POR FUERA DE LOS MATERIALES DE SER NECESARIO
#AL FINALIZAR LA GUIA ENVIEN UNA COPIA POR GRUPO A emilio.leon@bue.edu.ar

#Data Wrangling - Parte 2
##--------------
#NOTAS

# Para los ejercicios vamos a usar la siguiente libreria
install.packages("tidyverse")  #instalacion
library(tidyverse)

#Tidyverse trae integrado un set de datos de starwars:
starwars #solo les va a aparecer despues de cargar la libreria. Este set en particular es un tibble, no un dataframe.

glimpse(starwars) #me permite ver cada columna, el tipo de variable y algunos valores individuales. Ideal para darse una idea de la estructura. Alternativamente:

str(starwars)

#se pueden convertir dataframes en tibles facilmente, por ejemplo con mtcars:

mtcars_tibble <- tibble(mtcars)
print (mtcars_tibble)

#Ojo que elimina la columna de observaciones con lo cual si quiero mantener el dato, tengo que pasarlo a una variable.

#volviendo al ejemplo de starwars, si quisiera ver unicamente los personajes humanos:
filter(starwars,species != "Human")

#o los no humanos

filter(starwars,species == "Human")

#con tidyverse los NA se ignoran!!!

#recordando los operadores pipe, o "and then..."

filter(starwars,species == "Human") %>%
  arrange (birth_year) 

#arrange se puede usar para ordenar, si queremos indicar por ejemplo que sea descendente:

filter(starwars,species == "Human") %>%
  arrange (desc(birth_year)) 

#otra cosa que podemos hacer es renombrar las columnas o variables, por ejemplo, para entender mejor el significado, por ejemplo en starwars, las palabra "mass" se refiere al peso, entonces:

starwars %>%
  rename(peso=mass) #noten que primero es el nombre nuevo y despues el viejo

#como recordatorio vean las funciones de la guia anterior.

#como ejemplo si quisieramos seleccionar los tres personajes mas bajos de starwars, y mostrar del nombre al peso:

df_personajes <- tibble (starwars %>%
  arrange (height) %>%
  slice (1:3) %>%
  select(name:mass))

df_personajes  

#usando pull()

#supongamos que genero una lista de 10 personajes al azar por nombre:

personajes_azar <- sample_n(starwars, 10) %>% 
  select(name)

personajes_azar

#y ahora, queremos obtener los datos de esos 10 personajes al azar...usamos entonces pull:

starwars %>%
  select(name:species) %>% 
  filter(name %in% pull(personajes_azar, name)) #aca le pasamos el detalle de los personajes y el dato por el cual buscar, Et voila...tenemos los detalles de los 10. 

#ahora supongamos que quiero contar cuantos hay de cada especie, y noten que algunos son NA. Empecemos por los droids:

detalle_droids <- starwars$species=="Droid"
detalle_droids #noten los campos NA

#removiendo los NA:

detalle_droids_final <- detalle_droids & !is.na(starwars$species)

#tenemos el vector que indica como verdadero solo los que son droids, y falso los que son otra cosa o NA. 

#entonces si quiero traer todos los nombres de los droids:
solo_droids <- starwars$name[detalle_droids_final] 
solo_droids

#y contando la cantidad de droids:
length(solo_droids)

# o su altura
starwars %>%
  mean(height(solo_droids))

#aplicandolo en algo mas complejo

starwars %>% 
  summarise(cant_humanos = length(name[species=="Human" & !is.na(species)]), 
            cant_droids = length(solo_droids))

#noten que droids lo manejo con las variables que ya cree

#ahora, al problema de los NA. Los NA en general retornan NA cuando estan en una operacion. Por ejemplo

mean(starwars$birth_year) #devuelve NA, a pesar de todo lo que quiero calcular el el promedio de fechas de nacimiento de todo el set, y tengo data para hacerlo.

is.na(starwars$birth_year) #vemos que tenemos varios faltantes

#entonces removemos faltantes usando na.rm, y podemos calcular
starwars %>%
  summarise(mean(starwars$birth_year, na.rm=TRUE))

#alternativamente
starwars %>%
 list(filter(starwars$birth_year, na.rm=TRUE))

#ahora, pensaran que remover NAs es complejo de todo un tibble o dataframe...bueno...no realmente:
starwars_sin_na <- na.omit(starwars)
starwars_sin_na

#alternativamente drop_na
drop_na(starwars)

#o si solo lo hago para algo en particular, por ejemplo sacar solo los NA de nacimiento y especie:
st_nac_spec <- (starwars %>%
  drop_na(birth_year,species))
st_nac_spec

#si quisiera reemplazar los NA por valores, por ejemplo cero:

starwars_mod <- cbind(starwars$name,starwars$height, starwars$mass, starwars$birth_year) #limito el set a valores numericos unicamente
  
#y saco los NA reemplazando por 0
starwars_mod [is.na(starwars_mod)] <- 0

#y vemos los 0
starwars_mod

#ahora, ojo, 0 es un valor, y puede afectar operaciones. 0 es neutro en sumas y restas, pero afecta otras operaciones. 1 es neutral en multiplicacion y como denominador en divisiones.

#para cambiar datos de una variable unicamente
starwars_mod [87,1] <- "Phasma"
starwars_mod #Noten como el ultimo dato, primera columna cambio de Captain Phasma a Phasma

#Se pueden convertir ademas ciertos datos de esta manera
year()
month()
hour()

#Data wrangling inlcuye mucho mas, por lo que si quieren meterse en esto, les recomiendo investigar en profundidad.

#Por ultimo, veamos el uso de factores. Los factores son datos de tipo categorico, que de hecho es muy practico para usar con arboles o algoritmos similares. 

#por ejemplo, podriamos transformar el color de pelo en factor
factor_pelo <- factor(starwars$hair_color)
factor_pelo

#o, haciendolo directamente dentro del dataframe:
starwars$hair_color <- as.factor(starwars$hair_color)
glimpse(starwars) #noten como cambio a factor

#idealmente antes de convertir algo a factor hay que manipular la informacion para sacar NA, y reducir los factores en cuanto sea posible.

#Finalmente como recordatorio:

read.csv() #lectura con coma
read.csv2() #lectura con punto y coma
read.table() #lectura por espacios (por aca viene la resolucion del ejercicio 8 de la guia anterior)

