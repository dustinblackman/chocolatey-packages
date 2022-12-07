$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/cf-alias/releases/download/v0.1.9/cf-alias_0.1.9_windows_amd64.zip'
    checksum64     = 'e75c30c292232f66680f9a43ff1d974a282d69301760359e507763365be79c3a'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
