$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.7.2/oatmeal_0.7.2_windows_amd64.zip'
    checksum64     = 'e563954cd444136010879a0e624895cc43a35b540606f3e7195a76b529af1f17'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
