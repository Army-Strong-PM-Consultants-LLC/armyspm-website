#!/bin/bash
# Bash script to set up Wix repo with website files
# Run this from your Wix repo directory

echo "Setting up Wix repo with ASPM Agent website files..."

# Check if we're in the right directory
if [ ! -f "wix.config.json" ]; then
    echo "Error: wix.config.json not found. Are you in your Wix repo directory?"
    exit 1
fi

# Create public directory if it doesn't exist
mkdir -p public

# Copy website files
if [ -d "../ASPM-Agent/website" ]; then
    cp -r ../ASPM-Agent/website/* public/
    echo "Copied website files to public/"
else
    echo "Warning: Website files not found at ../ASPM-Agent/website"
    echo "Please update the path or copy files manually"
fi

echo ""
echo "Next steps:"
echo "1. Review the files in public/"
echo "2. git add public/"
echo "3. git commit -m 'Add ASPM Agent website files'"
echo "4. git push origin main"
echo "5. wix push"

