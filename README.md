# microbs-codespace
Is it possible to make https://microbs.io/ run in a github codespace?

We don't want to install - only a few commands to try-out misc microbs scenarios!

At this point all prerequisites are pre-installed

1/ install microbs
curl -Ls https://microbs.io/install.js | node

2/ ensure minikube is installed
minikube -h

3/ install node 
nvm install 16.14.0

4/ set node 16.14.0 as default version
nvm alias default 16.14.0

5/ 
microbs setup --k8s //works
microbs setup --obs //works - doesn't fail at least
microbs setup --app //broken - how to fix?



