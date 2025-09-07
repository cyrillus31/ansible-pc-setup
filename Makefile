.PHONY: default
default: check_syntax
	ansible-playbook -i inventory.ini playbook.yaml

.PHONY: no_yandex
no_yandex: 
	ansible-playbook -i inventory.ini playbook.yaml --skip-tags yandex,db,obsidian

.PHONY: check_syntax
check_syntax:
	ansible-playbook -i inventory.ini --syntax-check --check *playbook.yaml
