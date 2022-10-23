#!/bin/bash

# Added package repo for PHP manager
sudo add-apt-repository ppa:ondrej/php

# Updating package list info
sudo apt update

# Installing PHP version
sudo apt install php7.0 php7.0-cli php7.0-common php7.0-pdo php7.0-xml php7.0-mbstring php7.0-mysql php7.0-curl php7.0-mcrypt php7.0-bcmath php7.0-json

# Select the PHP v7.0
echo "Select version of PHP 7.0" && sudo update-alternatives --config php

# Install curl
sudo apt install curl

# Get Node Version Manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

# Clones the nvm repository to ~/.nvm and attempts to add the source lines from the snippet below to the correct profile file
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Restarts the console
source ~/.bashrc

# Installs the lastest node 10 version and establishes it as default
nvm install 10 && nvm use 10 && nvm alias default 10

# Installs gulp-cli globally
npm install --global gulp-cli

# Copy .env.example to .env and generate key
cp .env.example .env && php artisan key:generate