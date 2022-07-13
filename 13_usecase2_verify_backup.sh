#!/bin/bash

. ./config_cloudnativepg.sh
printf "${green}ikubectl describe backup backup-test${reset}\n"

kubectl describe backup backup-test


