#Invoke-Command -ComputerName COMPUTER -ScriptBlock { COMMAND } -credential USERNAME
# COMPUTER == IP or hostname, COMMAND == powershell command or cmdlet, USERNAME == username

# get-childitem ==> dir

Invoke-Command -ComputerName 192.168.205.127 -ScriptBlock { Get-netipaddress -AddressFamily ipv4 | Format-table } -credential Student