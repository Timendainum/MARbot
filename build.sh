#!/bin/bash

buildScript="MARbot.mar"
buildPath="./"
buildFile="$buildPath$buildScript"

add() {
	cat "$1" >> $buildFile
	echo >>  $buildFile
} 

#clear buildFile
echo -n > $buildFile

# /
add constants.mar
add main.mar

# mode
add mode/init.mar
add mode/keyop.mar

# Hardware
add hardware/battery.mar
add hardware/drill.mar
add hardware/floppy.mar
add hardware/inventory.mar
add hardware/keyboard.mar
add hardware/laser.mar
add hardware/legs.mar
add hardware/lidar.mar
add hardware/hologram.mar

