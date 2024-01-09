#!/bin/bash
#
kubectl expose service -n monitoring prometheus-k8s --type=NodePort --target-port=9090 --name=prometheus-service
