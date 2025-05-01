<#
.SYNOPSIS
    Intune: Detect Printer install status as win32 app

.DESCRIPTION
    This script detects if a printer is installed based on its name

.LINK
    https://www.youtube.com/watch?v=E0sQFWvG028

.NOTES
    Author: Rajinder Sidhu | https://www.youtube.com/@TheITlabOnline
#>

# Define printer name, change for your environment
$PrinterName = "Kiosk Printer"

# Check if printer is installed by name, return code is 0 if yes or 1 if no
# Also returns STDOUT which is required by Intune for detection
Get-Printer -Name $PrinterName