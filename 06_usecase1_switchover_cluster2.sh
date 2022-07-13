#!/bin/bash

. ./config_cloudnativepg.sh
printf "${green}kubectl delete -f cluster1.yaml${reset}\n"
printf "${green}kubectl apply -f cluster2_restore.yaml${reset}\n"

kubectl delete -f cluster1.yaml
sleep 5
kubectl apply -f cluster2_restore.yaml

