# Make an iso from files
## Linux, preserving permissions:
- `genisoimage -f -J joliet-long -r -allow-lowercase -allow-multidot -o output.iso /path/inputfiles`
- or use isomaster (GUI)
## macOS:
- Download the installer.dmg file.
- Put into a folder, along with any other files required such as licence files.
- Open disk utility
- Navigate menus: File/Disk Image from folder (CMD+Shift+N)
- Navigate to folder. In dialogue, use 'image format=DVD/CD master', 'encryption=none'.
- This creates a file.cdr, which then needs converting to file.iso using the terminal:
	- `hdiutil makehybrid -iso -joliet -o path/to/outputname.iso pathto/file.cdr`
## Windows:
- Use imageburn software
