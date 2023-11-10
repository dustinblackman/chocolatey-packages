$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.2.3/oatmeal_0.2.3_windows_amd64.zip'
    checksum64     = 'f002186b8583363b675c17d907d9dfa22c0bb2aacd5ca3ca367df5f04a96f016'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
