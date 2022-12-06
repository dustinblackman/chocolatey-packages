$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/languagetool-code-comments/releases/download/v0.4.3/languagetool-code-comments_0.4.3_windows_amd64.zip'
    checksum64     = '25441c920a31bbae9479fb22fef67a59b462e58012bb6acd9b9ff74b94f61340'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
