#!/bin/bash

# Ottieni il prossimo workspace disponibile
next_workspace=$(i3-msg -t get_workspaces | jq '.[].num' | sort -n | tail -1 | awk '{print $1+1}')

# Apri l'applicazione passata come argomento sul prossimo workspace
i3-msg "workspace $next_workspace; exec $1"
