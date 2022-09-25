$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/languagetool-code-comments/releases/download/v0.3.0/languagetool-code-comments_0.3.0_windows_amd64.zip'
    checksum64     = 'd3bbce539ee220c26dbfea5dee7ba3ac8a48d14a9044fce4f5e5fb3e1e3d5064'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
