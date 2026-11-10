. .\math.ps1

$a = 5
$b = 5
$expected = 10
$result = Add-Numbers $a $b

if ($result -eq $expected) {
    $xml = "<testsuites><testsuite name='MathTests' tests='1' failures='0'><testcase name='Add-Numbers: $a+$b=$result' classname='Math' time='0.05'/></testsuite></testsuites>"
    Set-Content -Path test-results.xml -Value $xml -Encoding UTF8
    Write-Host "Test passed successfully: $a + $b = $result"
    exit 0
} else {
    $xml = "<testsuites><testsuite name='MathTests' tests='1' failures='1'><testcase name='Add-Numbers' classname='Math' time='0.05'><failure message='Expected $expected, got $result'/></testcase></testsuite></testsuites>"
    Set-Content -Path test-results.xml -Value $xml -Encoding UTF8
    
    Write-Error "Test failed!"
    exit 1
}
