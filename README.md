# Firebase Template

This is part of the [firebase-template project](!https://github.com/search?q=topic%3Afirebase-template+org%3Adudko-dev&type=Repositories), which consists of:

- `firebase` - firebase settings, including hosting settings and basic access rights, repo: [dudko-dev/firebase-template](https://github.com/dudko-dev/firebase-template)
- `firebase/functions` - gRPC and http cloud functions, repo: [dudko-dev/firebase-template-functions](https://github.com/dudko-dev/firebase-template-functions)
- `firebase/hosting/website` - a web portal based on react, repo: [dudko-dev/firebase-template-website](https://github.com/dudko-dev/firebase-template-website)
- `firebase/hosting/api` - web portal on js, repo: [dudko-dev/firebase-template-api](https://github.com/dudko-dev/firebase-template-api)

The project allows you to quickly deploy the basic configuration of firebase, configure the basic skeleton of cloud functions, deploy a portal on react with ready-made authorization/registration/email confirmation/password recovery methods.

just run a script:

```bash
#!/bin/bash
GIT_URL="https://github.com/"
FIREBASE_REPO="dudko-dev/firebase-template"
FIREBASE_REPO_DIR="."
FIREBASE_FUNCTIONS_REPO="dudko-dev/firebase-template-functions"
FIREBASE_FUNCTIONS_DIR="./functions"
FIREBASE_WEBSITE_REPO="dudko-dev/firebase-template-website"
FIREBASE_WEBSITE_DIR="./hosting/website"
FIREBASE_WEBAPI_REPO="dudko-dev/firebase-template-api"
FIREBASE_WEBAPI_DIR="./hosting/api"

mkdir $FIREBASE_REPO_DIR
git clone $GIT_URL$FIREBASE_REPO $FIREBASE_REPO_DIR
mkdir $FIREBASE_FUNCTIONS_DIR
git clone $GIT_URL$FIREBASE_FUNCTIONS_REPO $FIREBASE_FUNCTIONS_DIR
mkdir $FIREBASE_WEBSITE_DIR
git clone $GIT_URL$FIREBASE_WEBSITE_REPO $FIREBASE_WEBSITE_DIR
mkdir $FIREBASE_WEBAPI_DIR
git clone $GIT_URL$FIREBASE_WEBAPI_REPO $FIREBASE_WEBAPI_DIR
```

## Before using

- setup your firebase project(s) here: <https://console.firebase.google.com/u/0/>
- create realtime database here: <https://console.firebase.google.com/u/0/project/YOUR_PROJECT_ID/database>
- create firestore here: <https://console.firebase.google.com/u/0/project/YOUR_PROJECT_ID/firestore>
- create storage: <https://console.firebase.google.com/u/0/project/YOUR_PROJECT_ID/storage>
- add websites (website, api) in hosting: <https://console.firebase.google.com/u/0/project/YOUR_PROJECT_ID/hosting>
- edit `.firebaserc` file
- create sdk account for web application and setup in in the `hosting/website/.env.*` files
- create service account key and copy it into `functions/accounts`, you can create it here: <https://console.cloud.google.com/iam-admin/serviceaccounts>
- service account must have rights (minimum): `Cloud Functions Admin`, `Cloud Storage for Firebase Admin`, `Firebase Admin`, `Firebase Admin SDK Administrator Service Agent`, `Firebase Realtime Database Admin`, `Service Account Token Creator` (to deploy your project), `Service Account User` (to deploy your project), you can add it here: <https://console.cloud.google.com/iam-admin/iam>
- edit encrypt/decrypt settings in `functions/scripts/encryption-settings.json`
- edit all workflow files in `.github/workflows` directories in `./`, `./functions`, `./hosting/website`, `./hosting/api`
- add `ENVKEY` (from `functions/.envkey`) and `TOKEN_FOR_WORKFLOW` (you can create PAT here: <https://github.com/settings/tokens?type=beta>) to every of the repos
- to deploy cloud functions, you also need to enable the following APIs:
  - [CloudFunctions API](https://console.cloud.google.com/marketplace/product/google/cloudfunctions.googleapis.com)
  - [CloudBuild API](https://console.cloud.google.com/marketplace/product/google/cloudbuild.googleapis.com)
  - [EventArc API](https://console.cloud.google.com/marketplace/product/google/eventarc.googleapis.com)
  - [CloudRun API](https://console.cloud.google.com/marketplace/product/google/run.googleapis.com)

## Before using functions

- add your service account files to `functions/accounts` directory (you can use more than one file for the different projects)
- add your environments variables in `functions/.env.YOUR_PROJECT_ID` file (you can use more than one file for the different projects)
- add random uuid/key in `functions/.envkey` file
- encrypt your files `npm run encrypt` in `functions`

## Before using website

- setup authorized domains in <https://console.firebase.google.com/u/0/project/YOUR_PROJECT_ID/authentication/settings>
- customize url action like to `https://YOUR_HOSTNAME/auth/action` in <https://console.firebase.google.com/u/0/project/YOUR_PROJECT_ID/authentication/emails> (see `.env` files for more info)
- add your own project settings to `.env.*` files
