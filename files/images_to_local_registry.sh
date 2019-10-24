#!/usr/bin/env bash

docker images | grep kolla | grep -v local | awk '{print $1,$2}' | while read -r image tag; do
    docker tag ${image}:${tag} 10.76.96.59:4000/${image}:${tag}
    docker push 10.76.96.59:4000/${image}:${tag}
done
