$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.7.3/oatmeal_0.7.3_windows_amd64.zip'
    checksum64     = 'e029e5e326fbe33a70ef8b545254da47bc26a785d2f3a30ccf776a83c4706d73'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
