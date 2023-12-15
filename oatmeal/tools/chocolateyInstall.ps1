$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.9.1/oatmeal_0.9.1_windows_amd64.zip'
    checksum64     = 'dbf193d4449669119308784e1a6689d471a0aff19e03cd0a9a59577349dc76a4'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
