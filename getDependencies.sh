#!/bin/bash

script_dir=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

cd "$script_dir"

wget "https://raw.githubusercontent.com/JoinedSenses/SourceMod-IncludeLibrary/master/include/cURL.inc" -O "./scripting/include/cURL.inc"
wget "https://raw.githubusercontent.com/JoinedSenses/SourceMod-IncludeLibrary/master/include/cURL_header.inc" -O "./scripting/include/cURL_header.inc"
wget "https://raw.githubusercontent.com/JoinedSenses/SourceMod-IncludeLibrary/master/include/socket.inc" -O "./scripting/include/socket.inc"
wget "https://raw.githubusercontent.com/JoinedSenses/SourceMod-IncludeLibrary/master/include/steamtools.inc" -O "./scripting/include/steamtools.inc"
wget "https://raw.githubusercontent.com/JoinedSenses/SourceMod-IncludeLibrary/master/include/steamworks.inc" -O "./scripting/include/SteamWorks.inc"