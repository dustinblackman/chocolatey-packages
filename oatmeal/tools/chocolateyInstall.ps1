$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.5.3/oatmeal_0.5.3_windows_amd64.zip'
    checksum64     = '496d5acae3099d8dc6912b86197a0d0d21b75773c7b9066618e8c16e22e1780b'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
