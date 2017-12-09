set root=d:\mui-x\build-icons\

d:

copy %root%design\web-package.json %root%lib-web\package.json
cd %root%lib-web
call npm.cmd version patch
copy %root%lib-web\package.json %root%design\web-package.json
call npm.cmd publish

copy %root%design\native-package.json %root%lib-native\package.json
cd %root%lib-native
call npm version patch
copy %root%lib-native\package.json %root%design\native-package.json
call npm publish

