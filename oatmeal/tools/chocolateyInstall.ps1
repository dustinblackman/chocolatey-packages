$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.12.5/oatmeal_0.12.5_windows_amd64.zip'
    checksum64     = 'fd61377b56ca2ca8a65ae76b56e8bba50022a20c8c95e6d8fb7f0dd6324e80b5'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
