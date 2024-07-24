build:
	ansible-playbook -i "localhost," -c local -k --ask-become-pass playbook.yml

.PHONY: build
