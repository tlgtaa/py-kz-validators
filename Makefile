dev-deps:
	pip install --upgrade pip pip-tools
	pip-compile --extra=dev --output-file dev-requirements.txt pyproject.toml

lint:
	flake8 kz

test:
	pytest -sv
