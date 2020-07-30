
$ErrorActionPreference = 'Stop';


$packageName= 'UrlRewrite'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/D/8/1/D81E5DD6-1ABB-46B0-9B4B-21894E18B77F/rewrite_x86_en-US.msi'
$url64      = 'https://download.microsoft.com/download/1/2/8/128E2E22-C1B9-44A4-BE2A-5859ED1D4592/rewrite_amd64_en-US.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  silentArgs    = "/qn /norestart /l*v `"$env:TEMP\chocolatey\$($packageName)\$($packageName).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'IIS URL Rewrite Module 2'
  checksum      = '4EFCC6C95B20B0A842C78CFA7781B17D9165EC9E'
  checksumType  = 'sha1'
  checksum64    = '8F41A67FA49110155969DCCFF265B8623A66448F'
  checksumType64= 'sha1'
}

Install-ChocolateyPackage @packageArgs

















