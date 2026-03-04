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

function up_containers() {
	echo "";
	echo ${DOCKER_UP_CONTAINERS_ID};
	echo "";
}
function all_containers() {
	echo "";
	echo ${DOCKER_ALL_CONTAINERS_ID};
	echo "";
}


##
# Main menu function area
##
function menu() {
	echo -ne "
	<< Richie Docker Commands Boilerplate >>
	$(ColorGreen '1)') Show Only UP Containers ID
	$(ColorGreen '2)') Show All The Containers ID
	$(ColorGreen '0)') Exit

	Choose one: 
	"
}

menu
