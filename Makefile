build:
	ansible-playbook playbook.yml -i inventory/hosts.ini -K --verbose

kustomize:
	ansible-playbook kustomize.yml -i inventory/hosts.ini -K --verbose

prepare-workstation:
	ansible-playbook prepare-workstation.yml -i inventory/hosts.ini -K --verbose

deps:
	pip install -r requirements.txt
	ansible-galaxy install -r dependencies.yml