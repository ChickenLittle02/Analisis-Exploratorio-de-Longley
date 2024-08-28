# Cargar la base de datos Longley
data("longley")

# Convertir el dataset Longley a un data frame
longley_df <- as.data.frame(longley)

# Guardar la base de datos Longley en un archivo CSV
write.csv(longley_df, "Longley.csv", row.names = TRUE)  # row.names = FALSE para no incluir nombres de las filas
