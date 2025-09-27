#!/bin/bash
userid=$(id -u)

if [ $userid != 0 ]; then
    echo "please run with sudo previlages"
    exit 1
fi
validate(){
    if [ $1 != 0 ]; then
        echo "installing $2 is failed"
        exit 1
    else
        echo "installing $2 is success" 
    fi
}

dnf install mysql -y
validate $? "mysql"