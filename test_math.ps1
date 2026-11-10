. .\math.ps1
$result = Add-Numbers 5 5
if ($result -eq 10) {
    Write-Host "Тест пройден успешно: 5 + 5 = 10"
    exit 0
} else {
    Write-Error "Тест не пройде. Ожидалось 10, получено $result"
    exit 1
}
