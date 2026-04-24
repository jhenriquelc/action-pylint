#!/bin/sh

set -euf

export PATH="${PATH}:/root/.local/bin"

ruff check --select ALL .
ty check .
