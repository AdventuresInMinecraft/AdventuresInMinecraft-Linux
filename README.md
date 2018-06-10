# Linux Starter Kit

Martin O'Hanlon

From the book: "Adventures in Minecraft" written by David Whale and Martin O'Hanlon, Wiley, 2017
 [http://eu.wiley.com/WileyCDA/WileyTitle/productCd-1119439582.html](http://eu.wiley.com/WileyCDA/WileyTitle/productCd-1119439582.html)

Important note - Linux is not officially supported within Adventures in Minecraft and this Starter Kit is provided as is.

## Description

This starter kit contains contains a pre-configured Minecraft server and a folder called "MyAdventures" which contains all the Python libraries required to complete all the chapters in "Adventure in Minecraft".

It is highly recommended that you use the Starter Kit as is and follow the instructions in Adventure 1 - "Hello Minecraft World" to setup your computer.  

The structure of the StarterKit is as follows:

* AdventuresInMinecraft
  * Server : contains the pre-configured minecraft server and raspberry juice plugin
  * MyAdventures : folder to save the minecraft programs too
    * mcpi : python api library distributed with Minecraft: Pi Edition and minecraftstuff libraries
    * anyio : python library which contains the library to control the 7 segment display
    * microbit : python library which contains the library to control the microbit
    * findPort.py : a python program used in adventure 5 to find the com port a connected arduino uses
    * bitio.hex : the bitio microbit program which should be copied to the BBC micro:bit
  * StartServer.sh : a bash script used to start the minecraft server

## StarterKit Creation Guide

If required the information below can be used as a guide to create your own StarterKit from scratch.  It is written as guide, not as a precise series of instructions. There is no guarantee that they are accurate and are provided as is.

You can use either Bukkit or Spigot for the minecraft server.

### Create folders

Create a folder `AdventuresInMinecraft`

Create a folder `AdventuresInMinecraft\Server`

Create a folder `AdventuresInMinecraft\MyAdventures`


### Compile and run Bukkit

1. Compile the Minecraft server based on the instructions here (https://www.spigotmc.org/wiki/spigot-installation/) and put it in `AdventuresInMinecraft\Server`, the compiled bukkit jar file will be named craftbukkit-#.#.#-R#.0.jar where the # s are the current version number; make a note of the version number, you will need this later.

2. Rename the compiled.jar file from `craftbukkit-#.#.#-R#.#.jar` to `craftbukkit.jar`.

3. Open a text editor and insert the following text:

```
java -Xms1024M -Xmx1024M -jar craftbukkit.jar
PAUSE
```

4. Save the file to the `Server` folder as `start.sh`.  The start.sh file is a bash program which will startup the Minecraft server when it is run.

5. Double-click the `start.sh` file to run it and startup the server.

6. Wait for the message `You need to agree to the EULA in order to run the server.`. Edit eula.txt so eula=true.

7. Run the `start.sh` file and startup the Minecraft server.

When you first start the Minecraft server it will take a little time to run as it sets up the server and creates a new Minecraft world, when its finished you will see the message `Done` in the command window.

When you want to start your Minecraft server in the future you can run the `start.sh` file.

To stop the server, enter the word `stop` into the command window and press `Enter`.

### Configure Bukkit

1. Open a text editor, click File, Open and goto the `Server` folder and open `server.properties`.

2. Change the `server.properties` file:

   * `gamemode=0` to `gamemode=1` to change the server from survival mode to creative.
   * `force-gamemode=false` to `force-gamemode=true` to make all players play in creative mode.
   * `spawn-monsters=true` to `spawn-monsters=false` so monsters mobs wont appear in the game.
   * `spawn-animals=true` to `spawn-animals=false` so animals wont appear.
   * `spawn-npcs=true` to `spawn-npcs=false` so monsters mobs wont appear in the game.
   * `allow-flight=false` to `allow-flight=true` so you can fly in Minecraft.
   * `online-mode=true` to `online-mode=false` so you don t need to be connected to the internet to use Bukkit

### Create StartServer.sh

Open a text editor and add the following text:

```
#!/bin/bash
echo "Adventures In Minecraft"
echo "Minecraft Server Version is #.#.#"
echo "  Note - make sure Minecraft is using #.#.#"
echo "By continuing you are indicating your agreement to our EULA https://account.mojang.com/documents/minecraft_eula)."
echo "Press any key to continue"
read -n 1 -s
cd "$( dirname "$0" )"
cd Server
./start.sh
```

Replace #.#.# with the version number of Minecraft server you created.

Save the file as StartServer.sh to the AdventuresInMinecraft folder.

### Install RaspberryJuice
 ----------------------
RaspberryJuice is a plugin for Bukkit which will allow you to write programs which will change the Minecraft world as you are playing, just like the API which comes with Minecraft: Pi Edition on the Raspberry Pi.

1. Goto https://www.spigotmc.org/resources/raspberryjuice.22724/ 

2. download the latest version of the raspberry juice plugin, download the raspberryjuice-#.#.jar file.

3. Copy the raspberryjuice-#-#.jar plugin to the plugins folder in the Bukkit folder.

### Setup MyAdventures folder

1. Get mcpi from github https://github.com/AdventuresInMinecraft/mcpi

```
git clone https://github.com/AdventuresInMinecraft/mcpi
```

Note - the mcpi repository contains the python 3 version of the library supplied by mojang with Minecraft: Pi Edition [https://github.com/py3minepi/py3minepi](https://github.com/py3minepi/py3minepi) and the minecraftstuff library [https://github.com/martinohanlon/minecraft-stuff](github.com/martinohanlon/minecraft-stuff)

2. Copy the mcpi folder to MyAdventures

3. Get the minecraft-stuff module from [https://github.com/martinohanlon/minecraft-stuff](github.com/martinohanlon/minecraft-stuff)

```
git clone https://github.com/martinohanlon/minecraft-stuff
```

4. Copy "minecraftstuff\minecraftstuff.py" to the mcpi folder.


5. Download anyio from github [https://github.com/AdventuresInMinecraft/anyio](github.com/AdventuresInMinecraft/anyio)

```
git clone https://github.com/AdventuresInMinecraft/anyio
```

6. Copy the anyio/anyio folder to MyAdventures

7. Copy the anyio/findPort.py file to MyAdventures

8. Download bitio from github [https://github.com/AdventuresInMinecraft/bitio](github.com/AdventuresInMinecraft/bitio)

```
git clone https://github.com/AdventuresInMinecraft/bitio
```

9. Copy the bitio/src/microbit folder to MyAdventures

10. Copy the bitio/bitio.hex file to MyAdventures
