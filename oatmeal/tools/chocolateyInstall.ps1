$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.9.0/oatmeal_0.9.0_windows_amd64.zip'
    checksum64     = '36240422d5863499984339ceb46fa0c01bd1925311999e57ede9eef491437fbc'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
