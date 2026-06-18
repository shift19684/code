#!/bin/sh

#deploy int_date_zero

repo_url="https://github.com/shift19684/online_startup.git"

target_folder="/home/sudox/online_startup"

save_folder="/home/sudox/startup"


git clone "$repo_url" "$target_folder"

sudo cp "${target_folder}/startup.sh" "${save_folder}/startup.sh"

sudo chmod +x "${save_folder}/startup.sh"

sudo rm -rf "$target_folder"