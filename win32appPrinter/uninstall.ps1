<#
.SYNOPSIS
    Intune: Uninstall Printer as win32 app

.DESCRIPTION
    This script uninstalls a network printer using it's IP address

.LINK
    https://www.youtube.com/watch?v=E0sQFWvG028

.NOTES
    Author: Rajinder Sidhu | https://www.youtube.com/@TheITlabOnline
#>

# Define printer settings, change for your environment
$PrinterName = "Kiosk Printer"
$PrinterIP = "192.168.1.10"
$PortName = "IP_$PrinterIP"

# Remove printer
Remove-Printer -Name $PrinterName -Confirm:$false
Remove-PrinterPort -Name $PortName -Confirm:$false