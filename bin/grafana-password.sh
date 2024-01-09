#!/bin/bash

kubectl get secrets/grafana-admin-credentials -n grafana -ojsonpath={.data.GF_SECURITY_ADMIN_PASSWORD} | base64 -d
