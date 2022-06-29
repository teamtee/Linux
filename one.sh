#!/bin/bash
#[ $1 = "creat"] && satus = 1
#[ $1 = "init"] && satus =
if [ $1 = "creat" ]; then
    echo "[creat]\n"
    cd /boot/myinit
    rm -rf /boot/myinit/*
    dracut --install 'sshd passwd  strace fsck.ext3 ssh busybox login' /boot/foobar.img --force
    lsinitrd --unpack /boot/foobar.img  /boot/myinit
fi
if [ $1 = "init" ]; then
    echo "[init]\n"
    cd /boot/myinit
    rm init
    cp /boot/init /boot/myinit/
    chmod 777 /boot/myinit/init
   # cp --archive /dev/tty /boot/myinit/dev
   # cp --archive /dev/sda5 /boot/myinit/dev

fi
if [ $1 = "done" ]; then
    echo "[done]\n"
    find /boot/myinit/ | cpio -H newc -o | gzip > /boot/toobar.img
fi


