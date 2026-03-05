#!/bin/bash

##
# Declare and initial colors functions
##
green='\e[32m';
blue='\e[34m';
clean='\e[0m';

function ColorGreen() {
	echo -ne "${green}$1${clean}";
}
function ColorBlue() {
	echo -ne "${blue}$1${clean}";
}

##
# Declare and implement the Docker
# everyday commands.
##
DOCKER_ALL_CONTAINERS_ID=$(docker ps -aq);
DOCKER_UP_CONTAINERS_ID=$(docker ps -q);

function all_containers_id() {
	echo "";
	echo ${DOCKER_ALL_CONTAINERS_ID};
	echo "------------";
	echo "";
}
function show_containers_json() {
	echo "";
	command_format=$(docker ps --format 'json');
	printf "%s" ${command_format} | jq
	echo "";
}
function stop_containers() {
	echo "";
	stop_command=$(docker stop ${DOCKER_UP_CONTAINERS_ID});
	echo ${stop_command};
	echo "------------";
	echo "";
}


##
# Main menu function area
##
function menu() {
	echo -ne "
	$(ColorBlue '<< Richie Docker Commands Boilerplate >>')
	$(ColorGreen '1)') Show All The Containers ID
	$(ColorGreen '2)') Show UP Containers In JSON Format
	$(ColorGreen '3)') Stop All Containers
	$(ColorGreen '0)') Exit

	Choose one: "

	read user_choice;
	case ${user_choice} in
		1) all_containers_id; menu;;
		2) show_containers_json; menu;;
		3) stop_containers; menu;;
		0) exit 0 ;;
	esac
}

menu
