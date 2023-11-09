$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/languagetool-code-comments/releases/download/v0.6.1/languagetool-code-comments_0.6.1_windows_amd64.zip'
    checksum64     = '96f2bbe798171070edf8711cc17744fcc4f5705fd9e72b05c6e55d950796d4a6'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
