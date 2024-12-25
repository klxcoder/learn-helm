.PHONY: install
install:
	helm install mywebapp-release .

.PHONY: helm_ls
helm_ls:
	helm ls

.PHONY: kubectl_get_all
kubectl_get_all:
	kubectl get all

.PHONY: minikube_service_mywebapp
minikube_service_mywebapp:
	minikube service mywebapp

.PHONY: upgrade
upgrade:
	helm upgrade mywebapp-release .

.PHONY: uninstall
uninstall:
	helm uninstall mywebapp-release
