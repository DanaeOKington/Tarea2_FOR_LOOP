# Tarea2_FOR_LOOP
Tarea n° 2 de BIG DATA. Danae O'Kington

## Pregunta 1

### Cargue las bases de datos incorporando en cada una de ellas la variable "tamanio", donde indique de que tamaño es la empresa de ese pais

Se incorpora la variable a las bases de datos utilizando el comando "cbind()"

## Pregunta 2

### Reuna todas las bases en una sola y defina de que tipologia son cada una de las variables que se encuentran en la data.

Habian variables con los nombres cambiados, como por ejemplo "procentaje de mujeres" y "porcentaje de muejeres", entonces fue necesario renombrarlos para que todas las bases tuvieran los mismos nombres y asi poder reunirlas en una sola base utilizando el comando "rbind()"

La tipologia de las variables es la siguiente: - fecha: character
	                                       - pais: character
	                                       - ingresos: numeric (Double)
	                                       - costos: numeric (Double)
	                                       - porcentaje_mujeres: numeric (Double)
	                                       - exportaciones: numeric (Double)
	                                       - importaciones: numeric (Double)
	                                       - endeudamiento: numeric (Double)
	                                       - morosidad: numeric (Double)
	                                       - reservas: numeric (Double)
	                                       - spread: numeric (Double)
	                                       - tasa_interes: numeric (Double)
	                                       - tamanio: character

## Pregunta 3

### Determine a través del uso de condicionales y/o for cuántas obervaciones tiene Peru versus Chile.

Las observaciones de Chile son 260 y las de Peru son 260. Se realizo el calculo utilizado funciones de for e if

## Pregunta 4

### Determine ¿cuál es el país con mayor ingresos de explotación para los años que considera la muestra?.

Colombia es el que tiene mayores ingresos por explotacion, alcanzando los 3,940.91 millones de dolares

## Pregunta 5

### Genere una variable, donde si el país es Chile multiplique la tasa de interes por 0,1, cuando sea Peru le sume 0,3 y, y finalmente si es Colombia divida por 10.

Se realiza utilizando for e if

## Pregunta 6

### Reemplace en la columna exportaciones con 1 cuando es mayor a 2,1, con un 2 cuando es menor 2,1y un 3 cuando es igual a 2,1, redondee al primer decimal la variable.

Se realiza utilizando for e if

## Pregunta 7

### Gráfique algunas variables seleccionadas, las cuales puedan responder a una pregunta que se haga con respecto a los datos.

¿Que distribucion tienen los ingresos por explotacion en los diferentes paises?

