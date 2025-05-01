<#
.SYNOPSIS
    Intune: Install Printer as win32 app

.DESCRIPTION
    This script installs a network printer using it's IP address

.LINK
    https://www.youtube.com/watch?v=E0sQFWvG028

.NOTES
    Author: Rajinder Sidhu | https://www.youtube.com/@TheITlabOnline
#>

# Define printer settings, change for your environment
$PrinterName = "Kiosk Printer"
$PrinterIP = "192.168.1.10"
$PortName = "IP_$PrinterIP"
$DriverName = "HP Universal Printing PCL 6"
$DriverArgs = @(
    "/add-driver"
    ".\*.inf"
    "/install"
    "/subdirs"
)

# Add drivers to Windows driver store
Start-Process pnputil.exe -ArgumentList $DriverArgs -Wait
Add-PrinterDriver -Name $DriverName -Confirm:$false

# Create a TCP/IP port
Add-PrinterPort -Name $PortName -PrinterHostAddress $PrinterIP -Confirm:$false

# Install the printer
Add-Printer -Name $PrinterName -DriverName $DriverName -PortName $PortName -Confirm:$false