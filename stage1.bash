#!/bin/bash
#
# run this after you chroot
# 100 english lol

ln -sf /usr/share/zoneinfo/Asia/Kuching /etc/localtime
hwclock --systohc

echo "en_US.UTF-8" >> /etc/locale.gen
locale-gen

echo "LANG=en_US.UTF-8" > /etc/locale.conf

echo "KEYMAP=dvorak" > /etc/vconsole.conf

echo "arch" > /etc/hostanme

echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 arch.localdomain    arch" >> /etc/hosts

echo "insert root password"
passwd

useradd -mG wheel adji
echo "insert user password"
passwd adji

echo "%wheel ALL=(ALL:ALL) ALL" >> /etc/sudoers

grub-install --target=x86-64-efi --bootloader-id=GRUB --efi-directory=/boot/efi

grub-mkconfig -o /boot/grub/grub.cfg
