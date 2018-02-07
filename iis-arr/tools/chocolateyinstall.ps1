
$ErrorActionPreference = 'Stop';


$packageName= 'iis-arr'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.microsoft.com/download/5/3/2/532630BE-7DCA-4352-984B-8D4EADBE5BEF/requestRouter_x86.msi'
$url64      = 'http://download.microsoft.com/download/E/9/8/E9849D6A-020E-47E4-9FD0-A023E99B54EB/requestRouter_amd64.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  silentArgs    = "/qn /norestart /l*v `"$env:TEMP\chocolatey\$($packageName)\$($packageName).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'Microsoft Application Request Routing 3.0'
  checksum      = 'd28562a13d5af235d2c3dfe2f0e82214af696486'
  checksumType  = 'sha1'
  checksum64    = '9bbe610e347909afa68230778b9242bb57bbbc55'
  checksumType64= 'sha1'
}

Install-ChocolateyPackage @packageArgs

















