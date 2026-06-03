Set objShell = CreateObject("WScript.Shell")
Set args = WScript.Arguments
dest = args.Item(0)

objShell.Run "powershell.exe -ExecutionPolicy Bypass -NoProfile -WindowStyle Hidden -File ""C:\Path\To\Powershell\Script.ps1"" """ & dest & """", 0, False
