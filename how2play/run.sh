#!/bin/bash


REPO=$(git config --get remote.origin.url)

sleep 1

echo -e "How to play:\n${REPO}" | figlet -t | lolcat -a -s 40

echo 
echo 
echo 
echo 
echo "========="
echo "${REPO}"
echo "========="

sleep 20
