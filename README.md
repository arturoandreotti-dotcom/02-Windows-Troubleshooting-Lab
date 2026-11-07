# Project 02 — Windows Troubleshooting Lab

## Overview

Windows Troubleshooting Lab is a hands-on IT infrastructure project focused on Windows system administration, diagnostics, and troubleshooting using PowerShell.

The project includes scripts for analyzing memory usage, CPU activity, disk information, and Windows Event Logs. These scripts help collect system information, identify potential performance issues, and investigate recurring system errors.

The goal is to develop practical troubleshooting and automation skills while following professional documentation and version control practices.

## Objectives

- Learn to investigate common Windows system issues.
- Explore built-in Windows diagnostic tools.
- Use PowerShell to collect and inspect system information.
- Document troubleshooting steps and findings.
- Practice verifying results after applying a solution.

## Environment

| Component | Technology |
|---|---|
| Operating System | Windows 11 |
| Scripting Language | PowerShell |
| Development Environment | Visual Studio Code |
| Version Control | Git and GitHub |
| Documentation | Markdown |

The scripts use built-in Windows management tools and PowerShell cmdlets to collect and analyze system information.

## Troubleshooting Scripts

The project includes four PowerShell scripts designed to collect and analyze Windows system information.

### 1. Memory Analysis — `Get-MemoryReport.ps1`

Collects information about physical memory usage and running processes to help investigate potential memory-related performance issues.

### 2. CPU Analysis — `Get-CPUReport.ps1`

Collects CPU-related information and process activity to help identify processes that may be contributing to high CPU utilization.

### 3. Disk Analysis — `Get-DiskReport.ps1`

Retrieves disk and volume information to support storage monitoring and troubleshooting.

### 4. Event Log Analysis — `Get-EventLogReport.ps1`

Retrieves recent errors from the Windows System event log, groups them by Event ID, and identifies the most frequently occurring error within the retrieved sample.

The script also handles situations where no matching events are found or when event retrieval fails.

## How to Run

### Prerequisites

- Windows 11
- Windows PowerShell 5.1 or PowerShell 7.6.9 (both tested on Windows 11)
- Git (optional, for cloning the repository)

Some system information may require elevated permissions.

### PowerShell Compatibility

All four troubleshooting scripts were successfully tested on Windows 11 using:

- Windows PowerShell 5.1
- PowerShell 7.6.9

| Script | Windows PowerShell 5.1 | PowerShell 7.6.9 |
|---|---|---|
| `Get-MemoryReport.ps1` | Passed | Passed |
| `Get-CPUReport.ps1` | Passed | Passed |
| `Get-DiskReport.ps1` | Passed | Passed |
| `Get-EventLogReport.ps1` | Passed | Passed |

Testing confirmed successful script execution, expected report output, and correct formatting in both environments.

These results reflect functional testing on the documented Windows 11 environment and do not guarantee compatibility with every PowerShell version or Windows configuration.

### Clone the Repository

Open PowerShell and run:

```powershell
git clone https://github.com/arturoandreotti-dotcom/Windows-Troubleshooting-Lab.git
cd Windows-Troubleshooting-Lab
```

Alternatively, download the repository as a ZIP file from GitHub and extract it.

### Run the Scripts

From the repository's root directory, execute the desired script:

```powershell
.\scripts\Get-MemoryReport.ps1
.\scripts\Get-CPUReport.ps1
.\scripts\Get-DiskReport.ps1
.\scripts\Get-EventLogReport.ps1
```

Each script displays diagnostic information directly in the PowerShell terminal.

### Execution Policy

If PowerShell prevents a script from running, inspect your current execution policy:

```powershell
Get-ExecutionPolicy -List
```

Review the execution policy requirements before making changes. Only run scripts from sources you trust.

## Example Output

The following example demonstrates the output of `Get-EventLogReport.ps1`, using a sample of 10 Windows System errors.

```text
Events retrieved: 10

TimeCreated          Id     LevelDisplayName  ProviderName
-------------------  -----  ----------------  -----------------------------------
01/11/2026 01:38:00  24641  Error             Microsoft-Windows-BitLocker-Driver
30/10/2026 00:21:00  10010  Error             Microsoft-Windows-DistributedCOM
... (8 additional events omitted)

Count  Name
-----  -----
9      24641
1      10010

Most frequent error: Event ID 24641 (9 occurrences)
```

*The event table above is abbreviated for readability. Actual results depend on the system and its event history.*

### Interpretation

In this example, Event ID `24641` appears nine times among the ten most recently retrieved System errors, making it the most frequent error in the sample.

The script identifies recurring error IDs to support further investigation. It does not automatically determine the root cause or repair the underlying issue.

## Skills Demonstrated

- **Windows Administration:** Inspecting system resources, processes, storage, and Windows Event Logs.
- **PowerShell Scripting:** Working with cmdlets, variables, objects, pipelines, filtering, grouping, sorting, and conditional statements.
- **Error Handling:** Using `try/catch`, `-ErrorAction Stop`, and error properties to handle different failure scenarios.
- **Troubleshooting:** Collecting diagnostic information, identifying recurring errors, and interpreting system behavior.
- **Git and GitHub:** Working with feature branches, meaningful commits, code reviews, pull requests, and merges.
- **Technical Documentation:** Writing reproducible instructions and documenting diagnostic results.

## Project Status

Four core troubleshooting scripts have been implemented and tested.

The initial project scope is complete. Future improvements may include additional diagnostic capabilities, automated tests, and structured report exports.
