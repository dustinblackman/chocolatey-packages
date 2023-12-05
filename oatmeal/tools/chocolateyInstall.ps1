$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.7.0/oatmeal_0.7.0_windows_amd64.zip'
    checksum64     = 'fdebf2991923d7a79c95dfc5106f8f8c1debec041321d95292e55d03fbdd356d'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
