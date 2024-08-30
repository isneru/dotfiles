Import-Module PSReadLine

# Disable the sound when pressing Tab for autocompletion
Set-PSReadLineOption -BellStyle None

Clear-Host

function prompt {
  $dir = Split-Path -leaf -path (Get-Location)
  "$Env:username@$dir > "
}

# "backgroundImage": "https://images6.alphacoders.com/134/thumb-1920-1347028.jpeg"