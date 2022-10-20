#######################
# Crear DHCP          #
# 20/10/2022          #
# Creado por:         #
# Raúl González Muñoz #
############# #########

Remove-DhcpServerv4Scope -ScopeId 172.20.140.192 -force
Add-DhcpServerv4Scope -EndRange 172.20.140.195 -Name AmbitosPowershell -StartRange 172.20.140.193 -SubnetMask 255.255.255.192 -LeaseDuration 8:30:00
Set-DhcpServerv4OptionValue -DnsDomain domi.com -DnsServer 172.20.140.254, 8.8.8.8 -Router 172.20.140.254 -ScopeId 172.20.140.192 

