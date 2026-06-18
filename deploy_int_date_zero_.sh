#!/bin/sh

#deploy int_date_zero

repo_url="https://github.com/shift19684/online_int_date_zero.git"

target_folder="/home/sudox/online_int_date_zero"

git clone "$repo_url" "$target_folder"

sudo cp /home/sudox/online_int_date_zero/int_date_zero_.sh /home/sudox/bangs/int_date_zero_.sh

sudo chmod +x /home/sudox/bangs/int_date_zero_.sh

sudo rm -rf /home/sudox/online_int_date_zero/