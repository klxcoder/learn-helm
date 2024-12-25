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

.PHONY: install_dev
install_dev:
	helm install mywebapp-release-dev . --values values.yaml -f values-dev.yaml -n dev

.PHONY: ls_dev
ls_dev:
	helm ls -n dev