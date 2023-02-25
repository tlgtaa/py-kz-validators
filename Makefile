install-deps: deps
	pip-sync requirements.txt

deps:
	pip install --upgrade pip pip-tools
	pip-compile --output-file requirements.txt pyproject.toml

dev-deps: deps
	pip-compile --extra=dev --output-file dev-requirements.txt pyproject.toml

lint:
	flake8 kz

test:
	pytest -sv
