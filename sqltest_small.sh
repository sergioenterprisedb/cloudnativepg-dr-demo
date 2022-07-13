#!/bin/bash

# Author      : Sergio Romera
# Created     : 10/03/2022
# Description : Create and insert lines in table

. ./config_cloudnativepg.sh

kubectl exec -it ${cluster_name}-1 -- psql -c "DROP TABLE IF EXISTS test"
kubectl exec -it ${cluster_name}-1 -- psql -c "CREATE TABLE test (id serial, name text)"
kubectl exec -it ${cluster_name}-1 -- psql -c "INSERT INTO test (name) SELECT 'sergio' FROM generate_series(1, 100000)"
