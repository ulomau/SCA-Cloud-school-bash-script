#!/bin/bash

# Full system update

# Functions:

update() {

echo "Checking for available updates..."
sudo apt-get update

}
                                                                                                                        
upgrade() {

echo "Performing upgrade"
sudo apt-get dist-upgrade -y

}

clean_up() {
echo "Performing autoremoval"
sudo apt-get autoremove


}                                                                                                                       
completed() {
echo "Update complete..."
exit

}


# Execution
# Update, upgrade and clean
var="update"

if [ "$var" == "update" ]; then
    update                                                                                                                  upgrade
    clean_up                                                                                                                completed

fi

if [  -n "$var"  ]; then
echo  "Error Invalid argument"

fi

update
upgrade
clean_up
completed