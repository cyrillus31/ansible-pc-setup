.PHONY: default
default: check_syntax
	ansible-playbook -i inventory.ini playbook.yaml

.PHONY: check_syntax
check_syntax:
	ansible-playbook -i inventory.ini --syntax-check --check *playbook.yaml
