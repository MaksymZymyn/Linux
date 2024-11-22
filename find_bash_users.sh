#!/bin/bash

# Path to the /etc/passwd file
PASSWD_FILE="/etc/passwd"

# Check if the file exists
if [[ -f "$PASSWD_FILE" ]]; then
    # Use awk to find users with /bin/bash as their shell
    awk -F: '$7 == "/bin/bash" { print $1 }' "$PASSWD_FILE"
else
    echo "The file $PASSWD_FILE does not exist."
fi
