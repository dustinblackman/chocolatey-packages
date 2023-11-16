$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.2.5/oatmeal_0.2.5_windows_amd64.zip'
    checksum64     = '6c1e5bd250a2417088280ec5dea823bec446bc000a1d8cfcde14456357e9d989'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
