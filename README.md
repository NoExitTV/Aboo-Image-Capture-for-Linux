# Aboo-Image-Capture-for-Linux
Lightweight image capture script for Linux written in bash. Captured images can both be saved to disk or uploaded to aboo.se.

## Dependencies
There are a minimal number of dependencies that needs to be installed in order for this script to work.  
`maim` - Used to capture image region.  
`jq` - Used to parse json request from upload.  
`xclip` - Used to copy url to clipboard.  

On manjaro you can install these by typing:  
`sudo pacman -Syu maim jq xclip`

## Installation / Setup
1. Make sure you have the dependencies mentioned above installed on your system
    * Google on how to install these packages on your disto
2. Clone this github repository (specially the file aboo-capture.sh) somewhere to your filesystem
    * `mkdir ~/Code && cd ~/Code`
    * `git clone https://github.com/NoExitTV/Aboo-Image-Capture-for-Linux.git`
    * Resut: my files are saved at ~/Code/Aboo-Image-Capture-for-Linux/
3. Make the file aboo-capture.sh executable by running `chmod +x ~/Code/Aboo-Image-Capture-for-Linux/aboo-capture.sh`
4. Configure a keyboard shortcut to execute the aboo-capture.sh file
    * Google on exactly how to do this for your distro/window manager