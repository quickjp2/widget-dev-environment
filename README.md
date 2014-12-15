Setting up a dashing widget dev envrionment
===========================================

Introduction
------------
The project is a series of scripts that assist in setting up a ruby dev environment for developing dashing widgets and dashboards. 

Before we run the setup, let's verify the groundwork:
This code has been verified on VMs running with 20GB disk, 1GB ram, and with one of the following OSs:
- Ubuntu 14.04 32-bit

These instructions also assume the following:
- If using a linux box, ssh is installed
- The scripts are run from the location desired for dev folders
- Ruby and/or any gems have not been previously installed 
- RVM has not been installed
- You have an active internet connection

If you have already installed RVM AND the latest version of Ruby to RVM, then skip step 4.

Instructions:
-------------
1. Install curl and node.js
  - `sudo apt-get install curl`
  - `sudo apt-get install nodejs`

2. Create and/or navigate to a workspace folder
  - To create the folder run `mkdir workspace` in the home directory
  - Navigate to your desired (or newly created) folder
  - NOTE: the scripts need to be placed in this folder

3. Verify scripts can be executed
  - Use `ls -l` to verify that each of the scripts have (at least) `-rwx` for the user
  - If not, run `chmod 755` to allow the script to be executed

4. Install RVM
  - Type `./rvminstall.sh` to run the install script

5. Run dev setup
  - Type `./gemsetinstall.sh` to setup the ruby dev environment
  - NOTE: If script stops at "installing ri documentation for sinatra-1.4.5", only once quickly press `ctrl+C` to error out the script hang. The rest of the script will continue to run.

6. LAUNCH
  - To lanuch the base dashing environment, type `dashing start` then use your web browser to view `localhost:3030` and view your new dashboard!
  - If an error pops up saying that dashing is not a function, close the terminal, then reopen it and navigate back to the project folder. You can then redo the step above.
