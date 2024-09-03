# Cargar el conjunto de datos longley
data(longley)

# Ajustar el modelo de regresión lineal
modelo <- lm(GNP.deflator ~ GNP, data = longley)

# Resumen del modelo para obtener los coeficientes y p-valores
summary_modelo <- summary(modelo)

# Mostrar los coeficientes de la regresión
coeficientes <- summary_modelo$coefficients
print(coeficientes)

# Obtener el coeficiente de regresión para GNP
coef_gnp <- coeficientes["GNP", "Estimate"]
print(paste("Coeficiente de regresión de GNP:", coef_gnp))

# Obtener el p-valor asociado al coeficiente de GNP
p_valor_gnp <- coeficientes["GNP", "Pr(>|t|)"]
print(paste("P-valor del coeficiente de GNP:", p_valor_gnp))
