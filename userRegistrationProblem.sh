#!/bin/bash -x

echo "Welcome to user registration problem."

#constants
VALIDNAMEPATTERN="^[A-Z][a-z]{2,}$"


read -p "Enter first name:" firstName

if [[ $firstName =~ $VALIDNAMEPATTERN ]]
then
	echo "Valid name."
else
	echo "Invalid name."
fi
