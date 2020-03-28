#!/bin/bash -x

echo "Welcome to user registration problem."

emailPattern1="^([a-z\d\.-]+)$"
emailPattern2="^([a-z\d\.-]+)@([a-z\d-]+)$"
emailPattern3="^([a-z\d\.-]+)@([a-z\d-]+)\.([a-z]{2,8})$"
emailPattern4="^([a-z\d\.-]+)@([a-z\d-]+)\.([a-z]{2,8})(\.[a-z]{2,8})?$"

#constants
VALIDNAMEPATTERN="^[A-Z][a-z]{2,}$"
EMAILPATTERN="^([a-z\d\.-]+)@([a-z\d-]+)\.([a-z]{2,8})(\.[a-z]{2,8})?$"
MOBILEPATTERN="^[0-9]{2} [6-9]{1}[0-9]{9}$"
PASSWORD="^[A-Za-z0-9]{7,}*(.*[A-Z].*{1}+)*(.*[*&^%$#@!+=].*{1})*[a-zA-Z0-9]$"

function patternCheck()
{
		if [[ $1 =~ $2 ]]
	then
   	echo "Valid Pattern."
	else
   	echo "Invalid Pattern."
	fi
}


read -p "Enter first name: " firstName
patternCheck $firstName $VALIDNAMEPATTERN

read -p "Enter last name: " lastName
patternCheck $lastName $VALIDNAMEPATTERN

read -p "Enter email address: " emailId
patternCheck $emailId $EMAILPATTERN

read -p "Enter mobile number: " mobileNumber
patternCheck $mobileNumber $MOBILEPATTERN

read -p "Enter your password: " password
patternCheck $password $PASSWORD

