$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.8.0/oatmeal_0.8.0_windows_amd64.zip'
    checksum64     = '8c23def55cbcbaf06047462b2711abc262b493144082d7cf47e5b918dc1a7457'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
