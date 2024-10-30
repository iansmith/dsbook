#!/bin/bash

set -x

echo '=================== Install Hugo ==================='
DOWNLOAD_HUGO_VERSION=${HUGO_VERSION:-0.136.4+extende}
GITHUB_DEPLOY_REPOSITORY=${GITHUB_REMOTE_REPOSITORY:-$GITHUB_REPOSITORY}
GITHUB_DEPLOY_BRANCH=${GITHUB_BRANCH:-"gh-pages"}
echo "Installing Hugo $DOWNLOAD_HUGO_VERSION"
wget -q -O /tmp/hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v${DOWNLOAD_HUGO_VERSION}/hugo_extended_${DOWNLOAD_HUGO_VERSION}_Linux-64bit.tar.gz &&\
tar -zxf /tmp/hugo.tar.gz -C /tmp &&\
mv /tmp/hugo /usr/local/bin/hugo &&\
rm /tmp/hugo.tar.gz
echo '=================== Create deploy key to push ==================='
# whoami
# pwd
# echo $HOME
mkdir $HOME/.ssh
ssh-keyscan -t rsa github.com > $HOME/.ssh/known_hosts && \
echo "${GIT_DEPLOY_KEY}" > $HOME/.ssh/id_rsa && \
chmod 400 $HOME/.ssh/id_rsa
echo '=================== Make git comfortable ==================='
git config --global --add safe.directory /github/workspace
git config --global init.defaultBranch master
#which node
echo '=================== Build site ==================='
HUGO_ENV=production hugo --logLevel debug --minify -d public --cleanDestinationDir
echo '=================== Publish to GitHub Pages ==================='
cd public
remote_repo="git@github.com:${GITHUB_DEPLOY_REPOSITORY}.git" && \
remote_branch=${GITHUB_DEPLOY_BRANCH} && \
echo "Pushing Builds to $remote_repo:$remote_branch" && \
git init && \
git remote add deploy $remote_repo && \
git checkout $remote_branch || git checkout --orphan $remote_branch && \
git config user.name "${GITHUB_ACTOR}" && \
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com" && \
git add . && \
echo -n 'Files to Commit:' && ls -l | wc -l && \
timestamp=$(date +%s%3N) && \
git commit -m "Automated deployment to GitHub Pages on $timestamp" > /dev/null 2>&1 && \
git push deploy $remote_branch --force && \
rm -fr .git && \
cd ../
echo '=================== Done  ==================='
