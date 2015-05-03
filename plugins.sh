#!/bin/bash

PLUGIN_DIR=$SERVER_DIR/plugins

# TODO: Remove all existing .jars in plugin directory

mkdir -p $PLUGIN_DIR
echo Downloading plugin .jars into $PLUGIN_DIR

# Worldedit
wget http://dev.bukkit.org/media/files/837/363/worldedit-bukkit-6.0.jar -O $PLUGIN_DIR/WorldEdit.jar
# Essentials
wget https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/Essentials/target/Essentials-2.x-SNAPSHOT.jar -O $PLUGIN_DIR/Essentials.jar
wget https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsAntiBuild/target/EssentialsAntiBuild-2.x-SNAPSHOT.jar -O $PLUGIN_DIR/EssentialsAntiBuild.jar
wget https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsChat/target/EssentialsChat-2.x-SNAPSHOT.jar -O $PLUGIN_DIR/EssentialsChat.jar
wget https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsProtect/target/EssentialsProtect-2.x-SNAPSHOT.jar -O $PLUGIN_DIR/EssentialsProtect.jar
wget https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsSpawn/target/EssentialsSpawn-2.x-SNAPSHOT.jar -O $PLUGIN_DIR/EssentialsSpawn.jar
# OpenInv
wget http://dev.bukkit.org/media/files/870/415/OpenInv.jar -O $PLUGIN_DIR/openinv.jar
# FirstJoinPlus
wget http://dev.bukkit.org/media/files/806/317/FirstJoinPlus.jar -O $PLUGIN_DIR/firstjoinplus.jar
# CoreProtect
wget http://dev.bukkit.org/media/files/820/756/CoreProtect_2.10.0.jar -O $PLUGIN_DIR/coreprotect.jar
# AdminEssentials
wget http://dev.bukkit.org/media/files/866/562/AdminEssentials.jar -O $PLUGIN_DIR/adminessentials.jar
# PermissionsEx
wget http://dev.bukkit.org/media/files/874/950/PermissionsEx-1.23.2.jar -O $PLUGIN_DIR/permissionsex.jar
# LWC
wget http://dev.bukkit.org/media/files/718/126/LWC.jar -O $PLUGIN_DIR/lwc.jar
# WorldGuard
cp $CONFIG_DIR/plugins/WorldGuard/worldguard-6.0.0-SNAPSHOT.jar $PLUGIN_DIR/WorldGuard.jar

# Root permissions should be empty
echo Writing empty root permissions.yml
echo > $SERVER_DIR/permissions.yml
# Copy default permissions if it doesn't exist
if [ ! -f $PLUGIN_DIR/PermissionsEx/permissions.yml ]; then
    echo Copying PermissionsEx default permissions.yml
    mkdir -p $PLUGIN_DIR/PermissionsEx
    cp $CONFIG_DIR/plugins/PermissionsEx/permissions.yml $PLUGIN_DIR/PermissionsEx/permissions.yml
fi

