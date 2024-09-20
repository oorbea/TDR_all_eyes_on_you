#!/bin/bash

echo "Cambiando al directorio TDR/Project..."
cd TDR/Project || { echo "Error: No se pudo cambiar al directorio TDR/Project"; exit 1; }

echo "Abriendo la carpeta 'ALL EYES ON YOU'..."
cd "ALL EYES ON YOU" || { echo "Error: No se pudo abrir la carpeta 'ALL EYES ON YOU'"; exit 1; }

echo "Abriendo la carpeta 'all-eyes-on-you'..."
cd "all-eyes-on-you" || { echo "Error: No se pudo abrir la carpeta 'all-eyes-on-you'"; exit 1; }

echo "Verificando si all-eyes-on-you.exe existe..."
if [ ! -f "all-eyes-on-you.exe" ]; then
    echo "all-eyes-on-you.exe no encontrado. Extrayendo archivo ZIP..."
    unzip -o "all-eyes-on-you.zip" || { echo "Error al extraer el archivo ZIP"; exit 1; }
else
    echo "all-eyes-on-you.exe ya existe. No se requiere extracción."
fi

echo "Ejecutando all-eyes-on-you.exe..."
open ./all-eyes-on-you.exe || { echo "Error al ejecutar all-eyes-on-you.exe"; exit 1; }

exit 0
