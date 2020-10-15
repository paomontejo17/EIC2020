#Paola Montejo carné Carné 999003574
# Tarea 5

#Ejercicio 1 
# Promedio que recorren los automóviles por año 

#1. Hipótesis nula 
mu  > 20000
#2. Hipótesis alternativa 
mu < 20000 
#3. Nivel de significancia y alfa
alfa = 0.03
#4. Valores
n <- 100
media <- 19500
sd <- 3900
mu <- 20000
#5. Estadístico de Prueba 
t0<- (media-mu)/(sd/sqrt(n))
t0
#6. Valor de la Distribución 
tAlfa <-  qnorm(alfa,0,1, lower.tail = TRUE)
tAlfa
#7. Validación de Hipótesis
abs(t0)< tAlfa
# Es falso, por lo que se acepta la Hipótesis nula, donde la media es mayor o igual a 20000.

#Ejercicio 2
# Proceso de llenado de bolsas de café 

#1. Hipótesis nula
ho: sigma20 =< 40
#2. Hipótesis alternativa
h1: sigma20 ≠ 40
#3. Nivel de significancia y alfa
alfa = 0.05
#4. Valores
n = 10
s2 <- 27
sigma20 <- 40
alfa <- 0.05
#5. Estadístico de Prueba
X2 <- ((n-1)*s2)/sigma20
X2
#6. Valor de la Distribución de Chi cuadrada
#(si escojemos la cola superior 1-alfa/2)
chi_sd<- qchisq(1- alfa/2, n-1)
chi_sd
#(si escojemos la cola inferior alfa/2)
chi_sd2<- qchisq(alfa/2, n-1)
chi_sd2
# Verificamos el criterio de rechazo 1
X2 < chi_sd2
#criterio de rechazo
X2 > chi_sd
#7.Validación de Hipótesis
#se acepta la h0, significa que la variación del proceso es igual o menor a 40. 

#Prueba de hipótesis de valor menor
#1. h0: sigma >= 40
#2  h1: sigma < 40
#3, 4 y 5 quedan igual
#6 se calcula chi cuadrada para alfa 
chi_sd2<- qchisq(alfa, n-1)
chi_sd2
#7 verificación
X2< chi_sd2
#se acepta la h0 que indica que el valor de sigma es mayor o igual 40.

#Prueba de hipótesis de valor mayor
#1. h0: sigma <= 40
#2  h1: sigma > 40 
#3, 4 y 5 quedan igual
#6 se calcula chi cuadrada para alfa 
chi_sd2<- qchisq(1-alfa, n-1)
chi_sd2
#7 verificación
X2> chi_sd2
#se acepta la h0 que indica que el valor de sigma es mayor o igual 40.

#Ejercicio 3 
#Intervalo de Confianza con muestra de 30 elementos

media <- 35
n <-30
desv <- 3.5
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

#Ejercicio 4
#Intervalo de Confianza con muestra de 5000 elementos

media <- 500
n <- 5000
desv <- 100
alfa <- 0.1/2

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

# Ejercicio 5 
#Regresión lineal del conjunto de datos "Trees"
data("trees")
trees

#Regresión entre Girth (y) y Height(x)
lm.trees <- lm(Girth~Height, data=trees)
summary (lm.trees)
plot (trees$Girth ~trees$Height)
abline (lm.trees)

#Regresión entre Girth(y) y volumen(x)
lm.trees2 <- lm(Girth~Volume, data=trees)
summary (lm.trees2)
plot (trees$Girth ~trees$Volume)
abline (lm.trees2)

