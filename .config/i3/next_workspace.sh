#!/bin/bash

# Ottieni l'elenco dei workspace attualmente utilizzati
workspaces=$(i3-msg -t get_workspaces | jq -r '.[].name')

# Cerca il primo workspace non utilizzato, partendo da 1
next_workspace=1
while [[ $workspaces =~ (^|[[:space:]])$next_workspace($|[[:space:]]) ]]; do
    ((next_workspace++))
done

# Stampa il nome del prossimo workspace disponibile
echo $next_workspace
