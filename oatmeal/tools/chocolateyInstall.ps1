$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.3.0/oatmeal_0.3.0_windows_amd64.zip'
    checksum64     = 'f96471ad8a949bf1c1fc2d7b9299acca8ed20f13c7245c0620b2edd5ea83a562'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
