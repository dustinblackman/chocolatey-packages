$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/languagetool-code-comments/releases/download/v0.6.0/languagetool-code-comments_0.6.0_windows_amd64.zip'
    checksum64     = 'b10dba32d668f236e154a0fd1a8caa78d16963a7e8971650e258f5dd8cc70386'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
