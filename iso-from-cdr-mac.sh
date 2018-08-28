#!/bin/bash

# Script takes two arguments: path/to/output.iso path/to/input.cdr

# Put installer files into a folder, along with any other files required such as licence files.
#	Open disk utility
#	Navigate menus: File/Disk Image from folder (CMD+Shift+N)
#	Navigate to folder. In dialogue, use 'image format=DVD/CD master', 'encryption=none'.
#	This creates a file.cdr, which then needs converting to file.iso using the terminal:
hdiutil makehybrid -iso -joliet -o $1 $2
