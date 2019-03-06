# Abaqus set up on Windows
If Abaqus with user subroutines fails verification test, check the start menu shortcuts.
The correct locations to point to are given below.

CAE:
`%IFORT_COMPILER12%bin\ipsxe-comp-vars.bat intel64 vs2010 && C:\SIMULIA\Abaqus\Commands\abq6142.bat cae || pause`
Abaqus command:
`%IFORT_COMPILER12%bin\ipsxe-comp-vars.bat intel64 vs2010 && C:\Windows\SysWOW64\cmd.exe /k`