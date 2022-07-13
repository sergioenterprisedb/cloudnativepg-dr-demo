#!/bin/bash

. ./config_cloudnativepg.sh
printf "${green}kubectl apply -f cluster1_wal_streaming_restore.yaml${reset}\n"

kubectl apply -f cluster1_wal_streaming_restore.yaml

