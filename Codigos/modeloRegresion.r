# Cargar el dataset Longley
data(longley)

# Crear modelos de regresión lineal para las correlaciones fuertes positivas

# Modelo para GNP.deflator ~ GNP
modelo_gnp_deflator_gnp <- lm(longley$GNP.deflator ~ longley$GNP)
summary_gnp_deflator_gnp <- summary(modelo_gnp_deflator_gnp)

# Modelo para GNP ~ Year
modelo_gnp_year <- lm(longley$GNP ~ longley$Year)
summary_gnp_year <- summary(modelo_gnp_year)

# Modelo para Population ~ GNP
modelo_population_gnp <- lm(longley$Population ~ longley$GNP)
summary_population_gnp <- summary(modelo_population_gnp)

# Guardar los resúmenes en un archivo de texto
sink("resumenes_regresion_longley.txt")
cat("Resumen del modelo GNP.deflator ~ GNP:\n")
print(summary_gnp_deflator_gnp)
cat("\n\n")

cat("Resumen del modelo GNP ~ Year:\n")
print(summary_gnp_year)
cat("\n\n")

cat("Resumen del modelo Population ~ GNP:\n")
print(summary_population_gnp)
cat("\n\n")
sink()  # Finalizar la escritura en el archivo
