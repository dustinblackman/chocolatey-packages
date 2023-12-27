$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.12.0/oatmeal_0.12.0_windows_amd64.zip'
    checksum64     = 'c23e664caac8b4f9693187b5d950119e1475078529f14fc5e2a5ac28d7ac15a5'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
