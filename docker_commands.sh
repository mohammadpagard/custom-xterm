#!/bin/bash

##
# Declare and initial colors
##
green='\e[32m';
blue='\e[34m';
clean='\e[0m';

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
