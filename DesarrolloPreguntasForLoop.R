#                             TAREA N°2 DE BIG DATA
#                            Danae O'Kington Hernandez


# Fijar directorio

setwd("C:/Users/nanae/OneDrive - utem.cl/Universidad/Quinto año/2 semestre/BIG DATA/Tarea 2/Tarea2_FOR_LOOP")

# Instalando y abriendo librerias

install.packages("tidyverse")
install.packages("hrbrthemes")
install.packages("viridis")

library("tidyverse")
library("hrbrthemes")
library("viridis")

# Subir bases de datos

grandes_chile <- read.csv2("grandes_chile.csv")
grandes_colombia <- read.csv2("grandes_colombia.csv")
grandes_peru <- read.csv2("grandes_peru.csv")

medianas_chile <- read.csv2("medianas_chile.csv")
medianas_colombia <- read.csv2("medianas_colombia.csv")
medianas_peru <- read.csv2("medianas_peru.csv")

micro_chile <- read.csv2("micro_chile.csv")
micro_colombia <- read.csv2("micro_colombia.csv")
micro_peru <- read.csv2("micro_peru.csv")

pequena_chile <- read.csv2("pequena_chile.csv")
pequena_colombia <- read.csv2("pequena_colombia.csv")
pequena_peru <- read.csv2("pequena_peru.csv")


#----------------------------- Ejercicio 1 ----------------------------------

# Incorporando variable de tamaño

str(grandes_chile)

tamanio <- c("grande")

grandes_chile <- cbind(grandes_chile, tamanio)
grandes_colombia <- cbind(grandes_colombia, tamanio)
grandes_peru <- cbind(grandes_peru, tamanio)

tamanio <- c("mediana")
medianas_chile <- cbind(medianas_chile, tamanio)
medianas_colombia <- cbind(medianas_colombia, tamanio)
medianas_peru <- cbind(medianas_peru, tamanio)

tamanio <- c("micro")
micro_chile <- cbind(micro_chile, tamanio)
micro_colombia <- cbind(micro_colombia, tamanio)
micro_peru <- cbind(micro_peru, tamanio)

tamanio <- c("pequena")
pequena_chile <- cbind(pequena_chile, tamanio)
pequena_colombia <- cbind(pequena_colombia, tamanio)
pequena_peru <- cbind(pequena_peru, tamanio)


#----------------------------- Ejercicio 2 ----------------------------------

# Cambiar de nombres de las variables, para que todas esten con las mismas variables


names(grandes_chile)=c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres",
                       "exportaciones", "importaciones", "endeudamiento", "morosidad",
                       "reservas", "spread", "tasa_interes", "tamanio")
names(grandes_colombia)=c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres",
                       "exportaciones", "importaciones", "endeudamiento", "morosidad",
                       "reservas", "spread", "tasa_interes", "tamanio")
names(grandes_peru)=c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres",
                       "exportaciones", "importaciones", "endeudamiento", "morosidad",
                       "reservas", "spread", "tasa_interes", "tamanio")


names(medianas_chile)=c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres",
                       "exportaciones", "importaciones", "endeudamiento", "morosidad",
                       "reservas", "spread", "tasa_interes", "tamanio")
names(medianas_colombia)=c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres",
                        "exportaciones", "importaciones", "endeudamiento", "morosidad",
                        "reservas", "spread", "tasa_interes", "tamanio")
names(medianas_peru)=c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres",
                        "exportaciones", "importaciones", "endeudamiento", "morosidad",
                        "reservas", "spread", "tasa_interes", "tamanio")


names(micro_chile)=c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres",
                        "exportaciones", "importaciones", "endeudamiento", "morosidad",
                        "reservas", "spread", "tasa_interes", "tamanio")
names(micro_colombia)=c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres",
                     "exportaciones", "importaciones", "endeudamiento", "morosidad",
                     "reservas", "spread", "tasa_interes", "tamanio")
names(micro_peru)=c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres",
                     "exportaciones", "importaciones", "endeudamiento", "morosidad",
                     "reservas", "spread", "tasa_interes", "tamanio")


names(pequena_chile)=c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres",
                     "exportaciones", "importaciones", "endeudamiento", "morosidad",
                     "reservas", "spread", "tasa_interes", "tamanio")
names(pequena_colombia)=c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres",
                        "exportaciones", "importaciones", "endeudamiento", "morosidad",
                        "reservas", "spread", "tasa_interes", "tamanio")
names(pequena_peru)=c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres",
                        "exportaciones", "importaciones", "endeudamiento", "morosidad",
                        "reservas", "spread", "tasa_interes", "tamanio")

# Unir las bases de datos

