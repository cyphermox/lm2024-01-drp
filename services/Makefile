
default:
	@echo "noop"

grafana-operator:
	kubectl create ns grafana
	helm upgrade -n grafana -i grafana-operator oci://ghcr.io/grafana/helm-charts/grafana-operator --version v5.6.0

cluster-monitoring:
	kubectl apply --server-side -f cluster-monitoring/manifests/setup
	kubectl wait --for condition=Established --all CustomResourceDefinition --namespace=monitoring
	kubectl apply -f cluster-monitoring/manifests/
	kubectl apply -f prometheus-k8s-rbac.yaml

k8s-event-logger:
	helm install k8s-event-logger k8s-event-logger/chart/

.PHONY: grafana-operator cluster-monitoring k8s-event-logger
