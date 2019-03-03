# reverse lookups w/ps1
(1..254) | % {$ip="129.21.252.$_"; Write-output "$IP  $( Resolve-DnsName $ip -ErrorAction Ignore |select -exp NameHost )  "}    

