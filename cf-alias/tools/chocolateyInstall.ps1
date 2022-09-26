$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/cf-alias/releases/download/v0.1.5/cf-alias_0.1.5_windows_amd64.zip'
    checksum64     = 'fd2f6016d00dd608135c6b3665f0a927c881bf947a806630b74fbf8eee140260'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
