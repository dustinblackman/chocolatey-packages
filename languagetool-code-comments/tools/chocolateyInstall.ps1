$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/languagetool-code-comments/releases/download/v0.6.2/languagetool-code-comments_0.6.2_windows_amd64.zip'
    checksum64     = '5b8ddbba0f707c1e945c65f620187234e07110034dc9f930434c59d041797b2e'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
