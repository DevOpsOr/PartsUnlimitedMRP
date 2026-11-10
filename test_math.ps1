. .\math.ps1

$a = 5
$b = 5
$expected = 10
$result = Add-Numbers $a $b
if ($result -eq $expected) {
    Write-Host "Test passed successfully: $a + $b = $result"
    exit 0
} else {
    Write-Error "Test failed. Expected $expected for $a + $b, but got $result"
    exit 1
}
