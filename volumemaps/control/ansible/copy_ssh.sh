#!/bin/bash
for user in root ansible
do
  for os in ubuntu centos suse alpine
  do
    for number in 1 2
    do
      sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${number}
    done
  done
done

