# Make an iso file containing the contents of a directory
# Usage: iso-from-dir.sh output.iso contents-dir

# Note:
# genisoimage only adds the contents of a directory, so put all the files
# you want into a new directory, and use that as the second argument to this script.

# Also note:
# This has been tested for Windows using MATLAB R2019a. It might also work for Mac,
# but for that I have previously just used the `-J -r` options.
genisoimage -f -r -U -J -joliet-long -allow-lowercase -allow-multidot -o $1 $2
