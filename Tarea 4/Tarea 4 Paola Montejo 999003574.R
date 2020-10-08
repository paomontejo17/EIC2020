#Paola Montejo Carné 999003574 Especialización de Investigación Científica

#Ejercicio 1
#Un fabricante de galletas produce paquetes en los cuales el peso nominal impreso es de 500 gramos. 
#1. Hipótesis nula 
mu = 500
#2. Hipótesis alternativa 
mu ≠ 500
#3. Nivel de significancia y alfa
alfa = 0.05
#4. Valores
n <- 100
media <- 499.4
sd <- 5
mu <- 500 
#5. Estadístico de Prueba 
t0<- (media-mu)/(s/sqrt(n))
t0
#6. Valor de la Distribución Normal 
tAlfa2 <- qnorm(0.975,0,1)
tAlfa2
#7. Validación de Hipótesis
abs(t0)> tAlfa2
# Se acepta la Hipótesis nula 

#Ejercicio 2 
#Un gerente de ventas afirma que en promedio sus representantes de ventas realizan 40 visitas/semana. 
#1. Hipótesis nula 
mu > 40 
#2. Hipótesis alternativa 
mu < 40
#3. Nivel de significancia y alfa
alfa = 0.01
#4. Valores
n <- 8
media <- 42
sd <- 2
mu <- 40
#5. Estadístico de Prueba 
t0<- (media-mu)/(s/sqrt(n))
t0
#6. Valor de la Distribución 
tAlfa <- qt((alfa),(n-1), lower.tail = F)
tAlfa
# Validación de Hipótesis
abs(t0)> tAlfa
# Se acepta la Hipótesis nula 