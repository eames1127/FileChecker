# FileChecker

## About 
The purpose of this PowerShell script is to look in the specified directory and check if all the files listed exist in that location.

If not it states that there are files missing and lists the missing files.

## Prerequistes
To be able to use this script you must have the following.

1. Administrator privlages in PowerShell.
2. The ability to run PowerShell scripts on the machine running the script.
(set-executionpolicy remotesigned)

## How to run the script
Navigate to the ps1 file's directory and then enter the script's name and pass the desired location e.g.

```PowerShell {cmd="node"}
".\FileChecker.ps1 "C:\Coding\FileChecker\Test Folder"
