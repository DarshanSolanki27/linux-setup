echo "This script downloads and installs cool-retro-term"
echo "Source code can be found here -> https://github.com/Swordfish90/cool-retro-term"
sudo apt update
echo "Downloading and installing the updates for each outdated package and dependency on your system"

sudo apt install snapd
echo "Snap installed"

echo "Getting cool-retro-term"
sudo snap install cool-retro-term --classic