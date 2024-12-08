#!/bin/bash

# Update all submodules to the latest version
echo "Updating all submodules..."
git submodule foreach 'git pull origin main'

# Add changes from submodules to the main repository
echo "Adding changes to the main repository..."
git add .

# Create an automatic commit with the update message
echo "Committing the changes..."
git commit -m "Auto-update submodules"

# Push the changes to the main repository on GitHub
echo "Pushing changes to GitHub..."
git push origin main

echo "Submodules updated and main repository synchronized!"
