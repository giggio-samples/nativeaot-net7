function time() {
    $sw = [Diagnostics.Stopwatch]::StartNew()
    Invoke-Expression $($args -join ' ')
    $sw.Stop()
    $sw.elapsed
}

dotnet publish -r win-x64 -c Release
Get-ChildItem .\bin\Release\net7.0\win-x64\publish\NativeAot.exe
time .\bin\Release\net7.0\win-x64\publish\NativeAot.exe
time .\bin\Release\net7.0\win-x64\NativeAot.exe