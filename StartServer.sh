#!/bin/bash
echo "Adventures In Minecraft"
echo "Minecraft Server Version is 1.12"
echo "  Note - make sure Minecraft is using 1.12"
echo "By continuing you are indicating your agreement to our EULA https://account.mojang.com/documents/minecraft_eula)."
echo "Press any key to continue"
read -n 1 -s
cd "$( dirname "$0" )"
cd Server

./start.sh

