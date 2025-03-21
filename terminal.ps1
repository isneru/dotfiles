# $PROFILE is a special variable that stores the path to the current user's profile script.
# The profile script is executed every time you start a new PowerShell session.
Clear-Host


if (-not (Get-Module PSReadLine)) {
  Import-Module PSReadLine
}

# Disable the sound when pressing Tab for autocompletion
Set-PSReadLineOption -BellStyle None

# Set-PSReadLineOption -PredictionSource History

function prompt {
  $dir = Split-Path -leaf -path (Get-Location)
  "$Env:username@$dir > "
} 
