#Paola Irene Montejo Silvestre carné 999003574
#cargar archivo
library(readr)
#leer escogiendo
tabla1 <- read.csv(file.choose())

#**********Medidas de tendencia central**********

#Calculando la media 
#Velocidad Promedio en la Categoria Speed1
mean(tabla1$speed1)

#Calculando la moda
library(modeest)
#Moda cuando se cuenta con muchos datos, se puede utilizar la siguiente instrucción
#mfv=  most frecuent value o valor más frecuente (moda)
#Tipo más frecuente en la categoria Type4
mfv(tabla1$type4) 
#o se puede utilizar el metodo mlv (most likely value) 
mlv(tabla1$type4, method  =  "mfv")

#*********Medidas de Dispersión*************#  

#Desviación Estándar
#función(dataframe$vector)
#Desviación Estándar de Pollution3 
sd(tabla1$pollution3)
#Desviación Estándar de Pollution5
sd(tabla1$pollution5)


