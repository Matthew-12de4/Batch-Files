# Batch Files
This is a collection of batch files I have made overtime. I created this for personal use, but thought id share them on github <br> <br>

I recommend creating shortcuts for some of them to make them look nicer but some require the .bat to be in the correct place

## The Batch Files:

### Timed Shutdown
> :memo: **Note:** <font color ="green">Shortcut Compatible.</font>

#### What It Does
Timed shutdown will prompt you to choose how many minutes elaspe before your computer shuts down<br>
Once that time has elasped it will force shutdown the computer.
#### Uses
Say you have a game installing that you want done by the morning but equally not want to have your PC running all night. You can use this batch file to shut down just after its finish downloading

#### Code

``` bat
@echo off
set /P "m=How Many Minutes Till ShutDown: "
set /A "s=m * 60"
shutdown -s -t %s%
echo:
echo Your PC will shut off in %m% minutes
timeout /t 5 /nobreak > nul
```

<br>
<br>

### Git Commit
> :memo: **Note:** <font color ="red">Shortcut Incompatible.</font>

#### What It Does
Once placed in a remote git repository it will prompt you for a commit message and if you set up github cli correctly it will push all changes to your remote
#### Uses
Easier than github desktop for when you just want to commit your changes and quicker than git bash

#### Code

``` bat
@echo off
git add -A
set /p commitMsg=Commit Message: 
git commit -m "%commitMsg%"
git push
```
