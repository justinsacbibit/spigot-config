#!/bin/bash

PLUGIN_DIR=$SERVER_DIR/plugins

# TODO: Remove all existing .jars in plugin directory
echo Removing existing plugin .jars
rm -f $PLUGIN_DIR/*.jar

mkdir -p $PLUGIN_DIR
echo Copying plugin .jars into $PLUGIN_DIR
cp $CONFIG_DIR/plugins/jars/* $PLUGIN_DIR/

# Root permissions should be empty
echo Writing empty root permissions.yml
echo > $SERVER_DIR/permissions.yml
# Copy default permissions if it doesn't exist
if [ ! -f $PLUGIN_DIR/PermissionsEx/permissions.yml ]; then
    echo Copying PermissionsEx default permissions.yml
    mkdir -p $PLUGIN_DIR/PermissionsEx
    cp $CONFIG_DIR/plugins/PermissionsEx/permissions.yml $PLUGIN_DIR/PermissionsEx/permissions.yml
fi

