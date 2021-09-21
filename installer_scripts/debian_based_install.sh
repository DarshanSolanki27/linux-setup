# Color
Color_Off='\033[0m'
Red='\033[0;31m'


sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo apt update

# tools
sudo apt install vim nano curl wget apt-transport-https software-properties-common gdebi-core

# installs
for package in \
# Terminal
    kitty \
    zsh \
# C/C++
    build-essential \
# Python
    python \
    python3.9 \
# JS
    yarn \
# Java
    default-jdk \
# Office
    okular \
# Comms
    telegram-desktop \
# media player
    vlc \
# other tools
    ncdu \
    ranger \
    imagemagick \
    qbittorrent
do
    echo -e "\n${Red} *** Installing $package *** ${Color_Off}"
    sudo apt install $package
done

sudo apt update && sudo apt upgrade -y

# NVM
echo -e "\n${Red} *** Installing NVM *** ${Color_Off}"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install --lts
nvm use --lts

# oh-my-zsh
echo -e "\n${Red} *** Installing oh-my-zsh *** ${Color_Off}"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Python setup
python -m ensurepip --upgrade
pip3 install virtualenv

# VS Code
echo -e "\n${Red} *** Installing VS Code *** ${Color_Off}"
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt update
sudo apt install code

# Sublime text
echo -e "\n${Red} *** Installing Sublime text *** ${Color_Off}"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text

# Discord
echo -e "\n${Red} *** Installing Discord *** ${Color_Off}"
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo gdebi ~/discord.deb
rm ~/discord.deb

# Cleanup
echo -e "\n${Red} *** Cleaning up *** ${Color_Off}"
sudo apt update && sudo apt upgrade -y
sudo apt --fix-broken install --yes
sudo apt autoremove && sudo apt autoclean

