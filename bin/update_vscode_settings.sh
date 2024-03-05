#!/bin/bash

wget https://raw.githubusercontent.com/pauvilella/utils/main/.vscode/settings.json
cat settings.json > .vscode/settings.json
rm settings.json
