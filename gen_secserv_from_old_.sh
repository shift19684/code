#!/bin/sh

#gen secserv
sudo /home/sudox/armor/mein_venv/bin/pyarmor gen -O /home/sudox/Dist/secserv/ /home/sudox/secserv/secserv01/secserv.py 
sudo mkdir /home/sudox/Dist/secserv/templates/
sudo cp /home/sudox/secserv/secserv01/templates/changeSecServ.html /home/sudox/Dist/secserv/templates/changeSecServ.html