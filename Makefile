.PHONY: install
install:
	helm install mywebapp-release .

.PHONY: ls
ls:
	helm ls

.PHONY: get_all
get_all:
	kubectl get all

.PHONY: service
service:
	minikube service myhelmapp

.PHONY: upgrade
upgrade:
	helm upgrade mywebapp-release .

.PHONY: uninstall
uninstall:
	helm uninstall mywebapp-release

.PHONY: create_namespaces
create_namespaces:
	kubectl create namespace dev
	kubectl create namespace prod