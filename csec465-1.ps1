$ip = Read-Host -prompt "Enter an IP address:"
[uint16]$port = Read-Host -prompt "Enter a port:"
try{
	$socket = New-Object System.Net.Sockets.TcpClient($ip, $port)
	
	if($socket.Connected)
	{
		Write-Host "Open"
	}
}
catch [System.Net.Sockets.SocketExceptiln]
{
	Write-Host $_.Exception.InnerException.ErrorCode
}

#Write-Host "IP: $ip"
#$octets = $ip.split(".")
#for($i=0;$i -lt $octets.Length; $i++)
#{
#	$octet = $octets[$i]
#	Write-Host "Octet: $octet"
#}
