#!/bin/bash
answer=y
while [[ $answer == "y" ]]
do
echo "gdv7171. It s programm for enable/disable repo"
echo "When you select repo, programm change to opposite status, i.e. enable or disable repo."
echo "Repo name write from column repo id to slash"
yum repolist all
read -p "Select repo:  " repo
if ! yum-config-manager $repo | grep "enabled" >/dev/null
then
echo "This repo is not exist"
elif yum-config-manager $repo | grep "enabled = True" >/dev/null
then
yum-config-manager --disable $repo >/dev/null
echo $repo was disable
else
yum-config-manager --enable $repo >/dev/null
echo $repo was enable
fi
echo "Do you want restart program? (y/n)"
read answer
done
