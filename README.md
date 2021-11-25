# VSH2-package-manager-prototype
a prototype package manager plugin to allow installing of VSH2 bosses


## Building the plugin
This plugin is dependent on a few include files, in order to install them you can run either `getDependencies.bat`,`getDependencies.ps1` or `getDependencies.sh`. This will pull include files from [JoinedSenses's new declaration rewrites of various extensions](https://github.com/JoinedSenses/SourceMod-IncludeLibrary/tree/master/include).

Inside this repository are three build scripts: `build.cmd`, `build.ps1` and `build.sh`, these scripts aim to make building a little bit easier to get everything all set up. They all follow the same expected argument syntax: `<path/to/spcomp> [path/to/sources] [-switches]`
`<path/to/spcomp>` is the path to where you have the sourcepawn compiler executable stored.
`[path/to/sources]` are the paths to the source pawn scripts, they should be either a full path or a path relative to the project diretory.
`[-switches]` are the extra switches passed to the compiler, `-o`, `-O` and `-v` are already handled inside the scripts.

To use the scripts first you should change directory to the project's root directory, from there you can use one of the following commands to build, be sure to replace `<path/to/spcomp>` and `<path/to/sm/includes>` with an actual path!
### Batch (command prompt)
```
./build.cmd <path/to/spcomp> 'scripting/vshPackageManager.sp' -i='scripting/include' -i='<path/to/sm/includes>'
```
### Powershell
```
./build.ps1 <path/to/spcomp> 'scripting/vshPackageManager.sp' -i='scripting/include' -i='<path/to/sm/includes>'
```
### Bash
```
./build.sh <path/to/spcomp> 'scripting/vshPackageManager.sp' -i='scripting/include' -i='<path/to/sm/includes>'
```

Once built, the plugin should be in `<projectRoot>/build`.
