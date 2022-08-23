#!/bin/bash

# Author      : Sergio Romera
# Created     : 10/03/2022
# Description : Install secrets

. ./config_cloudnativepg.sh

if [ "${OBJECT_STORAGE}" == "AWS" ]; then
  kubectl create secret generic aws-creds \
    --from-literal=ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID" \
    --from-literal=ACCESS_SECRET_KEY="$AWS_SECRET_ACCESS_KEY" \
    --from-literal=ACCESS_SESSION_TOKEN="$AWS_SESSION_TOKEN"
fi

#kubectl apply -f app-secret.yaml
kubectl create secret generic app-secret --from-literal=username=app --from-literal=password=app

#kubectl apply -f superuser-secret.yaml
kubectl create secret generic superuser-secret --from-literal=username=postgres --from-literal=password=admin

kubectl create secret generic minio-creds \
  --from-literal=MINIO_ACCESS_KEY=admin \
  --from-literal=MINIO_SECRET_KEY=password

