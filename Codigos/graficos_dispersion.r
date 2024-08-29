# Cargar el conjunto de datos longley
data(longley)

# Lista de pares de variables con correlaciones fuertes
pares_correlacion <- list(
  c("GNP.deflator", "GNP"),
  c("GNP", "Employed"),
  c("Population", "Employed"),
  c("Unemployed", "GNP"),
  c("Unemployed", "Employed")
)

# Generar gráficos de dispersión con línea de regresión
for (par in pares_correlacion) {
  var_x <- par[1]
  var_y <- par[2]
  
  # Crear el nombre del archivo
  file_name <- paste0(var_x, "_vs_", var_y, ".png")
  
  # Generar el gráfico y guardarlo en un archivo PNG
  png(file.path("MTC", file_name))
  plot(longley[[var_x]], longley[[var_y]],
       xlab = var_x,
       ylab = var_y,
       main = paste("Relación entre", var_y, "y", var_x),
       pch = 19, col = "blue")
  abline(lm(longley[[var_y]] ~ longley[[var_x]]), col = "darkblue", lwd = 2)  # Línea de regresión
  dev.off()
}
