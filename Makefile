
# Keep "all"  the first make target, it's also default to avoid mistakes.
all:
	@echo "Nope. Read the Makefile please."

update:
	#git subtree pull --prefix services/cluster-monitoring https://github.com/prometheus-operator/kube-prometheus.git  main --squash
	git subtree add --prefix services/cluster-monitoring https://github.com/prometheus-operator/kube-prometheus.git  main --squash
	git subtree add --prefix services/grafana-operator https://github.com/grafana-operator/grafana-operator.git  master --squash
	git subtree add --prefix services/k8s-event-logger https://github.com/max-rocket-internet/k8s-event-logger  master --squash

.PHONY: golden-image
