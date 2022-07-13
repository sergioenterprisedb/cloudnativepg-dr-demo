#!/bin/bash

# Author      : Sergio Romera
# Created     : 10/03/2022
# Description : Config file

export version1=`kubectl-cnpg version | awk '{ print $2 }' | awk -F":" '{ print $2}'`
export version2=${version1%??}
export plugging="https://github.com/cloudnative-pg/cloudnative-pg/raw/main/hack/install-cnpg-plugin.sh"
export operator="https://raw.githubusercontent.com/cloudnative-pg/cloudnative-pg/release-${version2}/releases/cnpg-${version1}.yaml"
export deployment="cnpg-system cnpg-controller-manager"
export cluster_file1="cluster1.yaml"
export cluster_file2="cluster2.yaml"
export cluster_name="cluster1"
export S3_MINIO_DIRECTORY="./S3_MINIO"
export S3_AWS_DIRECTORY="./S3_AWS"
# MINIO or AWS
export OBJECT_STORAGE="MINIO"
export IMAGENAME="ghcr.io/cloudnative-pg/postgresql:14.3"
# AWS S3
export S3_DESTINATIONPATH="s3://sergiocnp/cnp/dr"
export s3_cluster1="s3://sergiocnp/cnp/dr/cluster1"
export s3_cluster2="s3://sergiocnp/cnp/dr/cluster2"

# MinIO config
export HOSTNAME=$(ifconfig -a|grep 192|head -n1|awk '{print $2}')
export MINIO_DESTINATIONPATH="s3://cloudnativepg/"
export MINIO_PORT=9000
export MINIO_ENDPOINTURL="http://${HOSTNAME}:${MINIO_PORT}"

# **************
# *** Colors ***
# **************
reset="\e[0m"
green="\e[32m"
red="\e[31m"
default="\e[39m"

