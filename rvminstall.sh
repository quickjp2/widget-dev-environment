 #!/bin/bash

# Author: John Paul Quicksall
# Date Created: 12/12/14
# Assumptions:
#  - curl is installed

# Navigate to the home folder
cd

# Get the rvm gpg key for verification
curl -sSL https://rvm.io/mpapis.asc | gpg --import -

# Get the rvm code and install both rvm and the latest ruby
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# Sources the rvm function
echo "source $HOME/.rvm/scripts/rvm" >> .bashrc

# Uncomment if needing to run behind a firewall
# echo ":ssl_verify_mode: 0" >> .gemrc

exit
