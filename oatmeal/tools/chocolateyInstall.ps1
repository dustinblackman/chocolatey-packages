$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.6.0/oatmeal_0.6.0_windows_amd64.zip'
    checksum64     = 'cf0f603e768356f16855ef6fa0d42807d64d4b921740e962131a1599d84c44c5'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
