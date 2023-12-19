$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.9.2/oatmeal_0.9.2_windows_amd64.zip'
    checksum64     = '5a4cac1f5c35cf64ddd077b68a9e5904b7e728af41806c78a6bc8d45ea53fe79'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
