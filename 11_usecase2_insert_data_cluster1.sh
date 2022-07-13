#!/bin/bash

. ./config_cloudnativepg.sh
printf "${green}./sqltest_small.sh${reset}\n"

./sqltest_small.sh
