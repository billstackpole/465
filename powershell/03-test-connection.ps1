$a = 250
$z = 254
while ($a -le $z) {
if (Test-connection 192.168.12.$a –count 1 -quiet)
{echo "$a is live"}
  $a++
}
