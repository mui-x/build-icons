set root=d:\mui-x\build-icons\

d:
cd %root%
rmdir lib-native /s /q
rmdir lib-web /s /q

cd %root%design\
rmdir mdi-react /s /q

call git clone https://github.com/levrik/mdi-react
cd mdi-react
call npm install
rmdir mdi /s /q
call git submodule add -f --name mdi https://github.com/Templarian/MaterialDesign-SVG mdi

xcopy %root%design\mdi-react-lm\*.* %root%design\mdi-react\*.* /s /y

npm run build

rmdir %root%node_modules\@types\node /s /q
rmdir %root%design\mdi-react /s /q