empresas_ch_co_pe <- rbind(grandes_chile, grandes_colombia, grandes_peru, medianas_chile, medianas_colombia,
  medianas_peru, micro_chile, micro_colombia, micro_peru, pequena_chile,
  pequena_colombia, pequena_peru)


str(empresas_ch_co_pe)

# La tipologia de las variables son: - fecha: character
#                                    - pais: character
#                                    - ingresos: numeric (Double)
#                                    - costos: numeric (Double)
#                                    - porcentaje_mujeres: numeric (Double)
#                                    - exportaciones: numeric (Double)
#                                    - importaciones: numeric (Double)
#                                    - endeudamiento: numeric (Double)
#                                    - morosidad: numeric (Double)
#                                    - reservas: numeric (Double)
#                                    - spread: numeric (Double)
#                                    - tasa_interes: numeric (Double)
#                                    - tamanio: character

#----------------------------- Ejercicio 3 ----------------------------------

{
  obs_chile <- 0
  obs_peru <- 0
  
  for (posicion in 1:length(empresas_ch_co_pe$pais)) {
    if(empresas_ch_co_pe$pais[posicion] == "chile"){
      obs_chile <- obs_chile + 1
    } else if(empresas_ch_co_pe$pais[posicion] == "peru"){
      obs_peru <- obs_peru+1
    }
  }
  print(paste("Las observaciones de Chile son", obs_chile, "y las de Peru son", obs_peru ))
}

#----------------------------- Ejercicio 4 ----------------------------------


{
  ing_chile <- 0
  ing_colombia <- 0
  ing_peru <- 0
  
  for(posicion in 1:length(empresas_ch_co_pe$pais)){
    if(empresas_ch_co_pe$pais[posicion]=="chile"){
      ing_chile <- ing_chile+empresas_ch_co_pe$ingresos[posicion]
    }else if(empresas_ch_co_pe$pais[posicion]=="colombia"){
      ing_colombia <- ing_colombia+empresas_ch_co_pe$ingresos[posicion]
    }else{
      ing_peru <- ing_peru+empresas_ch_co_pe$ingresos[posicion]
    }
  }
  if(ing_chile > ing_colombia && ing_chile > ing_peru){
    print(paste("Chile es el pais con mayores ingresos por explotacion alcanzando los", ing_chile, "millones de dolares"))
  }else if(ing_colombia > ing_chile && ing_colombia > ing_peru){
      print(paste("Colombia es el pais con mayores ingresos por explotacion alcanzando los", ing_colombia, "millones de dolares"))
  }else{
      print(paste("Peru es el pais con mayores ingresos por explotacion alcanzando los", ing_peru, "millones de dolares"))
    }
}

#----------------------------- Ejercicio 5 ----------------------------------

# Chile:    tasa_interes*0.1
# Peru:     tasa_interes+0.3
# Colombia: tasa_interes/10


{
  variable <- c(0)
empresas_ch_co_pe <- cbind(empresas_ch_co_pe, variable)

for (posicion in 1:length(empresas_ch_co_pe$pais)){
  if(empresas_ch_co_pe$pais[posicion]=="chile"){
    empresas_ch_co_pe$variable[posicion] <- empresas_ch_co_pe$tasa_interes[posicion]*0.1
  }else if(empresas_ch_co_pe$pais[posicion]=="peru"){
    empresas_ch_co_pe$variable[posicion] <- empresas_ch_co_pe$tasa_interes[posicion]+0.3
  }else if(empresas_ch_co_pe$pais[posicion]=="colombia"){
    empresas_ch_co_pe$variable[posicion] <- empresas_ch_co_pe$tasa_interes[posicion]/10
  }
}
}

#----------------------------- Ejercicio 6 ----------------------------------

#exportaciones: 1 cuando exp > 2.1
#               2 cuando exp < 2.1
#               3 cuando exp = 2.1

for (posicion in 1:length(empresas_ch_co_pe$exportaciones)) {
  if(empresas_ch_co_pe$exportaciones[posicion] > 2.1){
    empresas_ch_co_pe$exportaciones[posicion] <- 1
  }else if(empresas_ch_co_pe$exportaciones[posicion] < 2.1){
    empresas_ch_co_pe$exportaciones[posicion] <- 2
  }else if(empresas_ch_co_pe$exportaciones[posicion] == 2.1){
    empresas_ch_co_pe$exportaciones[posicion] <- 3
  }
}

table(empresas_ch_co_pe$exportaciones)

#----------------------------- Ejercicio 7 ----------------------------------


# Se necesita conocer la distribucion de los ingresos por pais 
empresas_ch_co_pe %>%
  ggplot( aes(x=empresas_ch_co_pe$pais, y=empresas_ch_co_pe$ingresos, fill=empresas_ch_co_pe$pais))+
  geom_boxplot()+
  ggtitle("Ingreso por pais")


















