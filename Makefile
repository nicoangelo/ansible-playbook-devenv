.DEFAULT_GOAL := run
.PHONY: *

extra-vars.yaml:
	@cp ./extra-vars.example.yaml ./extra-vars.yaml

galaxy:
	ansible-galaxy install -r ./requirements.yml

run: galaxy extra-vars.yaml
	ansible-playbook ./main.yml --ask-become-pass

check: galaxy extra-vars.yaml
	ansible-playbook ./main.yml --ask-become-pass --extra-vars "@extra-vars.yaml" --check --diff
