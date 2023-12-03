$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.6.1/oatmeal_0.6.1_windows_amd64.zip'
    checksum64     = '5eee7d6b2e7465f8d3714da88ec254e96af89c95bdf4e8bf61e68e3c1eb21edd'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
