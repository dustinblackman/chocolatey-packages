$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.4.0/oatmeal_0.4.0_windows_amd64.zip'
    checksum64     = '604868c68ea75fb9694699fad325572e13d4a33fb80a76f458a432cd27c2e751'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
