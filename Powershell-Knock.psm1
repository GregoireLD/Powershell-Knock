# Knock
function Send-Knock {   
    Param(
            [String] $remoteHost = "localhost",
            [ValidateRange(1,65535)][int[]]$ports,
            [int]$sleepInMs = 20
    )
    
    foreach($port in $ports)
    {
        $requestCallback = $state = $null
        $client = New-Object System.Net.Sockets.TcpClient
        $beginConnect = $client.BeginConnect($remoteHost,$port,$requestCallback,$state)
        $beginConnect.IsCompleted | Out-Null
        Start-Sleep -Milliseconds $sleepInMs
        $client.Close()
    }
}
