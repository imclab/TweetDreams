#!/bin/bash


##########################################################
# 
# THIS SCRIPT IS DEPRECATED. USE startDreaming.py INSTEAD
# 
##########################################################


# get the local machine's IP address
# ip=$(ipconfig getifaddr en1)
# echo $ip


trap 'kill $(jobs -p)' EXIT

echo "launching python server ..."
cd "src/python"
pythonSrvr="./twt.py"
#pythonSrvr="./launch.sh"
$pythonSrvr &
echo "OK"

sleep .2

echo "launching chuck server ..."
cd "../chuck"
chuckSrvr="./twtChuckServer.sh"
$chuckSrvr &
echo "OK"

wait
