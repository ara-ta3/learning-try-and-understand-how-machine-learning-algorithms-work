PYTHON=python3
VENV_DIR=venv
ACTIVATE=. $(VENV_DIR)/bin/activate;

run:
	$(ACTIVATE) jupyter lab

install/extension:
	$(ACTIVATE) jupyter labextension install @krassowski/jupyterlab-lsp
	$(ACTIVATE) pip install python-language-server[all]

install: $(VENV_DIR)
	$(ACTIVATE) pip install -r requirements.txt

$(VENV_DIR):
	$(PYTHON) -m venv $(VENV_DIR)
