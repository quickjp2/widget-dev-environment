 #!/bin/bash

# Author: JP Quicksall
# Date Created: 12/10/14
# Prerequisties
#  - rvm is installed and sourced as a function
#  - ruby 2.1.5 is installed
#  - gem set has not been created yet

# Creat the rvm getset to use in the directory
rvm use ruby-2.1.5@dashingwidgetdev --create

# Create gemset files in directory
echo "dashingwidgetdev" >> .ruby-gemset
echo "ruby-2.1.5" >> .ruby-version

exit
