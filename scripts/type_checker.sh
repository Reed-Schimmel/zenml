#!/usr/bin/env bash
# Usage:
# `type_checker.sh [--install-types]`
# * --install-types: Installs missing type stubs before running mypy

set -e
set -x

export ZENML_DEBUG=1
SRC="src/zenml"

if [ "$1" = "--install-types" ]
then
  MYPY_ARGS="--install-types --non-interactive"
fi

mypy $MYPY_ARGS "$SRC"