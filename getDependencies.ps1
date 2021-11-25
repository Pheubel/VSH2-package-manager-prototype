Push-Location $PSScriptRoot

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/JoinedSenses/SourceMod-IncludeLibrary/master/include/cURL.inc" -OutFile "./scripting/include/cURL.inc"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/JoinedSenses/SourceMod-IncludeLibrary/master/include/cURL_header.inc" -OutFile "./scripting/include/cURL_header.inc"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/JoinedSenses/SourceMod-IncludeLibrary/master/include/socket.inc" -OutFile "./scripting/include/socket.inc"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/JoinedSenses/SourceMod-IncludeLibrary/master/include/steamtools.inc" -OutFile "./scripting/include/steamtools.inc"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/JoinedSenses/SourceMod-IncludeLibrary/master/include/steamworks.inc" -OutFile "./scripting/include/SteamWorks.inc"

Pop-Location