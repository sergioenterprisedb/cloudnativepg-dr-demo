#!/bin/bash

. ./config_cloudnativepg.sh
printf "${green}kubectl apply -f backup_cluster1.yaml${reset}\n"

kubectl apply -f backup_cluster1.yaml

