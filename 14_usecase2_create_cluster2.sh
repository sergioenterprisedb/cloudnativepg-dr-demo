#!/bin/bash

. ./config_cloudnativepg.sh
printf "${green}kubectl apply -f cluster2_wal_streaming.yaml${reset}\n"

kubectl apply -f cluster2_wal_streaming.yaml

