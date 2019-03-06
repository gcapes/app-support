# Uploading files to ESD
- The applications webpage hosts information about applications on the ESD.
- The images and files are on a FTP server, which can be accessed using:
- sftp <username>@sftp.man.ac.uk
- From there, navigate to itsuag-ml-web to locate required directory.
- To copy files to the server, use scp.
- 
# Applications website:
Content containing an apostrophe will generate an SQL error, so avoid using them. 
Also Windows file system paths require the '\' character to be escaped using another '\'.

