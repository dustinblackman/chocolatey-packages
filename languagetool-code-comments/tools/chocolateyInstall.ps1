$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/languagetool-code-comments/releases/download/v0.4.2/languagetool-code-comments_0.4.2_windows_amd64.zip'
    checksum64     = 'b38b6ffbb73553dea765acad0fdc35f2e148ab61841c63d54ca7f5ec0bafec54'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
