#!/bin/bash

# Define text color variables
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Waking up DHCP${NC}"
sudo dhclient

echo -e "${GREEN}Updating package list...${NC}"
sudo apt update

echo -e "${GREEN}Installing supertuxkart...${NC}"
sudo apt install supertuxkart -y

echo -e "${GREEN}Downloading Xonotic 0.8.6...${NC}"
wget https://dl.xonotic.org/xonotic-0.8.6.zip

echo -e "${GREEN}Unzipping Xonotic...${NC}"
unzip xonotic-0.8.6.zip -d ~/xonotic

echo -e "${GREEN}Installing Xonotic...${NC}"
cd ~/xonotic

echo -e "${GREEN}Cleaning up...${NC}"
rm ~/xonotic-0.8.6.zip

echo -e "${GREEN}Xonotic 0.8.6 is now installed.${NC}"
~/xonotic/Xonotic/xonotic-linux-glx.sh
