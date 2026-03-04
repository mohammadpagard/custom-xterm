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

function up_containers_id() {
	echo "";
	echo ${DOCKER_UP_CONTAINERS_ID};
	echo "------------";
	echo "";
}
function all_containers_id() {
	echo "";
	echo ${DOCKER_ALL_CONTAINERS_ID};
	echo "------------";
	echo "";
}


##
# Main menu function area
##
function menu() {
	echo -ne "
	$(ColorBlue '<< Richie Docker Commands Boilerplate >>')
	$(ColorGreen '1)') Show Only UP Containers ID
	$(ColorGreen '2)') Show All The Containers ID
	$(ColorGreen '0)') Exit

	Choose one: "

	read user_choice;
	case ${user_choice} in
		1) up_containers_id; menu;;
		2) all_containers_id; menu;;
		0) exit 0 ;;
	esac
}

menu
