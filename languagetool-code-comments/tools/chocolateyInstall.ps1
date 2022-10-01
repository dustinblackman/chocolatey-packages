$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/languagetool-code-comments/releases/download/v0.4.0/languagetool-code-comments_0.4.0_windows_amd64.zip'
    checksum64     = '491101dfed0cb65f609d37bbfe8428ece3afb337ff3ed77a808bbc3311e45dd4'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
