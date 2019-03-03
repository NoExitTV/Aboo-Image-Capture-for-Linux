# Aboo-Image-Capture-for-Linux
Lightweight image capture script for Linux written in bash. Captured images can both be saved to disk or uploaded to aboo.se.

# Dependencies
There are a minimal number of dependencies that needs to be installed in order for this script to work.
`maim` - Used to capture image region.  
`jq` - Used to parse json request from upload.  
`xclip` - Used to copy url to clipboard.  
On manjaro you install these by typing:  
`sudo pacman -Syu maim jq xclip`