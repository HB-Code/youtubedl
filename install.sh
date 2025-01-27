#!/data/data/com.termux/files/usr/bin/bash
#Copyright 2020 HackBeast

echo -e "Updating default packages\n"
apt update && apt -y upgrade

echo -e "Requesting acces to storage\n"
termux-setup-storage
sleep 5

echo -e "Installing python\n"
pkg install -y python

echo -e "Installing youtube-dl\n"
yes | pip install youtube-dl

echo -e "Creating the Youtube folder to download the files\n"
mkdir ~/storage/shared/Youtube

echo -e "Creating youtube-dl folder for config\n"
mkdir -p ~/.config/youtube-dl

echo -e "Creating bin folder\n"
mkdir ~/bin

echo -e "Downloading and installing termux-url-opener\n"
wget http://HB-Code.github.io/resources/scripts/youtubedl/termux-url-opener -O ~/bin/termux-url-opener
dos2unix ~/bin/termux-url-opener


echo -e "\n"
echo -e "Copyright 2020 HackBeast\n"