default:
	@echo noop

loki:
	kubectl create namespace logging
	helm repo add grafana https://grafana.github.io/helm-charts
	helm repo update
	helm upgrade --install loki --values values.yaml --namespace=logging grafana/loki-stack
