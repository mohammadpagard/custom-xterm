#!/usr/bin/env bash

# ==========================================================
# Docker Helper CLI
# A small interactive utility for common Docker operations.
# Author: Richie
# ==========================================================

set -o errexit
set -o pipefail
set -o nounset


# =========================
# Color helpers
# =========================

color_blue() {
    printf "\033[34m%s\033[0m" "$1"
}

color_red() {
    printf "\033[31m%s\033[0m" "$1"
}

color_green() {
    printf "\033[32m%s\033[0m" "$1"
}


# =========================
# Docker helpers
# =========================

get_running_containers() {
    docker ps -q
}

get_all_containers() {
    docker ps -aq
}

show_running_containers() {
    echo
    color_blue "Running Containers:"
    echo
    docker ps
}

show_all_containers() {
    echo
    color_blue "All Containers:"
    echo
    docker ps -a
}

show_containers_json() {
    echo
    color_blue "Containers (JSON format):"
    echo
    docker ps --format json | jq
}

stop_container() {

    read -rp "Enter container ID or name: " container

    if docker ps -q --no-trunc | grep -q "$container"; then
        docker stop "$container"
        color_green "Container stopped successfully."
    else
        color_red "Container not found among running containers."
    fi
}

remove_container() {

    read -rp "Enter container ID or name: " container

    if docker ps -aq --no-trunc | grep -q "$container"; then
        docker rm "$container"
        color_green "Container removed successfully."
    else
        color_red "Container not found."
    fi
}

# =========================
# Menu
# =========================

show_menu() {

    echo
    color_blue "===== Docker Helper CLI ====="
    echo
    echo "1) Show running containers"
    echo "2) Show all containers"
    echo "3) Stop container"
    echo "4) Remove container"
    echo "5) Show containers as JSON"
    echo "0) Exit"
    echo
}
