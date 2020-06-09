#!/bin/sh

# Install flatpak and gnome builder
apt update && apt upgrade
apt install flatpak
apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gnome.Builder
flatpak install flathub org.freedesktop.Bustle
