Clear-Host

if (-not (Get-Module PSReadLine)) {
  Import-Module PSReadLine
}
# Set-PSReadLineOption -PredictionSource History
function prompt {
  $dir = Split-Path -leaf -path (Get-Location)
  $user = "1241692"  # Get the username once
  "$user@$dir > "
}

oh-my-posh init pwsh --config "https://raw.githubusercontent.com/fgalmeida/sky/refs/heads/main/sky.omp.json" | Invoke-Expression