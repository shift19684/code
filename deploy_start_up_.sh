#!/bin/sh

#deploy int_date_zero

repo_url="https://github.com/shift19684/online_startup.git"

target_folder="/home/sudox/online_startup"

git clone "$repo_url" "$target_folder"

sudo cp "${target_folder}/startup.sh" /home/sudox/bangs/startup.sh

sudo chmod +x /home/sudox/bangs/startup.sh

sudo rm -rf "$target_folder"