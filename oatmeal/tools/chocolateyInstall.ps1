$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.10.0/oatmeal_0.10.0_windows_amd64.zip'
    checksum64     = '1a26bbb5f7d527b1ca8a9e4ede2cc8da6a6e5b5195b9063cab2a115ad03146f3'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
