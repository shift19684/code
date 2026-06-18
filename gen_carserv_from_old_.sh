#!/bin/sh

#gen carserv
sudo /home/sudox/armor/mein_venv/bin/pyarmor gen -O /home/sudox/Dist/carserv/ /home/sudox/carserv/carserv01/CarServ.py 
sudo mkdir /home/sudox/Dist/carserv/templates/
sudo cp /home/sudox/carserv/carserv01/templates/changeCarServ.html /home/sudox/Dist/carserv/templates/changeCarServ.html