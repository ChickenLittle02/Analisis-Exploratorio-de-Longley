library(ggplot2)
library(reshape2)

# Cargar el dataset Longley
data(longley, package = "datasets")

# Calcular la matriz de correlación
cor_matrix <- cor(longley)

# Transformar la matriz de correlación en un formato largo
cor_melted <- melt(cor_matrix)

# Crear el heatmap
ggplot(data = cor_melted, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile() +
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1, 1), name = "Correlación") +
  theme_minimal() +
  labs(title = "Matriz de Correlación del Dataset Longley",
       x = "Variables",
       y = "Variables") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
  
#distribucion Normal
  # Visualizar la estructura del conjunto de datos
str(longley)

# Seleccionar una variable para analizar, por ejemplo, "GNP.deflator"
variable <- longley$GNP.deflator

# Crear un histograma
hist(variable, 
     main = "Histograma de GNP.deflator", 
     xlab = "GNP.deflator", 
     ylab = "Frecuencia", 
     col = "lightblue", 
     border = "black", 
     probability = TRUE)

# Agregar una curva de densidad normal
x <- seq(min(variable), max(variable), length = 100)
y <- dnorm(x, mean = mean(variable), sd = sd(variable))
lines(x, y, col = "red", lwd = 2)