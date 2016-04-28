#!bin/bash

docker-machine create --driver virtualbox default

docker-machine start default

docker-machine env default

eval "$(docker-machine env default)"

docker info
