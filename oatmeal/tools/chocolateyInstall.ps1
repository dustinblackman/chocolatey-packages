$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.12.3/oatmeal_0.12.3_windows_amd64.zip'
    checksum64     = '86de780ef0195b26dfc8e67bb30feb6f1bdb2c902c96640e545b2be4ee73d1b6'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
