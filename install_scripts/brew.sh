#!/bin/bash

# This script uses Homebrew to install a variety of software packages.

# Install Hombrew.
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update and check the installation.
brew update
brew doctor

# Tap the scientific repository. 
brew tap homebrew/science

# Install the software. These are listed in alphabetial order.
brew install boost
brew install emacs
brew install gcc
brew install netcdf --with-cxx
brew install r
brew install proj
brew install python
