#!/bin/bash

cat << "HI"
    ____           __        ____         
   /  _/___  _____/ /_____ _/ / /__  _____
   / // __ \/ ___/ __/ __ `/ / / _ \/ ___/
 _/ // / / (__  ) /_/ /_/ / / /  __/ /    
/___/_/ /_/____/\__/\__,_/_/_/\___/_/     
HI

# variables for making text bold

bold=$(tput bold)
normal=$(tput sgr0)

# asking if user wants to install configs

while true; do
  read -p "${bold}DO YOU WANT TO START THE INSTALLATION NOW?${normal} (Yy/Nn): " yn
  case $yn in
  [Yy]*)
    echo ":: Installation started."
    echo
    break
   ;;
  [Nn]*)
    echo ":: Installation canceled"
    exit
    break
   ;;
  *)
    echo ":: Please answer yes or no."
    ;;
  esac
done

check_status() {
  if [$? -eq 0 ]; then
    echo "Operation successful!"
  else
    echo "Operation failed."
    exit 1
  fi
}

FINAL_CONFIG_FILE="~/.config/kanata/kanata.kbd"

echo "Searching for existing configuration file ${bold}$FINAL_CONFIG_FILE"
mkdir -p ~/.config/kanata/

if [ -f ~/.config/kanata/kanata.kbd ]; then
  echo "Found ${bold}$FINAL_CONFIG_FILE${normal}, backing it up to ${bold}kanata-old.kbd"
  mv ~/.config/kanata/kanata.kbd ~/.config/kanata/kanata-old.kbd
  check_status
else
  echo "Did not find configuration file"
fi

echo "Copying new configuration from this repo.."

cp kanata.kbd ~/.config/kanata/kanata.kbd
check_status

cat << "BYE"
    __ __                  __           _                             __     
   / //_/___ _____  ____ _/ /_____ _   (_)____   ________  ____ _____/ /_  __
  / ,< / __ `/ __ \/ __ `/ __/ __ `/  / / ___/  / ___/ _ \/ __ `/ __  / / / /
 / /| / /_/ / / / / /_/ / /_/ /_/ /  / (__  )  / /  /  __/ /_/ / /_/ / /_/ / 
/_/ |_\__,_/_/ /_/\__,_/\__/\__,_/  /_/____/  /_/   \___/\__,_/\__,_/\__, /  
                                                                    /____/   
BYE
echo "Kanata configuration is ready to use, please edit your kanata.service (linux) to start using"
echo "Thank you for using this repo, have a good day"
