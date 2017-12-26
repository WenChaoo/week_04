#!/bin/bash
#Program:
#Show your name and place
#History:
#2017/12/26 wenchao

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "Your name is :" $(whoami)
echo "Your place is :" $(pwd)
