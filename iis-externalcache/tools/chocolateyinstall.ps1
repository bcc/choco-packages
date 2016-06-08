
$ErrorActionPreference = 'Stop';


$packageName= 'iis-externalcache'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.microsoft.com/download/D/C/E/DCEE2E97-3008-474F-896C-54E9DFE4C81B/ExternalDiskCache_x86.msi'
$url64      = 'http://download.microsoft.com/download/C/A/5/CA5FAD87-1E93-454A-BB74-98310A9C523C/ExternalDiskCache_amd64.msi'

$packageArgs = @{ 
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  silentArgs    = "/qn /norestart /l*v `"$env:TEMP\$($packageName)\$($packageName).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Microsoft External Cache'
  checksum      = '77a28bd68a0a51981eeb37ba39632831bd7d9a59'
  checksumType  = 'sha1'
  checksum64    = 'e408df20ee6aa202c7bc3771a4f5a97d2bfc52bf'
  checksumType64= 'sha1'
}

Install-ChocolateyPackage @packageArgs

















