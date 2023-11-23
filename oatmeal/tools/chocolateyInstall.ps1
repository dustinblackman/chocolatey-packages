$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.5.0/oatmeal_0.5.0_windows_amd64.zip'
    checksum64     = '60b3c50c1657db9a91ad0aaa99843b987499e0d92bde16272d9de7b5ea48ee78'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
