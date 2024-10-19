# Ejercicios

# Ejercicio 1: usando cualquier set de datos, particionar los datos para incluir 4 variables. Ordenar los datos por una columna.

#Ejercicio 2: Usando el set de datos de pokemon, crear un subset de datos que me muestre el nombre, tipo 1 y 2 y la generaciòn. Sobre ese mismo dataset, indicar cuales tienen màs de un tipo.

Pokemon <- read.csv('C:/Users/caroc/OneDrive/Escritorio/IFTS/02- Segundo cuatrimestre/Desarrollo de Sistemas de IA/pokemon.csv')

PokemonSubsetShort <- select(Pokemon, Name, Type.1, Type.2, Generation)
filter(PokemonSubsetShort, Type.2 != '')

#Ejercicio 3: Usando el set de datos de pokemon, crear un nuevo set que solo contenga los pokemon con dos tipos. Luego sobre el mismo, seleccionar solo los que sean legendarios, guardarlos en un tibble. 

DoubleTypedPokemon <- filter(Pokemon, Type.2 != '')
LegendariesTibble <- tibble(filter(DoubleTypedPokemon, Legendary == 'True'))

#Ejercicio 4: usando el set de pokemon, crear un nuevo set que agregue la siguiente información al set: una columna que diga si es o no de mas de un tipo, una columna que indica si es de tipo defensivo (su defensa es mas alta que su ataque), una columna que indique si es de tipo ofensivo (a la inversa del anterior), o si es neutral (misma defensa y ataque), solo considera los ataques y defensas normales.

PokemonExtended <- Pokemon %>%
  mutate(MoreThanOneType = ifelse(Type.2 != '', 'True', 'False'),
         IsDefensive = ifelse(Attack < Defense, 'True', 'False'),
         IsOffensive = ifelse(Attack > Defense, 'True', 'False'),
         IsNeutral = ifelse(Attack == Defense, 'True', 'False')
         )

#Ejercicio 5: usando el set de Pokemon armado en el ejercicio 4, dar un resumen del set, y de las categorias creadas.

PokemonResume <- PokemonExtended %>%
  group_by(Attack) %>%
  summarise(AvgAttk = mean(Attack, na.rm = TRUE))

#Ejercicio 6: Usando el set de DINOS, indicar cuantos dinosaurios fueron descubiertos en cada paìs. Guardar los datos en un data.frame.

#Ejercicio 7: Repetir el anterior pero para el periodo y la dieta (ambos en un solo data.frame).

#Ejercicio 8 (INVESTIGAR): La clasificación taxonomica de los dinosaurios esta en una unica columna, por ejemplo para el Argentinosaurus indica, Dinosauria, Saurischia, Sauropomodorpha... etc. Esto no es incorrecto, pero es poco práctico. Crear un programa que separe esa columna en 4 niveles para todos los dinosaurios. es decir, las variables del argentinosaurus, dinosauria, saurischia, sauropodomorpha, sauropoda en columnas individuales. Si el dinosaurio tiene más de 4 niveles de clasificación, descartar el resto. 



