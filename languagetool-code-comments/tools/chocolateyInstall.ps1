$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/languagetool-code-comments/releases/download/v0.4.4/languagetool-code-comments_0.4.4_windows_amd64.zip'
    checksum64     = 'b9447f9a98215e00bb3bf80f4ef09bcaafe59451455daface7a67925862a4bcb'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
