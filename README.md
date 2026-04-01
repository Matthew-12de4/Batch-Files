# Batch Files
This is a collection of batch files I have made over time. I created this for personal use, but thought I'd share them on GitHub. I recommend creating shortcuts for some of them to make them look nicer but some require the .bat to be in the correct place.

## The Batch Files:

### Timed Shutdown
> :memo: **Note:** <font color ="green">Shortcut Compatible.</font>

#### What It Does
It will prompt you to choose how many minutes elaspe before your computer shuts down.<br>
Once that time has elasped it will force shutdown the computer.
#### Uses
Say you have a game installing that you want done by the morning but equally not want to have your PC running all night, You can use this batch file to shut down just after its finish downloading.

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
---

### Git Commit
> :memo: **Note:** <font color ="red">Shortcut Incompatible.</font>

#### What It Does
Once placed in a remote Git repository, it will prompt you for a commit message and if you set up GitHub CLI (Command Line Interface) correctly it will push all changes to it and show you what you uploaded.
#### Uses
Easier than GitHub Desktop for when you just want to commit your changes and quicker than Git Bash.

#### Code

``` bat
@echo off
git add -A
set /p commitMsg=Commit Message: 
git commit -m "%commitMsg%"
git push
echo:
echo All Changes Have Been Commited
echo:
git log -1 --stat
echo Closing in 5...
timeout /t 5 /nobreak > nul
```
