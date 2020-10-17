#Paola Irene Montejo Silvestre Carné 999003574
#Examen final

#Pregunta 11
#Intervalo de confianza de la talla media de los hombre de 18 años o más 
media <- 173.47
n <- 15
desv <-4 
alfa <- 0.05/2
nivelconfianza<- 1-alfa
nivelconfianza
normal<- qnorm(nivelconfianza,0,1)
normal
error<-  desv/sqrt(n)
error
margen <- normal*error
margen
limInf<- media - margen
limsup <- media +margen
limInf
limsup

#Pregunta 12
#Intervalo de confianza de la talla media de los hombre de 18 años o más 
# Valor de la normal con alfa 5%
normal<- qnorm(nivelconfianza,0,1)
normal

#Pregunta 13
#Intervalo de confianza de la talla media de los hombre de 18 años o más 
# Valor de la normal con alfa 20%
media <- 173.47
n <- 15
desv <-4 
alfa <- 0.2/2
nivelconfianza<- 1-alfa
nivelconfianza
normal<- qnorm(nivelconfianza,0,1)
normal
error<-  desv/sqrt(n)
error
margen <- normal*error
margen
limInf<- media - margen
limsup <- media +margen
limInf
limsup

#Pregunta 14 
# Intervalo de confianza con alfa=80%
#172.15 , 174.79

#Pregunta 15
#Margen del intervalo a 5% = 2.024 y a 20% = 1.32

#Pregunta 16
# Valor de alfa 0.01

#Pregunta 17
#Media poblacional = 800 horas

#Pregunta 18
#Hipotesis de la duración de las bombillas de 100 watt de un fábrica
#1 h0: MU >= 800
#2 h1:  Mu < 800
#3- Alfa
alfa <- 0.01
n=50
media= 750
sd= 120
mu=800
#4- estadistico
z0<- (media-mu)/(sd/sqrt(n))
z0
#5- valor de la normal 
zAlfa<- qnorm(alfa,0,1, lower.tail = TRUE)
zAlfa
#6 analizando el criterio de rechazo. 
z0 <  zAlfa
# Es verdadero por lo que se rechaza la hipotesis nula 

#Pregunta 19 
#Se rechaza la hipotesis nula

#Pregunta 20
#1 h0: sigma <= 4
#2 h1: sigma >4
n= 24
s2 <- 4.9  #(varianza de la muestra)
sigma20<- 4  #(varianza de la población)
alfa <- 0.05
#5 calculamos el estadistico de prueba
X2 <- ((n-1)*s2)/sigma20
X2
#6 se calcula chi cuadrada para alfa 
chi_sd2<- qchisq(1-alfa, n-1)
chi_sd2
#7 verificación
X2> chi_sd2

#Pregunta 21
chi_sd2<- qchisq(1-alfa, n-1)
chi_sd2

#Pregunta 22
X2 <- ((n-1)*s2)/sigma20
X2

#Pregunta 23
#Grados de libertad n-1 = 23

#Pregunta 24
#Es falso por lo que se acepta la hipotesis nula

#Pregunta 25
#Correlación de las variables Height y Volumen del conjunto de datos Tree
data("trees")
trees
#Regresión entre Height (y) y Volumne (x)
lm.trees <- lm(Height~Volume, data=trees)
summary (lm.trees)
plot (trees$Height ~trees$Volume)
abline (lm.trees)

#Pregunta 26
#Correlación de las variables Girth y Volumen del conjunto de datos Tree
lm.trees <- lm(Girth~Volume, data=trees)
summary (lm.trees)
plot (trees$Girth ~trees$Volume)
abline (lm.trees)

#Pregunta 27 
#Modelo de regresión lineal Girth y Volumen
lm.trees <- lm(Girth~Volume, data=trees)
summary (lm.trees)
#(Intercept) 7.677857 Volume 0.184632

#Pregunta 28 
#Valor de R2 ajustado
#Adjusted R-squared:  0.9331 

#Pregunta 29
#Existe un grado de regresión elevado, es creciente (positiva)
#y más del 90% de los datos están dentro del parámetro aceptado de regresión.


