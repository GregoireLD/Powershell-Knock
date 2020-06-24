# Powershell-Knock

Powershell Implementation of the Knock command

To use this module, the "Powershell-Knock" folder, contaning both the psm1
and the psd1 files, must be in one of your default Powershell Modules folder.
You can check what they are using :
`$env:PSModulePath`

Otherwise, you can manually enable it using the folowing command :

`Import-Module <Path_to_the_Powershell-Knock.psm1_file>`

# Command list :

**Send-Knock**

Sends a trail of Timeout-based TCP (UDP is on the work) connections

`Send-Knock [-remoteHost IP/Name (default localhost)] -ports <array,of,ports> [-sleepInMs <time in miliseconds between each knocks> (default 10ms)>]`
