@echo off
git add -A
set /p commitMsg=Commit Message: 
git commit -m "%commitMsg%"
git push