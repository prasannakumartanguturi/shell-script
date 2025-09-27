#!/bin/bash
user_id=$(id -u)
echo $user_id
if [ $user_id != 0 ]; then
    echo "run the command with user access"
else    
    echo "installing nginx"
    #dnf install nginx -y
    dnf list installed nginx
    if [ $? -ne 0 ]; then
        dnf install nginx -y
    else
        echo "nginx already installedd"
    fi
fi