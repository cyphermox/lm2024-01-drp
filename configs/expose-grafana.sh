#!/bin/bash
#
kubectl expose service -n grafana grafana-service --type=NodePort --target-port=3000 --name=grafana
