echo %~n1
For /f "tokens=1-3 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%b-%%a)
ren ".\_posts\%1" %mydate%-%1
move ".\_posts\*.png" images\