#SE PERMITE INVESITGAR POR FUERA DE LOS MATERIALES DE SER NECESARIO
#AL FINALIZAR LA GUIA ENVIEN UNA COPIA POR GRUPO A emilio.leon@bue.edu.ar

#Data Wrangling - Parte 1
##--------------
#NOTAS

# Para los ejercicios vamos a usar la siguiente librería
install.packages("tidyverse")#instalación
library(tidyverse)

#esto incluye dyplr que lo vamos a usar bastante.

#Vamos a empezar por ver estas funciones inicialmente:

select(): #seleccionamos columnas
filter(): #seleccionamos filas
mutate(): #creamos nuevas columnas usando como base columnas existentes
group_by() #agrupamos por una variable
summarize(): #creamos un resumen estadístico de los datos
arrange(): #ordenar los datos
count(): #contar valores
  
#Ejemplos de uso
  
#Select:

select(mtcars,cyl,hp)
#donde creamos un subset de datos con las columnas indicadas, es más podríamos generar directamente el dataframe y guardarlo así:

Autos1 <- data.frame(select(mtcars,cyl,hp))

#esto es muy útil para manipular dataframes con muchas variables. Adicionalmente se puede hacer por rango.

head(mtcars) #vemos una parte reducida del dataframe para ver como esta compuesto. También podría hacerlo así:
str(mtcars)

#supongamos que solo quiero los datos desde mpg hasta wt del dataframe. Entonces en lugar de poner columna por columna, podría tomar por rangos:
Autos2 <- data.frame(select(mtcars,mpg:wt))

#y esto es combinable, acá armo un dataframe con las columnas desde mpg a hp, y después de am a carb. 
Autos3 <- data.frame(select(mtcars,mpg:hp,am:carb))

#mucho más fácil que los ejercicios de las primeras guías no 

#Ademas se puede combinar con funciones adicionales como
starts_with()
ends_with()
contains()
last_col()

#filter permite filtrar datos de un conjunto
Autos4 <- data.frame(select(mtcars,cyl))
filter(Autos4, cyl == "4")

#y como siempre yo podría generar un dataframe resumido:

Autos_resumido <- data.frame (filter(Autos4, cyl == "4"))

#y si quisiera filtrar por varias condiciones?

filter(mtcars, cyl == 6, 
       hp > 100,
       vs == 1)

#simplemente las agrego y voy seleccionando de acuerdo a lo que necesito. 

#puedo ademas usar los operadores lógicos and (&) y or (|)
filter (mtcars, cyl == 6 | cyl == 8)
# o sea, de mtcars quiero todos los vehículos que tengan 6 u 8 cilindros.

#puedo ademas tomar secciones del set, por ejemplo, del vehículo 1 al 7
slice(mtcars, 1:7) 

#O con el menor o mayor valor de una variable

slice_min(mtcars,hp)
slice_max(mtcars,hp)

#o una sección al azar: 

slice_sample (mtcars, n=5) # 5 vehículos al azar

slice_sample(mtcars, prop = .1) # porcentaje de vehículos al azar, en este caso 10%

#para ordenar información:
arrange(mtcars, cyl, hp)

#Si bien todo esto se puede nestear (una funcion dentro de otra), por ejemplo:
select(filter(mtcars, hp > 85), cyl, mpg)

#Se pueden usar pipes. %>% y |>. Esto se puede leer como "y después hacer esto..." Por ejemplo:

mtcars %>%
  filter(hp > 85) %>%
  select(cyl, mpg)

#si se fijan el output es identico al anterior, y de hecho lo podemos mandar directo a un data frame.

Autos5 <- mtcars %>%
  filter(hp > 85) %>%
  select(cyl, mpg)

#ahora si quisiera agregar información en una nueva variable al dataset existente, puedo usar mutate.
Autos6 <- mtcars 
Autos6 %>% 
  mutate(rel_cyl_hp = cyl/hp,
         wt_cyl = wt/cyl)

# y si quisiera hacer un plot directo de esto:
Autos6 %>% 
  mutate(rel_cyl_hp = cyl/hp,
         wt_cyl = wt/cyl) %>%
  select(rel_cyl_hp) %>%
  plot()

#supongamos que quiero identificar vehículos de alto rendimiento y de bajo rendimiento:

Autos6 %>% 
  mutate(tipo_auto = ifelse(hp > 170, "deportivo", "no deportivo")) %>% 
  select(hp, cyl, tipo_auto)

#acá asumo que los vehículos con mas de 170hp son deportivos. Se podría combinar las condiciones con and y or para filtrar aún mejor.

Autos6 %>%
  group_by(cyl) %>% # agrupo por cilindrada.
  summarize(cyl = mean(hp, na.rm=TRUE)) #requiero el promedio de HP por cilindrada.


#Explorar datos:

#para contar el numero de observaciones:

Autos6 %>%
  count(cyl)

#para verlo mejor
Autos6 %>%
  count(cyl,cyl)

#puedo ademas agregar condicion, por ejemplo, que me cuente los vehiculos por cyl, indicando si tienen desplazamiento menor a 160.
Autos6 %>%
  count(cyl, disp < "160.0")


#Tibbles
#Los tibbles son una estructura de datos similar al dataframe, pero con varias ventajas. Entre otras cosas permite ver la version resumida de los datos mucho más facil, son más faciles de explorar, etc.

Autos7 <- tibble(mtcars)
print(Autos7)

#NOTEN QUE NO TIENE LOS NOMBRES DE LOS AUTOS. Los tibbles eliminan el nombre o numero de observación.

#vamos a ver el detalle de tibbles en futuras guias.


