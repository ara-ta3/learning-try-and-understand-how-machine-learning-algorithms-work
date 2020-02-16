PYTHON=python3
VENV_DIR=venv
JUPYTER=$(VENV_DIR)/bin/jupyter

run:
	$(JUPYTER) lab

install: $(VENV_DIR)
	. $</bin/activate ;pip install -r requirements.txt

$(VENV_DIR):
	$(PYTHON) -m venv $(VENV_DIR)

$(JUPYTER): install
