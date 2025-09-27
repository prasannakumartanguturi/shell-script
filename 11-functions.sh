#!/bin/bash

userid=$(id -u)
G="\e[32m"
if [ $userid != 0 ]; then 
    echo "run with sudo access"
    exit 1
fi
validate(){

    if [$1 != 0 ]; then 
        echo "installing $2 is fail"
    else
        echo "imstalling $2 is success"
    fi
}
dnf list installed nginx -y #checking nginx is available or not
    if [ $? != 0 ]; then
        dnf install nginx -y
        validate $? "nginx"
    else
        echo "nginx already installed"
    fi 
echo -e "$G task completed $N"