title Total Control
@echo off
set /a number=%random% %% 5
goto %number%

:0
goto :1

:1 
color 0A
goto :entrylocation
:2 
color 0C
goto :entrylocation
:3
color 0B
goto :entrylocation
:4 
color 0D
goto :entrylocation
:5
goto :1

:entrylocation
cls
echo                             Enter Password To Continue
echo                                    ------------

set /p acn=
if %acn% == lawn goto :main
echo Incorrect Password!
pause 
cls
goto :badpass

:main
set /a number=%random% %% 5
goto 7%number%

:70
goto :main

:71 
color 0A
goto :colorshift
:72 
color 0C
goto :colorshift
:73
color 0B
goto :colorshift
:74 
color 0D
goto :colorshift
:75
goto :71

:colorshift

cls
echo                               ______      __        __
echo                              /_  __/___  / /_____ _/ /
echo                               / / / __ \/ __/ __  / / 
echo                              / / / /_/ / /_/ /_/ / /  
echo                             /_/  \____/\__/\__/_/_/   
echo                         ______            __             __
echo                        / ____/___  ____  / /__________  / /
echo                       / /   / __ \/ __ \/ __/ ___/ __ \/ / 
echo                      / /___/ /_/ / / / / /_/ /  / /_/ / /  
echo                      \____/\____/_/ /_/\__/_/   \____/_/                              
echo                    ---------------------------------------------
echo                           Please Enter The Computer Name:
set /p cpu=                             
cls
:main1
set /a number=%random% %% 5
goto 8%number%
:80
goto :main1

:81 
color 0A
goto :colorswap
:82 
color 0C
goto :colorswap
:83
color 0B
goto :colorswap
:84 
color 0D
goto :colorswap
:85
goto :81

:colorswap
cls
echo                               ______      __        __
echo                              /_  __/___  / /_____ _/ /
echo                               / / / __ \/ __/ __  / / 
echo                              / / / /_/ / /_/ /_/ / /  
echo                             /_/  \____/\__/\__/_/_/   
echo                         ______            __             __
echo                        / ____/___  ____  / /__________  / /
echo                       / /   / __ \/ __ \/ __/ ___/ __ \/ / 
echo                      / /___/ /_/ / / / / /_/ /  / /_/ / /  
echo                      \____/\____/_/ /_/\__/_/   \____/_/                                                                     
echo                    ---------------------------------------------
echo                        What Would You Like To Do To %cpu%? 
echo 1. End Chrome
echo 2. End Firefox
echo 3. End Internet Explorer
echo 4. End Java
echo 5. Kill Explorer.exe
echo 6. Shutdown Computer
echo 7. Restart Computer
echo 8. Send Message
echo 9. Constant Internet Block
echo 10. NEW COMPUTER
echo 11. EXIT

set /p acn=
if %acn% == 1 goto :chrome
if %acn% == 3 goto :internetexplorer
if %acn% == 5 goto :explorer
if %acn% == 4 goto :ask
if %acn% == 2 goto :ffox
if %acn% == 6 goto :shutdown
if %acn% == 7 goto :restart
if %acn% == 8 goto :msg
if %acn% == 9 goto :safe
if %acn% == 10 goto :main
if %acn% == 11 goto:goodbye
echo Unknown Command
pause
goto:main1

:internetexplorer
echo Are You Sure You Want To End Internet Explorer?
pause
taskkill /s %cpu% /f /pid iexplore.exe
goto :main1

:goodbye
echo Are You Sure You Want To Exit Total Control?
pause
exit

:safe 
echo Are You Sure You Want To Deny Internet Access To %cpu%?
pause
:safe222
taskkill /s %cpu% /pid firefox.exe
taskkill /s %cpu% /pid chrome.exe
taskkill /s %cpu% /f /pid iexplore.exe
goto :safe222

:ffox 
echo Are You Sure You Want To End Firefox?
pause
taskkill /s %cpu% /pid firefox.exe
goto :main1

:chrome
echo Are You Sure You Want To End Chrome?
pause
taskkill /s %cpu% /pid chrome.exe
goto :main1

:ask
echo Are You Sure You Want To End Java?
pause
taskkill /s %cpu% /pid javaw.exe
goto :main1

:explorer
echo Are You Sure You Want To Kill %cpu% 's Explorer?
pause
taskkill /s %cpu% /pid explorer.exe
goto :main1

:shutdown
echo Are You Sure You Want To Shutdown %cpu% ?
pause
shutdown /m \\%cpu% /s /f /t 0
goto :main1

:msg
msg * /SERVER:%cpu%
goto :main1

:restart
echo Are You Sure You Want To Restart %cpu% ?
pause
shutdown /m \\%cpu% /r /f /t 0
goto :main1

:badpass
echo                             Enter Password To Continue
echo                                    ------------
set /p acn=
if %acn% == lawn goto :main
echo Last Chance!
pause 
cls
goto :badpass2

:badpass2
echo                             Enter Password To Continue
echo                                    ------------
set /p acn=
if %acn% == lawn goto :main
echo Goodbye!
timeout 3
exit