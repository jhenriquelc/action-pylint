# Python linting and testing using ruff and ty

A GitHub action that checks Python code using
[ruff](https://github.com/astral-sh/ruff) and
[ty](https://github.com/astral-sh/ty).

> [!WARNING]
> **fork notice**
> 
> This is a fork for personal use. I don't make any guarantees that I'll maintain this in the future.
> 
> I just wanted to use the original, but without Black.

## Github Actions configuration examples

```yaml
on: [push, pull_request]
name: Python linting

permissions:
  contents: read

jobs:
  PythonLinting:
    name: Python linting
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Python linting
        uses: jhenriquelc/action-pylint@v2
```

## Script

```sh
#!/bin/sh

set -euf

export PATH="${PATH}:/root/.local/bin"

ruff check --select ALL .
ty check .
```
