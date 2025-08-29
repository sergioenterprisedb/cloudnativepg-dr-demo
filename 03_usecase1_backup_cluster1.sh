#!/bin/bash

. ./config_cloudnativepg.sh

#printf "${green}kubectl apply -f backup_cluster1.yaml${reset}\n"

#kubectl apply -f backup_cluster1.yaml

# ********

printf "${green}echo \"select pg_switch_wal()\" | kubectl-cnpg psql cluster1${reset}\n"
echo "select pg_switch_wal()" | kubectl-cnpg psql cluster1

printf "${green}kubectl delete -f backup.yaml${reset}\n"
kubectl delete -f backup_cluster1.yaml

printf "${green}kubectl apply -f backup.yaml${reset}\n"
kubectl apply -f backup_cluster1.yaml

printf "${green}echo \"select pg_switch_wal()\" | kubectl-cnpg psql cluster1${reset}\n"
echo "select pg_switch_wal()" | kubectl-cnpg psql cluster1


