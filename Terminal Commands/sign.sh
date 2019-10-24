#Create a CSR to give to a certificate authority (GoDaddy, DigiCert, Internal CA, Jamf Pro Built-In CA, etc.)
#This command will create a CSR.csr file and a privateKey.key file on the Desktop

openssl req -out ~/Desktop/CSR.csr -new -newkey rsa:2048 -nodes -keyout ~/Desktop/privateKey.key

#Sign a Configuration Profile
#/path/to/signingCertificate.pem should point to the certificate being used to sign the profile
#/path/to/privateKey.key should point to the private key created when obtaining the CSR. (The CSR.csr used to obtain the certificate must match the privateKey.key that was generated alongside the CSR)
#/path/to/unsigned.mobileconfig should point to the un-signed Configuration Profile that we will applying signing to
#/path/to/signed.mobileconfig should point to where we want the signed profile to get created

openssl smime -sign -signer /path/to/signingCertificate.pem -inkey /path/to/privateKey.key -nodetach -outform der -in /path/to/unsigned.mobileconfig -out /path/to/signed.mobileconfig
