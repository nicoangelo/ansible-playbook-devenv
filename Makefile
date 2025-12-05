.DEFAULT_GOAL := run
.PHONY: galaxy run check
ifeq ($(shell uname), Darwin)
playbook_suffix=-macos
endif

extra-vars.yaml:
	@cp ./extra-vars.example.yaml ./extra-vars.yaml

galaxy:
	ansible-galaxy install -r ./requirements.yml

run: galaxy extra-vars.yaml
	ansible-playbook ./main$(playbook_suffix).yml --ask-become-pass --extra-vars "@extra-vars.yaml" --diff

check: galaxy extra-vars.yaml
	ansible-playbook ./main$(playbook_suffix).yml --ask-become-pass --extra-vars "@extra-vars.yaml" --check --diff
