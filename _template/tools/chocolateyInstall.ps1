$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/dustinblackman/!!NAME!!/releases/download/v!!VERSION!!/!!NAME!!_!!VERSION!!_windows_amd64.zip'
    checksum64     = '!!CHECKSUM!!'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
