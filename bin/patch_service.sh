#!/bin/bash

namespace=$1
service=$2

if [ -z "$namespace" -o -z "$service" ]; then
	echo "Usage: $0 <namespace> <service>"
	exit 1
fi

kubectl patch svc --namespace=$namespace $service --type='json' -p '[{"op":"replace","path":"/spec/type","value":"NodePort"}]'

