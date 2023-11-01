#!/bin/bash

# Define text color variables
GREEN='\033[0;32m'
NC='\033[0m' # No Color


echo -e "${GREEN}Waking up DHCP...${NC}"
sudo dhclient
echo -e "${GREEN}DHCP enabled${NC}"


echo -e "${GREEN}Updating package list...${NC}"
sudo apt update

echo -e "${GREEN}Installing supertuxkart...${NC}"
sudo apt install supertuxkart -y


if [ ! -f "xonotic-0.8.6.zip" ]; then
    echo -e "${GREEN}Downloading Xonotic 0.8.6...${NC}"
    wget https://dl.xonotic.org/xonotic-0.8.6.zip
else
    echo -e "${GREEN}Xonotic 0.8.6 zip file already exists.${NC}"
fi

echo -e "${GREEN}Unzipping Xonotic...${NC}"
unzip xonotic-0.8.6.zip -d ~/xonotic

echo -e "${GREEN}Making desktop file...${NC}"
sudo chmod +x xonotic.desktop
sudo cp xonotic.desktop /usr/share/applications

echo -e "${GREEN}Installing Xonotic...${NC}"
cd ~/xonotic

echo -e "${GREEN}Cleaning up...${NC}"
rm ~/xonotic-0.8.6.zip

echo -e "${GREEN}Xonotic 0.8.6 is now installed.${NC}"
~/xonotic/Xonotic/xonotic-linux-glx.sh
