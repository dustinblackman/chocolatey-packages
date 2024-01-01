$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.12.2/oatmeal_0.12.2_windows_amd64.zip'
    checksum64     = 'c355707890093c6150b9eb4382e785e598fca6557cbf006e5dbe1149a7b9ca47'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
