#!/bin/bash -x

echo "Welcome to user registration problem."

#constants
VALIDNAMEPATTERN="^[A-Z][a-z]{2,}$"
EMAILPATTERN="^([a-z\d\.-]+)@([a-z\d-]+)\.([a-z]{2,8})(\.[a-z]{2,8})?$"

read -p "Enter first name: " firstName
if [[ $firstName =~ $VALIDNAMEPATTERN ]]
then
	echo "Valid firstname."
else
	echo "Invalid name."
fi

read -p "Enter last name: " lastName
if [[ $lastName =~ $VALIDNAMEPATTERN ]]
then
	echo "Valid lastname."
else
	echo "Invalid name."
fi

read -p "Enter email address: " emailId
if [[ $emailId =~ $EMAILPATTERN ]]
then
	echo "Valid Email ID."
else
	echo "Invalid Email ID."
fi
