#!/bin/bash

PLUGIN_DIR=$SERVER_DIR/plugins

# TODO: Remove all existing .jars in plugin directory

mkdir -p $PLUGIN_DIR
# Worldedit
wget -q http://dev.bukkit.org/media/files/837/363/worldedit-bukkit-6.0.jar -O $PLUGIN_DIR/worldedit.jar
# Essentials
wget -q https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/Essentials/target/Essentials-2.x-SNAPSHOT.jar -O $PLUGIN_DIR/Essentials.jar
wget -q https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsAntiBuild/target/EssentialsAntiBuild-2.x-SNAPSHOT.jar -O $PLUGIN_DIR/EssentialsAntiBuild.jar
wget -q https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsChat/target/EssentialsChat-2.x-SNAPSHOT.jar -O $PLUGIN_DIR/EssentialsChat.jar
wget -q https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsProtect/target/EssentialsProtect-2.x-SNAPSHOT.jar -O $PLUGIN_DIR/EssentialsProtect.jar
wget -q https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsSpawn/target/EssentialsSpawn-2.x-SNAPSHOT.jar -O $PLUGIN_DIR/essentialsSpawn.jar
# OpenInv
wget -q http://dev.bukkit.org/media/files/870/415/OpenInv.jar -O $PLUGIN_DIR/openinv.jar
# FirstJoinPlus
wget -q http://dev.bukkit.org/media/files/806/317/FirstJoinPlus.jar -O $PLUGIN_DIR/firstjoinplus.jar
# CoreProtect
wget -q http://dev.bukkit.org/media/files/820/756/CoreProtect_2.10.0.jar -O $PLUGIN_DIR/coreprotect.jar
# AdminEssentials
wget -q http://dev.bukkit.org/media/files/866/562/AdminEssentials.jar -O $PLUGIN_DIR/adminessentials.jar
# PermissionsEx
wget -q http://dev.bukkit.org/media/files/874/950/PermissionsEx-1.23.2.jar -O $PLUGIN_DIR/permissionsex.jar
# LWC
wget -q http://dev.bukkit.org/media/files/718/126/LWC.jar -O $PLUGIN_DIR/lwc.jar

# Root permissions should be empty
echo Writing empty root permissions.yml
echo > $SERVER_DIR/permissions.yml
# Copy default permissions if it doesn't exist
if [ ! -f $PLUGIN_DIR/PermissionsEx/permissions.yml ]; then
    mkdir -p $PLUGIN_DIR/PermissionsEx
    cp $CONFIG_DIR/plugins/PermissionsEx/permissions.yml $PLUGIN_DIR/PermissionsEx/permissions.yml
fi

