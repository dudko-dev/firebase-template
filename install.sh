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
