$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.2.4/oatmeal_0.2.4_windows_amd64.zip'
    checksum64     = '44044f5db92292bec12bc619c52d88cec59ddcc0bf6e06dc5a82191e505fa72e'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
