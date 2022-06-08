#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:andycodev/deploy-vue-cli-test.git master:gh-pages
# git push -f https://github.com/andycodev/deploy-vue-cli-test.git master:gh-pages

git subtree push -f https://github.com/andycodev/deploy-vue-cli-test.git --prefix dist origin gh-pages

cd -