$csvFile = "$PSScriptRoot\birthdays.csv"

$today = Get-Date -Format "MM-dd"

Write-Host "================================="
Write-Host "       BIRTHDAY REMINDER"
Write-Host "================================="
Write-Host "Today's Date: $(Get-Date -Format 'yyyy-MM-dd')"
Write-Host ""

$birthdays = Import-Csv $csvFile

$found = $false

foreach ($person in $birthdays) {

    if ($person.Birthday -eq $today) {

        $found = $true

        Write-Host "Birthday Today!"
        Write-Host "Name: $($person.Name)"
        Write-Host "Birthday: $($person.Birthday)"
        Write-Host ""
    }
}

if (-not $found) {
    Write-Host "No birthdays today."
}

Write-Host "================================="
Write-Host "Script execution completed."
Write-Host "================================="