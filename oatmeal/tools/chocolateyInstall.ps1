$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/oatmeal/releases/download/v0.5.4/oatmeal_0.5.4_windows_amd64.zip'
    checksum64     = '577e8aa4715b7a46c11e1911d40f5157275bfa89cace69fe62137b91f821cfae'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
