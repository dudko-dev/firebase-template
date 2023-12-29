# Firebase Template

This is part of the [firebase-template project](!https://github.com/search?q=topic%3Afirebase-template+org%3Adudko-dev&type=Repositories), which consists of:

- `firebase` - firebase settings, including hosting settings and basic access rights, repo: [dudko-dev/firebase-template](https://github.com/dudko-dev/firebase-template)
- `firebase/functions` - gRPC and http cloud functions, repo: [dudko-dev/firebase-template-functions](https://github.com/dudko-dev/firebase-template-functions)
- `firebase/hosting/api` - a web portal based on react, repo: [dudko-dev/firebase-template-website](https://github.com/dudko-dev/firebase-template-website)
- `firebase/hosting/website` - web portal on js, repo: [dudko-dev/firebase-template-api](https://github.com/dudko-dev/firebase-template-api)

The project allows you to quickly deploy the basic configuration of firebase, configure the basic skeleton of cloud functions, deploy a portal on react with ready-made authorization/registration/email confirmation/password recovery methods.

just run a script:

```bash
#!/usr/bin/bash
FIREBASE_REPO="dudko-dev/firebase-template"
FIREBASE_REPO_DIR="."
FIREBASE_FUNCTIONS_REPO="dudko-dev/firebase-template-functions"
FIREBASE_FUNCTIONS_DIR="./functions"
FIREBASE_WEBSITE_REPO="dudko-dev/firebase-template-website"
FIREBASE_WEBSITE_DIR="./hosting/website"
FIREBASE_WEBAPI_REPO="dudko-dev/firebase-template-api"
FIREBASE_WEBAPI_DIR="./hosting/api"

mkdir $FIREBASE_REPO_DIR
git clone $FIREBASE_REPO $FIREBASE_REPO_DIR
mkdir $FIREBASE_FUNCTIONS_DIR
git clone $FIREBASE_FUNCTIONS_REPO $FIREBASE_FUNCTIONS_DIR
mkdir $FIREBASE_WEBSITE_DIR
git clone $FIREBASE_WEBSITE_REPO $FIREBASE_WEBSITE_DIR
mkdir $FIREBASE_WEBAPI_DIR
git clone $FIREBASE_WEBAPI_REPO $FIREBASE_WEBAPI_DIR
```
