
$ErrorActionPreference = 'Stop';


$packageName= 'iis-media-services'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/9/E/A/9EA89305-2B2E-4379-8C1B-69FFFFD4D4FD/IISMedia32.msi'
$url64      = 'https://download.microsoft.com/download/1/7/5/175931F3-DCF8-4E8F-A62D-884C5ACF6D46/IISMedia64.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  silentArgs    = "/qn /norestart /l*v `"$env:TEMP\$($packageName)\$($packageName).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'IIS Media Services 4.1'
  checksum      = '8f23129fc9c3d9d43e86d3ea9d2b3cd67053c592'
  checksumType  = 'sha1'
  checksum64    = '4f9766e6b364af030e34b314fd3ec0c4bfc8f855'
  checksumType64= 'sha1'
}

Install-ChocolateyPackage @packageArgs

















