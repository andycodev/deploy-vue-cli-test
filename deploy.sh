#!/usr/bin/env sh

# abort on errors
set -e

if [ -d docs ]

then

   rm -r docs
   echo "El directorio docs eliminado"

fi

   npm run build

   # build
   mv dist docs

   git add .

   git commit -m "deploying"

   git push

   echo "deploy success"


cd -
