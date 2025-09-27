#!/bin/bash

userid=$(id -u)

if [ $userid != 0 ]; then
    echo "please run with sudo previllages"
    exit 1
fi 

validate(){

    if [ $1 != 0 ]; then
        echo "installing $package id failed"
    else 
        echo "installing $package is success"
    fi 
}
for package in $@
do
    dnf list installed $package

    if [ $? != 0 ]; then 
        dnf install $package -y
        validate $? $package
    else 
        echo "$package already installed"
    fi 
done