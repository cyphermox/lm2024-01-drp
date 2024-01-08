default:
	@echo make mattermost

mattermost:
	#kubectl create ns mattermost-operator
	#kubectl apply -n mattermost-operator -f https://raw.githubusercontent.com/mattermost/mattermost-operator/master/docs/mattermost-operator/mattermost-operator.yaml
	helm repo add mattermost https://helm.mattermost.com
	helm install mattermost-release mattermost/mattermost-operator --values=values.yaml -n mattermost-operator --create-namespace

