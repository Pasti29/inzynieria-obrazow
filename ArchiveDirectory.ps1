# ArchiveDirectory.ps1

[CmdletBinding()]
param (
    [Parameter(Mandatory, HelpMessage = "Provide directory name to archive")]
    [string]
    $Directory
)

$compress = @{
    Path = Get-ChildItem $Directory -Exclude venv, instrukcja*, "$Directory.pdf"
    CompressionLevel = "Fastest"
    DestinationPath = "$Directory.zip"
}
# $CurrentDirectory = Get-Location
# Get-ChildItem $Directory -Exclude venv, instrukcja*, "$Directory.pdf"
Compress-Archive @compress