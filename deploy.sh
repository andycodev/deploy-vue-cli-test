#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

mv dist docs

# navigate into the build output directory
git add .
#git add docs -f

git commit -m "deploying"

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:andycodev/deploy-vue-cli-test.git master:gh-pages
# git push -f https://github.com/andycodev/deploy-vue-cli-test.git master:gh-pages

git push

cd -