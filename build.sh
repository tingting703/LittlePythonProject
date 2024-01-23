#!/bin/bash

# Set environment variables
export PYTHON3_PATH="/Library/Developer/CommandLineTools/usr/bin/python3"
export PIP_PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin/pip"
export PYTEST_PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin/pytest"

# Add Python 3, pip, and pytest to the PATH
export PATH="${PYTHON3_PATH}:${PIP_PATH}:${PYTEST_PATH}:${PATH}"

# Display the versions for verification
python3 --version
pip --version
pytest --version


pip install -r requirements.txt
cd shopping_cart/
python3 -m pytest tests
