#!/bin/bash

PARENT_PATH=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

echo -e "gencp - Coding template generator by @codadept (Pratik Majumdar)\n"

if [ -d "/bin/gencp" ]
then
  echo -e "\033[32mgencp\033[m installed"
else 
  sudo mkdir "/bin/gencp"
  sudo cp -r ${PARENT_PATH}/* /bin/gencp
  # Updating in .bashrc
  echo -e "\n# CP Template Generator - gencp" >> "${HOME}/.bashrc"
  echo "alias gencp='source /bin/gencp/gencp.sh'" >> "${HOME}/.bashrc"

  source "${HOME}/.bashrc"

  echo "For fish add the following line in your config.fish file"
  echo -e "\talias gencp='/bin/gencp/gencp.sh'"
fi

