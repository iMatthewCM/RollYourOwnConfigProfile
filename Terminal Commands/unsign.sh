#This command will remove the signing signature from a .mobileconfig profile,
#format it, and create a new, un-signed copy at a designated path.

security cms -D -i /path/to/profile.mobileconfig | xmllint --format - > /path/to/output.mobileconfig

