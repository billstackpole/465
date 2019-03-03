#Invoke-Command -ComputerName COMPUTER -ScriptBlock { COMMAND } -credential USERNAME
# COMPUTER == IP or hostname, COMMAND == powershell command or cmdlet, USERNAME == username

# create password token from stored credentialset
$pass = cat c:\securestring.txt | convertto-securestring 
$mycred = new-object -typename System.Management.Automation.PSCredential -ArgumentList "student",$pass


Invoke-Command -ComputerName 192.168.205.127 -ScriptBlock { Get-netipaddress -AddressFamily ipv4 | Format-table } -cred $mycred