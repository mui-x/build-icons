set root=d:\mui-x\build-icons\

d:

copy %root%README.md %root%deploy/README.md
cd %root%deploy
call npm.cmd version patch
call npm.cmd publish
