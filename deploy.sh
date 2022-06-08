#!/usr/bin/env sh

# abort on errors
set -e

if [ -d docs ]

then

   echo "El directorio existe"
   rm -r docs

else

   echo "El directorio no existe"
   npm run build

   # build
   mv dist docs

   git add .

   git commit -m "deploying"

   git push

fi


cd -
