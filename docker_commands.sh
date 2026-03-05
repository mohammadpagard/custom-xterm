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
}
function all_containers_id() {
	echo "";
	echo ${DOCKER_ALL_CONTAINERS_ID};
	echo "------------";
}
function show_containers_json() {
	echo "";
	command_format=$(docker ps --format 'json');
	printf "%s" ${command_format} | jq
	echo "";
}
function stop_containers() {
	echo "";
	command_format=$(docker stop ${DOCKER_UP_CONTAINERS_ID});
	echo ${command_format};
	printf "$(ColorBlue '::')UP Containers$(ColorBlue '::') \n" ${DOCKER_UP_CONTAINERS_ID};
}
function remove_stopped_containers() {
	echo "";
	command_format=$(docker rm ${DOCKER_ALL_CONTAINERS_ID});
	echo ${command_format};
	printf "$(ColorBlue '::')All Containers$(ColorBlue '::') \n" ${DOCKER_ALL_CONTAINERS_ID};
}
function force_remove_containers() {
	echo "";
	command_format=$(docker rm -f ${DOCKER_ALL_CONTAINERS_ID});
	echo ${command_format};
	printf "$(ColorBlue '::')All Containers$(ColorBlue '::') \n" ${DOCKER_ALL_CONTAINERS_ID};
}


##
# Main menu function area
##
function menu() {
	echo -ne "
	$(ColorBlue '<< Richie Docker Commands Boilerplate >>')
	$(ColorGreen '1)') Show UP Containers ID
	$(ColorGreen '2)') Show All The Containers ID
	$(ColorGreen '3)') Show UP Containers In JSON Format
	$(ColorGreen '4)') Stop All Containers
	$(ColorGreen '5)') Remove All Stopped Containers
	$(ColorGreen '6)') Force Remove All Containers
	$(ColorGreen '0)') Exit

	Choose one: "

	read user_choice;

	## Check the user choice and call appropriate functions ##
	if [[ ${user_choice} == 1 ]] then
		up_containers_id;
	elif [[ ${user_choice} == 2 ]] then
		all_containers_id;
	elif [[ ${user_choice} == 3 ]] then
		show_containers_json;
	elif [[ ${user_choice} == 4 ]] then
		stop_containers;
	elif [[ ${user_choice} == 5 ]] then
		remove_stopped_containers;
	elif [[ ${user_choice} == 6 ]] then
		force_remove_containers;
	elif [[ ${user_choice} == 0 ]] then
		exit 0;
	fi
}

menu
