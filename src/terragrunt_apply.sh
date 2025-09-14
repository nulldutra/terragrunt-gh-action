#!/bin/bash

terragrunt_apply() {
    echo "[+] Initalizing Terragrunt"
    terragrunt apply -auto-approve

    if [ "${?}" -ne 0 ]; then
        echo "[+] Failed to apply Terragrunt configuration"
        exit 1
    fi
}
