# Definir la ruta de la carpeta de interés
$carpeta = $PSScriptRoot

# Obtener los paths relativos de los archivos en la carpeta
$archivos = Get-ChildItem -Path $carpeta -File | ForEach-Object { $_.FullName }

# Convertir los paths a relativos
$paths_relativos = $archivos | ForEach-Object { $_ -replace [regex]::Escape($carpeta), "." }

# Definir el nombre del archivo de salida .txt
$archivo_salida = "paths_rel.txt"

# Guardar los paths relativos en el archivo .txt
$paths_relativos | Out-File -FilePath $archivo_salida

# Mostrar mensaje de confirmación
Write-Host "Se han guardado los paths relativos de los archivos en $archivo_salida"
