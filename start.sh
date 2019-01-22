#!/bin/bash
export FLASK_APP=ft.py
# - w 5 / 2 CPU
# Generally we recommend (2 x $num_cores) + 1
gunicorn --bind 0.0.0.0:5000 -w 5 app:app
