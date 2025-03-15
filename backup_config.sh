#!/bin/bash

# Define commonly used paths
REPO_DIR=~/VT350
CONFIG_DIR=~/printer_data/config
DATABASE_DIR=~/printer_data/database

# Enter the repository directory
cd $REPO_DIR

# Update the repository
git pull

# Remove old configuration files
rm $CONFIG_DIR/printer-*.cfg

# Copy new configuration files
# Using rsync to exclude the config_backups directory
rsync -av --exclude='config_backups' $CONFIG_DIR/* ./
rsync -av $CONFIG_DIR/.theme/* theme/
rsync -av $CONFIG_DIR/configs/* configs/
rsync -av $CONFIG_DIR/configs/lighting/* configs/lighting/
rsync -av $CONFIG_DIR/configs/sensors/* configs/sensors/
rsync -av $CONFIG_DIR/configs/hardware/* configs/hardware/
rsync -av $CONFIG_DIR/configs/fans/* configs/fans/
rsync -av $CONFIG_DIR/configs/calibration/* configs/calibration/
rsync -av $CONFIG_DIR/configs/general/* configs/general/

# Remove unnecessary files
rm ./printer-*.cfg
rm ./crowsnest.conf.*

# Copy the database file
cp $DATABASE_DIR/moonraker-sql.db ./database/

# Add changes to git and push
git add .
git commit -m "Updated printer configuration backup excluding config_backups"
git push

# Return to the home directory
cd ~
