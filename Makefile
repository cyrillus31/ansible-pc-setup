.PHONY: default
default:
	ansible-playbook -i inventory.ini playbook.yaml
