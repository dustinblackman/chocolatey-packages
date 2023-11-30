$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/languagetool-code-comments/releases/download/v0.6.3/languagetool-code-comments_0.6.3_windows_amd64.zip'
    checksum64     = 'dea1a3483b5d9a8d50aa528e82025506519766b78197b172d02512bbbdd2f55c'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
