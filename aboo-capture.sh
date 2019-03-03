#!/bin/bash

#
# These variables can be changed to suit your needs!
#
open_browser_after_upload=true
copy_url_to_clipboard=true
save_to_folder=~/Pictures
delete_image_after_upload=true
show_notifications=true

#
# Don't change the code below (unsless you know what you're doing!)
#
if [ ! -d $save_to_folder ]; then
  mkdir -p $save_to_folder
fi

# Capture
path=$save_to_folder/Aboo-$(date --utc +%Y%m%d_%H%M%SZ).png
maim -s --bordersize=1 --color=255,0,0 $path

# Upload
resp=$(curl -F "file=@$path" https://api.aboo.se/upload)
status=$( echo "$resp" | jq '.status' )
url=$( echo "$resp" | jq --raw-output '.data.file.url.full' )

if [ "$status" = true ]; then
    if [ "$open_browser_after_upload" = true ]; then
        xdg-open $url
    fi
    if [ "$copy_url_to_clipboard" = true ]; then
        echo $url | xclip -selection c
    fi
    if [ "$show_notifications" = true ]; then
        notify-send -u normal -t 2500 -c "transfer.complete" -a Aboo "Upload to Aboo complete!"
    fi
else
    echo ""
    echo "ERROR! GOT THE FOLLOWING RESPONSE FROM ABOO API:"
    echo $resp
    echo ""
    if [ "$show_notifications" = true ]; then
        notify-send -u normal -t 2500 -c "transfer.error" -a Aboo "Upload to Aboo failed :'("
    fi
fi

# Delete
if [ "$delete_image_after_upload" = true ]; then
    rm $path
fi
