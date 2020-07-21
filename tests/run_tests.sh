#!/bin/bash
set -e
flake8
pydocstyle
coverage run --source osmnx --module pytest --durations=0 --verbose
coverage report -m
