
$ErrorActionPreference = 'Stop';


$packageName= 'UrlRewrite'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/6/8/F/68F82751-0644-49CD-934C-B52DF91765D1/rewrite_x86_en-US.msi'
$url64      = 'https://download.microsoft.com/download/D/D/E/DDE57C26-C62C-4C59-A1BB-31D58B36ADA2/rewrite_amd64_en-US.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  silentArgs    = "/qn /norestart /l*v `"$env:TEMP\chocolatey\$($packageName)\$($packageName).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'IIS URL Rewrite Module 2'
  checksum      = '51F504CD23E5AE0F084FEFEE7FAB0833F64F0B73'
  checksumType  = 'sha1'
  checksum64    = 'D2542E2D398F0E95981EBF4E729F79EAF96E6691'
  checksumType64= 'sha1'
}

Install-ChocolateyPackage @packageArgs

















