build:
	ansible-playbook -i "localhost," -c local -k --ask-become-pass main.yml

.PHONY: build
