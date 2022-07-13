#!/bin/bash

. ./config_cloudnativepg.sh
printf "${green}ikubectl describe backup backup2-test${reset}\n"

kubectl describe backup backup2-test


