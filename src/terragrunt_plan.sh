#!/bin/bash

terragrunt_init() {
    echo "[+] Planning Terragrunt configuration"
    terragrunt plan -input=false

    if [ "${?}" -ne 0 ]; then
        echo "[+] Failed to plan Terragrunt configuration"
        exit 1
    fi
}
