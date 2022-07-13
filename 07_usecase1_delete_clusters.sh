#!/bin/bash

. ./config_cloudnativepg.sh
printf "${green}kubectl delete backup backup-test${reset}\n"
printf "${green}kubectl delete -f cluster1.yaml${reset}\n"
printf "${green}kubectl delete -f cluster2.yaml${reset}\n"

kubectl delete backup backup-test
kubectl delete -f cluster1.yaml
kubectl delete -f cluster2.yaml

# Kill docker minio
ps -edf | grep minio | grep -v grep | awk '{print $2}' | xargs -I % kill %
