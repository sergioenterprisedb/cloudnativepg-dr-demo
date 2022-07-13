#!/bin/bash

. ./config_cloudnativepg.sh
printf "${green}kubectl delete -f cluster1.yaml${reset}\n"
printf "${green}kubectl apply -f cluster2_wal_streaming_backup.yaml${reset}\n"

kubectl delete -f cluster1.yaml
sleep 5
kubectl apply -f cluster2_wal_streaming_backup.yaml

