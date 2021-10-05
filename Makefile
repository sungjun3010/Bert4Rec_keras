.PHONY: init check format requirements run_mrl run_apc

init:
	python3 -m pip install -U pipenv setuptools
	python3 -m pipenv install --dev

check:
	isort --check-only --profile black rubik_cube -l 120
	black -S -l 120 --check rubik_cube
	pylint rubik_cube

format:
	isort --profile black rubik_cube -l 120
	black -S -l 120 rubik_cube

