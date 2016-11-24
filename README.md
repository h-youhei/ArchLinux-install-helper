By default, this helper won't match your preference.

But you can customize or refer it.

## feature
SSD, UEFI, simple firewall

use systemd-boot as bootloader
use aura as AUR Helper

## Install
see [Arch Wiki/Installation guide](https://wiki.archlinux.org/index.php/Installation_guide), then follow it until fstab.

see [Arch Wiki/fstab](https://wiki.archlinux.org/index.php/Fstab#Identifying_filesystems), run genfstab, then edit /mnt/etc/fstab.

for example,
```bash
#still means not changed
#in (x to y) means edit x to y
#if you use HDD, don't add discard
<dev>      <dir> <type> <options>                                            <dump/fsck>
UUID=still /boot still  (noatime to relatime),discard,still                  0 2
UUID=still /     still  (rw to defaults),(noatime to relatime),discard,still 0 1
UUID=still /home still  (rw to defaults),(noatime to relatime),discard,still 0 2
```
then
```bash
git clone https://github.com/h-youhei/ArchLinux-InstallHelper.git
cd ArchLinux-InstallHelper
./arch-setup.sh
passwd
#type password for root
```
then

see [Arch Wiki/sudo](https://wiki.archlinux.org/index.php/Sudo)

run visudo and edit

for example
```bash
#add administrative user to wheel group
%wheel ALL=(ALL) ALL
#for pacdiff
Defaults env_keep += "DIFFPROG"
#for config
Defaults env_keep += "HOME XDG_CONFIG_HOME"
```