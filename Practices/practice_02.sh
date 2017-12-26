#!/bin/bash
#Program:
#How long before your birthday?
#History:
#2017/12/26 wenchao

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Pleace input your birthday,(YYYYMMDD ex>20171226): " date_birthday

#2. 测试一下，这个输入的内容是否正确
date_d=$(echo $date_birthday | grep '[0-9]\{8\}')
if [ "$date_d" == "" ];then
	echo "You input the wrong date format..."
	exit 1
fi

#开始计算日期
declare -i date_b=`date --date="$date_birthday" +%s` 
declare -i date_now=`date +%s`
declare -i date_s=$(($date_b-$date_now))
declare -i date_d=$(($date_s/60/60/24))

if [ "$date_s" -lt "0" ]; then
	echo "Your birthday is "$((-1*$date_d))" days later"
else
	echo "Your birthday in $date_d days"
fi
