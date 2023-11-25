$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.5.1/oatmeal_0.5.1_windows_amd64.zip'
    checksum64     = 'be761137e6fdb687c65c8840301ba26c9474f8f73092748b4563c2da637b1902'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
