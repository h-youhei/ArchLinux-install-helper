#!/bin/sh

script_path=`readlink -f $0`
script_dir=`dirname $script_path`

ln -s /usr/share/zoneinfo/Asia/Tokyo
hwclock --systohc
printf "LANG=en_US.UTF-8\nLANG=ja_JP.UTF-8\n" >> /etc/locale.gen
locale-gen

$script_dir/boot-setup.sh
