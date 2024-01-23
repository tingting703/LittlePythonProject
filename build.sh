#!/bin/bash


echo "$PATH"
python3 --version
pip --version
pytest --version


pip install -r requirements.txt
cd shopping_cart/
python3 -m pytest tests
