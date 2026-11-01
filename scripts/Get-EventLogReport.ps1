# Windows Troubleshooting Lab
# Script: Get-EventLogReport.ps1
# Purpose: Analyze recent Windows system errors and generate a troubleshooting report.

try {
    $events = Get-WinEvent -ErrorAction Stop -FilterHashtable @{
        LogName = "System"
        Level = 2
    } -MaxEvents 10 |
        Select-Object TimeCreated, Id, LevelDisplayName, ProviderName, Message
} catch {
    if ($_.FullyQualifiedErrorId -like "NoMatchingEventsFound*") {
        Write-Host "No matching events found"
    } else {
        Write-Error "An error occurred: $($_.Exception.Message)"
    }
    return
}

if ($events.Count -eq 0) {
    Write-Host "No system errors found."
    return
}

Write-Host "Events retrieved: $($events.Count)"

$eventGroups = $events | Group-Object Id
$mostFrequentError = $eventGroups | Sort-Object Count -Descending | Select-Object -First 1

$events | Format-Table TimeCreated, Id, LevelDisplayName, ProviderName -AutoSize
$eventGroups | Format-Table Count, Name -AutoSize

Write-Host "Most frequent error: Event ID $($mostFrequentError.Name) ($($mostFrequentError.Count) occurrences)"
