$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.1.0/oatmeal_0.1.0_windows_amd64.zip'
    checksum64     = '54db1cef6f358e6e53f7c242fd6be1f167e23878a2fef44edb6646e5f05b1734'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
