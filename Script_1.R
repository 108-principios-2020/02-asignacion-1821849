
# Ejercicio 1 -------------------------------------------------------------
  
library(plyr)
accidentes <- c(0,1,0,2,2,1,4,3,0,1,5,1,2,3,4,0,1,1,3,4)
acc <- count(accidentes)
acc

(acc$freq/sum(acc$freq)*100)
acc$rf <- acc$freq/sum(acc$freq)*100
acc

barplot(acc$freq, names.arg = acc$x, main = "Accidentes
        en el aserradero", col= "lightblue")


# ¿Cuál es el promedio de accidentes al mes?
mean(accidentes)
sum(accidentes)
boxplot(accidentes)

# ¿Qué número de accidentes reporta la mayor proporción (%)?

# De acuerdo a la gráfica, el número de accidentes que reporta la
# mayor proporción es 1 accidente en 6 meses (30%)



# Ejercicio 2 -------------------------------------------------------------

especies <- c("F", "H", "F", "C", "F", "A", "H","F",
              "H", "C", "A", "C", "F", "H", "H", "H",
              "F", "H", "A", "C", "F", "H", "H", "F")
esp <- count(especies)
esp

(esp$freq/sum(esp$freq)*100)
esp$rf <- esp$freq/sum(esp$freq)*100 
esp

# ¿Qué especie presenta mayor proporción (%)?

# La especie que presenta mayor proporción es la Tsuga heterofila (H) 
# con un porcentaje de 37.5%


barplot(esp$freq, names.arg = esp$x, main = "Cantidad de 
        especies", col = "yellow")



# Ejercicio 3 --------------------------------------------------------------

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

vecyesp<- table(conjunto$Vecinos, conjunto$Especie)
vecyesp



# Ejercicio 4 -------------------------------------------------------------

altura <- conjunto$Altura
range(altura)

Intervalo <- seq(8, 21, by= 4)
Intervalo

altura.table <- cut(altura, Intervalo)
table(altura.table)

altura.prop <- cbind(table(altura.table))
altura.per <- round(prop.table(altura.prop)*100,2)



# Ejercicio 5 -------------------------------------------------------------

diametro <- conjunto$Diametro
range(diametro)

Intervalo <- seq(7.5, 25.5, by= 2.5)
Intervalo

par(mfrow=c(1,2))
hist(conjunto$Diametro, main = "Sin modificar", xlab = "Diametro", col= "grey")
hist(conjunto$Diametro, breaks = Intervalo, main = "Datos Intervalo", col = "brown")
par(mfrow=c(1,1))




