#!/bin/bash -x

echo "Welcome to user registration problem."

#constants
VALIDNAMEPATTERN="^[A-Z][a-z]{2,}$"
EMAILPATTERN="^([a-z\d\.-]+)@([a-z\d-]+)\.([a-z]{2,8})(\.[a-z]{2,8})?$"
MOBILEPATTERN="^[0-9]{2} [6-9]{1}[0-9]{9}$"
PASSWORD="^[A-Za-z]{7,}*(.*[A-Z].*{1}+)$"

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

read -p "Enter mobile number: " mobileNumber
if [[ $mobileNumber =~ $MOBILEPATTERN ]]
then
	echo "Valid mobile number."
else
	echo "Invalid number."
fi

read -p "Enter your password: " password
if [[ $password =~ $PASSWORD ]]
then
	echo "Valid password."
else
	echo "Invalid password"
fi
