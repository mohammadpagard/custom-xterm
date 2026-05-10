#!/usr/bin/env bash

# ==========================================================
# Docker Helper CLI
# A small interactive utility for common Docker operations.
# Author: Richie
# ==========================================================

set -o errexit
set -o pipefail
set -o nounset


# -------------------------
# Color helpers
# -------------------------

color_blue() {
    printf "\033[34m%s\033[0m" "$1"
}

color_red() {
    printf "\033[31m%s\033[0m" "$1"
}

color_green() {
    printf "\033[32m%s\033[0m" "$1"
}
