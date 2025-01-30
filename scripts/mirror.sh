#!/bin/bash

CONTAINERS_DIR=$1

release="quay.io/openshift-release-dev/ocp-release:4.19.0-ec.1-x86_64"
cmd=$(oc adm release info $release -o json | jq -r .references.spec.tags[].from.name)
for url in $cmd; do
    podman pull $url
done