#!/usr/bin/env bash

if [ "${CIRCLE_BRANCH}" != "master" ]; then
    echo "Only master branch can be deployed"
    exit 0
fi

set -e

DEPLOY_DIR=deploy

git config --global push.default simple
git config --global user.email $(git --no-pager show -s --format='%ae' HEAD)
git config --global user.name $CIRCLE_USERNAME

git clone -q --branch=gh-pages $CIRCLE_REPOSITORY_URL $DEPLOY_DIR

cd $DEPLOY_DIR
rm -rf *
cp ../exampleSite/public/* . -r
git add -f .
git commit -m "Deploy build $CIRCLE_BUILD_NUM [ci skip]" || true
git push -f
