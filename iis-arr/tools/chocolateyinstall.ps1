
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
  checksum      = '69bd0a5fb2a9f9cbed3a5cb1a4ca429698610d07'
  checksumType  = 'sha1'
  checksum64    = '5f4f24058dcd675da46dc0c4b17969d41fce68c1'
  checksumType64= 'sha1'
}

Install-ChocolateyPackage @packageArgs

















