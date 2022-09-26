$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/gomodrun/releases/download/v0.4.5/gomodrun_0.4.5_windows_amd64.zip'
    checksum64     = '39b6eae3272e5270e973d87c5d26b4d9e116d6c6d09adb10446a0f8fc1f225e5'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
