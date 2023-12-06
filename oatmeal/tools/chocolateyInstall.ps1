$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.7.1/oatmeal_0.7.1_windows_amd64.zip'
    checksum64     = '362e4b00e4fab0ea36d1a434f480cbf5b67818c85a850b58e399218764193f9d'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
