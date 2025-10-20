#!/bin/bash

# Suppress multiple urllib3 warnings
export PYTHONWARNINGS="ignore:Unverified HTTPS request,ignore::urllib3.exceptions.NotOpenSSLWarning"

poetry version patch
poetry lock
poetry export -f requirements.txt --output requirements.txt --without-hashes
poetry build
poetry publish