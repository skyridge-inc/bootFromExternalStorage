#!/bin/bash

docker build . --tag try:latest 
[ $? -ne 0 ] && echo "Failed" && exit 1

docker run --name try -v /home/jeff/bootFromExternalStorage:/work --rm -d try:latest 

docker exec -it try bash

docker stop try
