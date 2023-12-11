$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.8.2/oatmeal_0.8.2_windows_amd64.zip'
    checksum64     = '34aa4bc9a33e907b51ded75bd6a77684d6132ab12ced003bdbe122ef0ab042f2'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
