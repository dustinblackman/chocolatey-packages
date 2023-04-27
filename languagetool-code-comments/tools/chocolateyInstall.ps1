$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/languagetool-code-comments/releases/download/v0.5.0/languagetool-code-comments_0.5.0_windows_amd64.zip'
    checksum64     = '563126b4a8e380d861a5eabd8f64359d752d3bfb204ac94fa8ddd7df5d06f86a'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
