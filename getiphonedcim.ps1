$Shell = New-Object -ComObject Shell.Application
$ShellItem = $Shell.NameSpace(17).Self
$appleiphonefolder = ($ShellItem.GetFolder.items() | Where-Object {$_.Name -eq 'Apple iPhone'}).GetFolder.items()
$internalstorage = ($appleiphonefolder| Where-Object {$_.Name -eq 'Internal Storage'}).GetFolder.items()
$dcim = ($internalstorage | Where-Object {$_.Name -eq 'DCIM'}).GetFolder.items()


