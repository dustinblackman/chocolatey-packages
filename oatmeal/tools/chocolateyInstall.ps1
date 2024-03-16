$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.13.0/oatmeal_0.13.0_windows_amd64.zip'
    checksum64     = 'bf207b202538dbbd4f97a8c535cbd676267393d5ea2737e32f8be97e6585f5a8'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
