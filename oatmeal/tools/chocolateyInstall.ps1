$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.11.0/oatmeal_0.11.0_windows_amd64.zip'
    checksum64     = 'ebae9fc879f4291e2fc52b1e4f63dd50777c8a33f4f99411f7e727d65cc91d87'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
