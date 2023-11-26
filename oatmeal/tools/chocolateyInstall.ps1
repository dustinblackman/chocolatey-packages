$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.5.2/oatmeal_0.5.2_windows_amd64.zip'
    checksum64     = 'e23756a81b16713c04ccdb45cae70f357234035cfc9494fa29b0b97d77af0256'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
