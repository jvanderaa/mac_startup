.PHONY: start_mac
start_mac:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
	brew install python@3.7
	pip3 install ansible==2.9.6 --user
	brew install git
	ansible-playbook install_packages.yml

.PHONY: lint
lint:
	@echo "Starting Lint"
	docker run -v $(shell pwd):/local $(IMG_NAME):$(IMG_VERSION) yamllint --strict .
	@echo "Completed lint"