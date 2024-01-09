#!/bin/bash
#
kubectl expose service -n monitoring grafana --type=NodePort --target-port=3000 --name=grafana-service
