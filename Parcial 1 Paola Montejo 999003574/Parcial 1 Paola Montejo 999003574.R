#Parcial 1 Paola Montejo 
#Sección 1
airquality
library(psych)
hist(x = airquality$Ozone)
summary(airquality$Temp)
mean(airquality$Temp)
mfv(airquality$Temp)
summary(airquality$Wind)
skew(airquality$Solar.R)
sd(airquality$Wind)
sd(airquality$Ozone, na.rm = TRUE)

library(ggplot2)
diamonds
hist(diamonds$carat)
ggplot(diamonds)
p<- ggplot(diamonds, aes(x = carat))

hist(x = diamonds$carat)

ggplot(t) + 
  geom_histogram(binwidth = 5, aes(x = carat), fill = 'steelblue') + 
  xlab("Carat") + 
  ylab("Frecuencia") + 
  ggtitle("Diamonds") +
  theme_minimal()

#Diagrama de dispersión
library(ggplot2)
ggplot(data = diamonds, aes(x = diamonds$carat, y = diamonds$price)) + 
  geom_point(color = 'slateblue', size = 2, alpha = 0.6) +
  geom_smooth(color = 'red') + xlab('Carat') +   ylab('Price') +  ggtitle('Relación entre Carat y Price de Diamonds') + 
  theme_minimal()

#Diagrama de Dispersion
library(ggplot2)
ggplot(data = diamonds, aes(x = diamonds$Y, y = diamonds$Z)) + 
  geom_point(color = 'slateblue', size = 2, alpha = 0.6) +
  geom_smooth(color = 'red') + xlab('Y') +   ylab('Z') +  ggtitle('Relación entre Y y Z de Diamonds') + 
  theme_minimal()
plot(x = diamonds$z, y = diamonds$z, col = diamonds$y, 
     main = "Relacion Y y Z0", xlab = "Y", ylab = "Z")
legend(x = "Y", legend = c("Y", "Z"), 
       fill = c("black", "red"), title = "Relacion")

#Diagrama de Cajas
diamonds
ggplot(data = diamonds, aes(x = carat, y = price)) + 
  geom_boxplot(aes(color = education), alpha = 0.7) + 
  xlab('Carat') + 
  ylab('Price') +
  ggtitle('Relación Carat y Price') + 
  theme_minimal()
boxplot(formula = carat ~ price, data =  diamonds)


#Diagrama de Barras
ggplot(diamonds, aes(x = Color)) + 
  geom_bar(color = 'darkslategray', fill = 'steelblue') + 
  xlab("Color") + 
  ylab("frecuencias") + 
  ggtitle("Gráfico de Barras")

diamonds
plot(x = diamonds$color, main = "Diamonds",
     xlab = "Color", ylab = "Frecuencia", 
     col = c("royalblue", "seagreen", "purple", "grey"))

#Pregunta 11 Probabilidades Probabilidad de éxito 60 elementos 20
#Probabilidad de densidad

n<- 20
p<- 0.6
q<- 0.4
x <- 1:n
prob=dbinom(x,n,p)
barplot(prob, main = "Probabilidad de Densidad", names.arg =x)

#Pregunta 12

xpoisson= 1:24
lambda= 20

distpoison <- dpois(xpoisson, lambda)
distpoison
plot (xpoisson, distpoison, type="h", col=c("orange", "yellow", "gray"), xlab = xpoisson)
barplot(distpoison)

