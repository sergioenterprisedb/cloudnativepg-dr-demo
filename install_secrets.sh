#!/bin/bash

# Author      : Sergio Romera
# Created     : 10/03/2022
# Description : Install secrets

. ./config_cloudnativepg.sh

kubectl delete secret minio-creds
kubectl delete secret aws-creds
kubectl delete secret app-secret

if [ "${OBJECT_STORAGE}" == "AWS" ]; then
  kubectl create secret generic aws-creds \
    --from-literal=ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID" \
    --from-literal=ACCESS_SECRET_KEY="$AWS_SECRET_ACCESS_KEY" \
    --from-literal=ACCESS_SESSION_TOKEN="$AWS_SESSION_TOKEN"
elif [ "${OBJECT_STORAGE}" == "MINIO" ]; then
  kubectl create secret generic minio-creds \
    --from-literal=MINIO_ACCESS_KEY=admin \
    --from-literal=MINIO_SECRET_KEY=password
fi

kubectl create secret generic app-secret --from-literal=username=app --from-literal=password=app


