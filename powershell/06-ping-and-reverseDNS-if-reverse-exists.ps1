﻿# ping AND dns lookup one-liner...
(1..254) | % {$ip="129.21.252.$_"; Write-output "$IP  $(test-connection -computername "$ip" -quiet -count 1)  $( Resolve-DnsName $ip -ErrorAction Ignore |select -exp NameHost )  "}  