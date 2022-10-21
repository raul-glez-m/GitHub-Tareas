$MiIP = 196
$DatosMac = Import-CSV -Path C:\Users\Administrador\Desktop\02DHCPReservas_csv.csv -Delimiter ';'
Foreach ($fila in $DatosMac) {
    Write-Host ($fila.'MAC Address')
    Add-DhcpServerv4Reservation -ScopeId 172.20.140.192 -ClientId $fila.'MAC Address' -IPAddress -172.20.140.$MiIP ++
}

Write-Host $DatosMac

Add-DhcpServerv4Reservation -ScopeId 172.20.140.192 -ClientId $fila.'MAC Address' -IPAddress -172.20.140.$MiIP
