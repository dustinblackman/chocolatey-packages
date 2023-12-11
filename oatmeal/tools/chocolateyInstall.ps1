$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.8.1/oatmeal_0.8.1_windows_amd64.zip'
    checksum64     = '5ea5822fea6d3db8435a19935ddc342cb543fd89c425fbd82e814048aecad152'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
