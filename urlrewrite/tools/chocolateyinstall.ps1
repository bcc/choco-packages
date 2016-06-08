
$ErrorActionPreference = 'Stop';


$packageName= 'UrlRewrite'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.microsoft.com/download/5/4/9/54980B19-9C64-4E8E-A69C-615A88DFF8B7/rewrite_x86.msi'
$url64      = 'http://download.microsoft.com/download/C/9/E/C9E8180D-4E51-40A6-A9BF-776990D8BCA9/rewrite_amd64.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  silentArgs    = "/qn /norestart /l*v `"$env:TEMP\$($packageName)\$($packageName).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'IIS URL Rewrite Module 2'
  checksum      = '154a645dd10a9b22bf52ad161bac5199d284d5ec'
  checksumType  = 'sha1'
  checksum64    = '6a98b994adcc2e8d21507bf2b8baffb402c17395'
  checksumType64= 'sha1'
}

Install-ChocolateyPackage @packageArgs

















