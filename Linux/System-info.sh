#!/bin/bash

if [ $UID -ne 0 ]
then
  echo "You need to be sudo to run this script."
  exit
fi

output=$HOME/research/sys_info.txt
ip=$(ip addr | grep inet | tail -2 | head -1)
execs=$(find /home -type f -perm 777 2> /dev/null)

if [ ! -d $HOME/research ]
then
 mkdir $HOME/research
fi

if [ -f $output ]
then
  rm $output
fi

echo "System Info Script" >> $output
date >> $output

echo "" >> $output
echo "Machine Type Info:" >> $output
echo -e "$MACHTYPE \n" >> $output
echo -e "Uname info: $(uname -a) \n" >> $output
echo -e "IP Info:" >> $output
echo -e "$ip \n" >> $output
echo -e "Hostname: $(hostname -s) \n" >> $output
echo "DNS Servers: " >> $output
cat /etc/resolv.conf >> $output

echo -e "\Memory Info:" >> $output
free >> $output

echo -e "\CPU Info:" >> $output
lscpu | grep CPU >> $output

echo -e "\Disk Usage:" >> $output
df -H | head -2 >> $output

echo -e "\Who is logged in: \n $(who -a) \n" >> $output
echo -e "\exec Files:" >> $output
echo $execs >> $output
echo -e "\Top 10 Processes" >> $output
ps aux --sort -%mem | awk {'print $1, $2, $3, $4, $11'} | head >> $output

fi