#!/bin/bash
#Check if username was provided
if [ -z "$1" ]; then
   echo "Please provide a username"
 exit 1
fi
#Check if the user exists in the system
if id "$1" &>/dev/null; then
   echo "User found"
else
   echo "User not found"
fi

