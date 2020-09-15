#TAREA 2
#Paola Irene Montejo Silvestre carné 999003574

#Ejercicio 1
#Variables para el experimento
?dbinom
n = 16
p = 0.4 #(40%)
q = 0.6 #(60%)
xbinomial <- 1:16
xbinomial 
dbinomial <- dbinom(xbinomial, 16, 0.4)
dbinomial
barplot(dbinomial, main = "Meningitis por Salmonella", xlab = "Frecuencia", ylab = "Probabilidad", 
        col = c("royalblue", "grey"))


#con sesgo positivo 
n=16; 
p=.4; 
x=0:n; 
prob=dbinom(16,16,0.4);
prob
barplot(prob, main = "Meningitis por Salmonella")

#Probabilidad de que sobrevivan todos los pacientes
n=16; 
p=0.4; 
x=0:n; 
prob=dbinom(16,16,p);
prob
barplot(prob, main = "Meningitis por Salmonella")

#Probabilidad de que sobrevivan más de la mitad de los paciente
n=9; 
p=0.4; 
x=0:n; 
prob=dbinom(9,16,0.4);
prob
barplot(prob, main = "Meningitis por Salmonella")

#Ejercicio 2
# Variables para el experimento y el vector inicial (0:1, con un rango de 0.01), N y DS
x = seq(0, 1, by = .01)
x
media<- mean(0.25)
desviacion <- sd(0.11)

# Valores de la densidad para cada punto en X 
x = seq(0, 1, by = .01)
valores <- dnorm(x, 0.25, 0.11)
valores

# Gráfica de Distribución Normal 
plot(x, valores, type="l", main="Concentración de Plomo", xlab="Valores X", ylab="Valores de densidad")

# Probabilidad en la categoría de concentración superior o igual a 0.6 partes por millón (x>=0.6)
pnorm(0.4,0.25,.11)

#Probabilidad en la catergoría de concentración inferior a 0.15 (x<=0.15)
pnorm(0.15,0.25,.11)

#Concentración mínima del 30% de los individuos con más concentración (p=0.30) 
pnorm(0.30,0.25,.11)

#Ejercicio 3
#Variables para el experimento (λ) y el vector inicial (0:5)

xpoisson= 1:24
lambda= 5
distpoison <- dpois(xpoisson, lambda)
distpoison

# No se produzcan más de cuatro capturas en un día
q = 1:24
lambda= 4
distpoison <- ppois(q = 1:24, lambda = 4, lower.tail = TRUE, log.p = FALSE )

# Se produzcan al menos cuatro capturas en un día 4
xpoisson= 1:24
lambda= 5
distpoison <- dpois(xpoisson, lambda)

# Se produzcan menos de cuatro capturas en un día
xpoisson= 1:24
lambda= 3
distpoison <- ppois(q = 1:24, lambda = 4, lower.tail = TRUE, log.p = FALSE )


