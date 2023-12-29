$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.12.1/oatmeal_0.12.1_windows_amd64.zip'
    checksum64     = 'f680e6d35d1994f792dc86d41058d02824abc8848daa5280610d479eac9c8034'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
