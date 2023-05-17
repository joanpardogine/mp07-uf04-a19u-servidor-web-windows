$camiFitxer = "C:\Utils\Cami\Logs\ctrlIps.log"

$dataActual = Get-Date
$dataActualCadena = $dataActual.ToString("dd-MM-yy HH:mm:ss")
'Primera execució!' | Out-File -FilePath $camiFitxer -Append
$dataActualCadena | Out-File -FilePath $camiFitxer -Append

while ($true){
    $dataActual = Get-Date
    $dataActualCadena = $dataActual.ToString("dd-MM-yy HH:mm:ss")
    $dataActualCadena | Out-File -FilePath $camiFitxer -Append

    Get-NetIPAddress -AddressFamily IPv4 | Out-File -FilePath $camiFitxer -Append

    # espera 5 minuts (300 segons)
    Start-Sleep -Seconds 300
}