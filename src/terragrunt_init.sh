#!/bin/bash

terragrunt_init() {
    echo "[+] Initalizing Terragrunt"
    terragrunt init -input=false

    if [ "${?}" -ne 0 ]; then
        echo "[+] Failed to initialize Terragrunt configuration"
        exit 1
    fi
}
