#!/bin/bash

function unsign () {
	#This function takes in a file path (of a .mobileconfig file) and removes the signature from it, allowing it to be read.
	
	if [[ "${1}" != "" ]]; then
		security cms -D -i "${1}" | xmllint --format - > ~/Desktop/unsigned.mobileconfig
		echo "unsigned.mobileconfig has been placed on the Desktop."
		echo "Make changes and then type 'sign' to sign it again."
		echo "Do not pass any arguments to 'sign'"
	else
		echo "Please pass in a file path as an argument to this function"
		echo "Example: unsign ~/Downloads/WiFi.mobileconfig"
	fi
	
}

function csr () {
	#This function takes in no parameters, and creates a CSR and Private Key on the Desktop to be sent to a Certificate Authority to be signed.
	openssl req -out ~/Desktop/CSR.csr -new -newkey rsa:2048 -nodes -keyout ~/Desktop/privateKey.key
	echo "CSR and Private Key have been placed on the Desktop."
	echo "Make sure to update the variables in your bash profile after you put the new certificates in place!"
}

function sign () {
	#This function will apply a signing certificate to a Configuration Profile on the Desktop called unsigned.mobileconfig
	
	##########
	#VARIABLES
	##########
	
	#Expiration date of the signing certificate to be displayed as output when signing a profile
	certificateExpiration="September 18, 2020"

	#Paths to the signing certificate and the private key
	#DO NOT ESCAPE SPACES FOR EITHER OF THESE VARIABLES!!

	#Signing Certificate
	signingCertificatePath="/Users/Matthew/Reference-Files/cert.pem"

	#Private Key
	privateKeyPath="/Users/Matthew/Reference-Files/privateKey.key"
	
	echo "Reminder: Signing certificate expires on $certificateExpiration."
	echo "Use command csr to create a new one if necessary."
	openssl smime -sign -signer "$signingCertificatePath" -inkey "$privateKeyPath" -nodetach -outform der -in ~/Desktop/unsigned.mobileconfig -out ~/Desktop/signed.mobileconfig
}