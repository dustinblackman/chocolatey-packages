$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.2.2/oatmeal_0.2.2_windows_amd64.zip'
    checksum64     = '161d60b46b5186f38c3abb6025829b410ca6e22318bb7e9cd791eec1e97b2f47'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
