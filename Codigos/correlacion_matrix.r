# Cargar los paquetes
library(ggplot2)
library(reshape2)
library(gridExtra)

# Cargar el conjunto de datos longley
data(longley)

# Calcular la matriz de correlación
correlation_matrix <- cor(longley)

# Guardar la matriz de correlación en un archivo CSV
write.csv(correlation_matrix, "correlation_matrix_longley.csv")
