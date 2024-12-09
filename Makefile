.PHONY: build

build:
	ansible-playbook -i "localhost," -c local -k --ask-become-pass playbook.yml

setup:
	brew bundle

