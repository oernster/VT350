#!/bin/bash

# Define commonly used paths
REPO_DIR=~/VT350
CONFIG_DIR=~/printer_data/config
DATABASE_DIR=~/printer_data/database

# Ensure the database directory exists in VT350
mkdir -p $REPO_DIR/database

# Enter the repository directory
cd $REPO_DIR

# Update the repository
git pull

# Copy new configuration files from CONFIG_DIR
# Using rsync to copy all files and subdirectories from CONFIG_DIR directly into REPO_DIR
rsync -av --exclude='config_backups' --exclude='.moonraker.conf.bkp' $CONFIG_DIR/ $REPO_DIR/

# Copy only database files into the database subdirectory
rsync -av $DATABASE_DIR/ $REPO_DIR/database/

# Add all changes to git, excluding the unwanted duplicate
git add .

# Commit the changes
git commit -m "Backup printer configs"

# Push the changes to the repository
git push

# Return to the home directory
cd
