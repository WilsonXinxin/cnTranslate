# yarn run publish

#!/usr/bin/env sh

if [ -z "$1" ]
then
  echo "Which folder do you want to deploy to GitHub Pages?"
  exit 1
fi

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build
git add .
git commit -m'publish gh-pages'

# https://gist.github.com/cobyism/4730490
# 发布到子分支 
git subtree push --prefix $1 github gh-pages
