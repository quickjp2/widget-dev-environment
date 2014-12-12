 #!/bin/bash

# Author: JP Quicksall
# Date Created: 12/10/14
# Prerequisties
#  - rvm is installed and sourced as a function
#  - ruby 2.1.5 is installed
#  - gem set has not been created yet

# Creat the rvm getset to use in the directory
source ~/.rvm/scripts/rvm

# Verify that rvm is a function
type rvm | head -n 1

# Add the gemset
rvm use ruby-2.1.5@dashingwidgetdev --create

# Install the dashing framework into the gemset
gem install dashing

# Create a new directory
dashing new widget-dev-environment

# Create gemset files in directory
echo "dashingwidgetdev" >> .ruby-gemset
echo "ruby-2.1.5" >> .ruby-version

#install the bundler gem
gem install bundler

bundle

echo "I'm done!"

exit
