$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.2.1/oatmeal_0.2.1_windows_amd64.zip'
    checksum64     = 'a6740ef676076e748d271f4041c41aceb6eef90524cfd2f8c83893ae5b0e914d'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
