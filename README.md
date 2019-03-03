# Aboo-Image-Capture-for-Linux
Lightweight image capture script for Linux written in bash. Captured images can both be saved to disk or uploaded to [aboo.se](https://aboo.se/)
by using the [api.aboo.se](https://api.aboo.se/) public api.  

When executing the aboo-capture.sh file, the user will be able to capture a region of the screen by drawing a rectangle with the mouse.

## Dependencies
There are a minimal number of dependencies that needs to be installed in order for this script to work.  
`maim` - Used to capture image region.  
`jq` - Used to parse json request from upload.  
`xclip` - Used to copy url to clipboard.  

## Installation / Setup
1. Make sure you have the dependencies mentioned above installed on your system
    * On manjaro you can install these by typing `sudo pacman -Syu maim jq xclip`
2. Clone this github repository (especially the file aboo-capture.sh) to your filesystem
    * `mkdir ~/Aboo && cd ~/Aboo`
    * `git clone https://github.com/NoExitTV/Aboo-Image-Capture-for-Linux.git`
3. Make the file aboo-capture.sh executable
    * `chmod +x ~/Aboo/Aboo-Image-Capture-for-Linux/aboo-capture.sh`
4. Configure a keyboard shortcut to execute the aboo-capture.sh file
    * Google on exactly how to do this for your distro/window manager

Happy image capturing!