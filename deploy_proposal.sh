#!/bin/bash
# Deployment Script for Multi-Cloud Proposal
# This script installs Nginx and hosts the proposal HTML file.

echo "Starting deployment..."

# Update system packages
sudo apt-get update -y

# Install Nginx if not already installed
if ! command -v nginx &> /dev/null
then
    echo "Installing Nginx..."
    sudo apt-get install nginx -y
fi

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Deploy the HTML file
# Assumes multicloud_proposal.html is in the same directory
if [ -f "multicloud_proposal.html" ]; then
    echo "Deploying HTML file..."
    sudo cp multicloud_proposal.html /var/www/html/index.html
    sudo chown www-data:www-data /var/www/html/index.html
    sudo chmod 644 /var/www/html/index.html
    echo "Deployment successful! Visit your server's IP to view the proposal."
else
    echo "Error: multicloud_proposal.html not found in current directory."
    exit 1
fi
