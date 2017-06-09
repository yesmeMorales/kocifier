#!/usr/bin/env bash

shopt -s extglob
set -o errtrace
set -o errexit

#######################
# Ubermix customization
#######################

# Update packages
sudo apt-mark hold grub2-common grub-common grub-pc grub-pc-bin 
sudo apt-get update 
sudo apt-get upgrade

# Add wireless drivers
sudo apt-get purge bcmwl-kernel-source 
sudo apt-get install firmware-b43legacy-installer 
sudo apt-get install firmware-b43-installer 

# Install software

software=( ace-of-penguins
apache2
aptitude
aspell
aspell-en
aspell-es
audacious
biogenesis
blinken
build-essential
childsplay
childsplay-alphabet-sounds-es
cups
dia
dia-common
dia-gnome
dia-shapes
evince
extremetuxracer
firmware-b43legacy-installer
firmware-b43-installer
flashplugin-downloader
flashplugin-nonfree
galculator
gamine
gamine-data
gbrainy
gcompris
gcompris-data
gcompris-sound-es
gimp
gimp-help-en
gimp-help-es
gnome-chess
gnome-sudoku
gnome-system-tools
graphthing
gzip
hplip
kalzium
kalzium-data
kdeedu
kgeography
kgeography-data
ktouch
ktouch-data
kturtle
kwordquiz
laby
language-pack-en
language-pack-en-base
language-pack-gnome-es
language-pack-gnome-es-base
language-pack-kde-es
libreoffice
libreoffice-base
libreoffice-base-core
libreoffice-calc
libreoffice-common
libreoffice-core
libreoffice-dmaths
libreoffice-draw
libreoffice-gnome
libreoffice-gtk
libreoffice-help-en-us
libreoffice-help-es
libreoffice-impress
libreoffice-l10n-en-us
libreoffice-l10n-es
libreoffice-lightproof-en
libreoffice-math
libreoffice-mysql-connector
libreoffice-pdfimport
libreoffice-templates
libreoffice-writer
marble
mathwar
mysql-common
mysql-server-core-5.5
onboard
p7zip
php5
php5-mysql
php5-mcrypt
php5-common
php5-cli
planetpenguin-racer
pychess
pysiogame
ri-li
scratch
stellarium
stellarium-data
supertux
tuxmath
tuxpaint
tuxpaint-data
tuxpaint-plugins
tuxpaint-stamps
tuxpuck
tuxtype
tuxtype-data
tuxtype-data-nonfree
ubuntu-edu-preschool
ubuntu-edu-primary
ubuntu-edu-secondary
ubuntu-edu-tertiary
vlc
wamerican
wspanish
ubuntu-keyboard-english
ubuntu-keyboard-spanish
)

for package in ${#array[*]} 
do
  sudo apt-get -y install $package
done

# Change the wallpaper using commands

# Install Kids Ruby

# Change regional formats 

# Configure input methods 

sudo apt-get remove fcitx* 

# Change the timezone to Mexico City

# Install Language Pack support for Spanish
