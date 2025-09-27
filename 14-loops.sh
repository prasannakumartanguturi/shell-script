#!/bin/bash

userid=$(id -u)

if [ $userid != 0 ]; then
    echo "please run with sudo previllages"
fi 

validate(){

    if [ $1 != 0 ]; then
        echo "installing $package id failed"
    else 
        echo "installing $package is succe"
    fi 
}
for package in $@
do
    dnf list installed $package

    if [ $? != 0 ]; then 
        dnf install $package
        validate $? $package
    else 
        echo "$package already installed"
    fi 
done