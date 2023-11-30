$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.5.5/oatmeal_0.5.5_windows_amd64.zip'
    checksum64     = '0b0407641981b8cfa43309dc0aa02de11eb71fc5d5bfd79f76d039ba511e484e'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
