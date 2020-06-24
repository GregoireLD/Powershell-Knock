# PSKnock

Powershell Implementation of the Knock command

You can enable it using the folowing command :

`Import-Module <Path_to_the_.psm1_file>`

# Command list :

**Send-Knock**

Sends a trail of Timeout-based TCP (UDP is on the work) connections

`Send-Knock [-remoteHost IP/Name (default localhost)] -ports <array,of,ports> [-sleepInMs <time in miliseconds between each knocks> (default 10ms)>]`
