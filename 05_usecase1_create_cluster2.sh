#!/bin/bash

. ./config_cloudnativepg.sh
printf "${green}kubectl apply -f cluster2.yaml${reset}\n"

kubectl apply -f cluster2.yaml

