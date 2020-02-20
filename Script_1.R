# Daniela Victoria Cansino Rosales
# Matrícula: 1821849
# Fecha: 20.02.2020


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
#El promedio de accidentes al mes es de 1.9

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
        especies", xlab="Especies", ylab="Frecuencia", col = "yellow")



# Ejercicio 3 --------------------------------------------------------------

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

# Encontrar la frecuencia de las variables vecinos y especies

table(conjunto$Vecinos, conjunto$Especie)

vec.esp <- table(conjunto$Vecinos, conjunto$Especie)
addmargins(as.table(vec.esp)) #tabla de sumatoria de vecinos por especie
vec.esp1 <- addmargins(as.table(vec.esp))
vec.esp1



# Ejercicio 4 -------------------------------------------------------------

altura <- conjunto$Altura
range(altura)

Intervalo <- seq(7.5, 22.5, by= 5) #Categorías diamétricas
Intervalo

altura.table <- cut(altura, Intervalo)
table(altura.table)

altura.prop <- cbind(table(altura.table))
altura.per <- round(prop.table(altura.prop)*100,2)


par(mfrow=c(1,2))
hist(altura, main = "datos sin intervalo definido", col= "coral4")
hist(conjunto$Altura, breaks = Intervalo, main = "Datos con intervalo definido",
     col= "darksalmon")
par(mfrow=c(1,1))

# Ejercicio 5 -------------------------------------------------------------

diametro <- conjunto$Diametro
range(diametro)

Intervalo <- seq(7.5, 27.5, by= 5)
Intervalo

par(mfrow=c(1,2))
hist(conjunto$Diametro, main = "Sin modificar", xlab = "Diametro", col= "turquoise4")
hist(conjunto$Diametro, breaks = Intervalo, main = "Datos Intervalo", col = "lightpink2")
par(mfrow=c(1,1))




