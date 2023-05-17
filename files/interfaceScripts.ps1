$camiFitxer = "C:\Utils\Cami\Logs\ctrlIps.log"
$cadenaGuions = "--------------------------------------------"
$cadenaPrimeraExe = "Primera execucio!"
$cadenaSeguentExe = "Seguent execucio!"

$cadenaGuions | Out-File -FilePath $camiFitxer -Append
$cadenaGuions | Out-File -FilePath $camiFitxer -Append

$dataActual = Get-Date
$dataActualCadena = $dataActual.ToString("dd-MM-yy HH:mm:ss")
$cadenaPrimeraExe | Out-File -FilePath $camiFitxer -Append


while ($true){
    $dataActual = Get-Date
    $dataActualCadena = $dataActual.ToString("dd-MM-yy HH:mm:ss")
    $dataActualCadena | Out-File -FilePath $camiFitxer -Append

    Get-NetIPAddress -AddressFamily IPv4 | Out-File -FilePath $camiFitxer -Append

    # espera 5 minuts (300 segons)
    Start-Sleep -Seconds 300
    $cadenaGuions | Out-File -FilePath $camiFitxer -Append
    'Seguent execucio!' | Out-File -FilePath $camiFitxer -Append
    $dataActual = Get-Date
    $dataActualCadena = $dataActual.ToString("dd-MM-yy HH:mm:ss")
    $dataActualCadena | Out-File -FilePath $camiFitxer -Append
    $cadenaSeguentExe | Out-File -FilePath $camiFitxer -Append

}