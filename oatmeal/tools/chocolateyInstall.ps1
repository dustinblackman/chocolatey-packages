$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.12.4/oatmeal_0.12.4_windows_amd64.zip'
    checksum64     = '75f5c08d27bce2738f11fc903a0420a88f3a75ca7155c227f123323895066c9c'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
