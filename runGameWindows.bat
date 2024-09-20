@echo off
echo Cambiando al directorio TDR\Project...
cd TDR\Project

echo Abriendo la carpeta "ALL EYES ON YOU"...
cd "ALL EYES ON YOU"

echo Abriendo la carpeta "all-eyes-on-you"...
cd "all-eyes-on-you"

echo Verificando si all-eyes-on-you.exe existe...
if not exist "all-eyes-on-you.exe" (
    echo all-eyes-on-you.exe no encontrado. Extrayendo archivo ZIP...
    powershell -command "Expand-Archive -Path 'all-eyes-on-you.zip' -DestinationPath '.'"
) else (
    echo all-eyes-on-you.exe ya existe. No se requiere extracción.
)

echo Ejecutando all-eyes-on-you.exe...
start "" "all-eyes-on-you.exe"

exit
