.PHONY: install
install:
	helm install mywebapp-release .

.PHONY: kubectl_get_all
kubectl_get_all:
	kubectl get all
