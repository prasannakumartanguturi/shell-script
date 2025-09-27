#!/bin/bash
user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "run the command with user access"
else    
    echo "installing nginx"
    dnf installn nginx -y
fi