# Deploy production

#!/usr/bin/env sh

# abort on errors
set -e

# Verificamos que si existe directorio docs
if [ -d docs ]
then
  # Si existe directorio lo eliminamos
   rm -r docs
   echo "El directorio docs eliminado"

fi
  # Si no existe directorio dos

  # Contruimos para producción
   npm run build

   # Renombramos la carpeta dist por docs
   mv dist docs

   # Agregamos todos los archivos modificados al repo
   git add .

   git commit -m "deploying"

   git push

   echo "deploy success"


cd -
