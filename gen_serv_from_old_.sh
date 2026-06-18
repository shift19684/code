#!/bin/sh


#gen servo
sudo /home/sudox/armor/mein_venv/bin/pyarmor gen -O /home/sudox/Dist/servo/ /home/sudox/servo/serv01/serv.py 
sudo mkdir /home/sudox/Dist/servo/templates/
sudo cp /home/sudox/servo/serv01/templates/changesettings.html /home/sudox/Dist/servo/templates/changesettings.html