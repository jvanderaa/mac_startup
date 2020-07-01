IMG_NAME=jvanderaa/macstart
IMG_VERSION=0.0.1
.DEFAULT_GOAL := lint

.PHONY: build
build:
	docker build -t $(IMG_NAME):$(IMG_VERSION) .

.PHONY: start_mac
start_mac:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
	brew install python@3.7
	pip3 install ansible==2.9.10 --user
	brew install git
	git clone https://github.com/jvanderaa/mac_startup.git
	ansible-playbook mac_startup/install_packages.yml

.PHONY: lint
lint:
	@echo "Starting Lint"
	docker run -v $(shell pwd):/local $(IMG_NAME):$(IMG_VERSION) yamllint --strict .
	@echo "Completed lint"
