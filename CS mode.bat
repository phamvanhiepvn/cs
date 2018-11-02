@ECHO OFF

:: COUNTER STRIKE 1.6

SET N=     0. Normal
SET T=     1. Team Deathmatch
SET S=     2. Single Deathmatch
SET ZP=     3. Zombie Plague
SET ZB=     4. Zombie Biohazard
SET G=     5. Ghost
SET GG=     6. Gungame
IF EXIST cstrike\addons\amxmodx\configs\plugins-normal.ini (   
SET N=+    0. Normal
IF EXIST cstrike\addons\amxmodx\configs\plugins-csdm.ini ( 
SET T=+    1. Team Deathmatch 
SET N=     0. Normal
)
IF EXIST cstrike\addons\amxmodx\configs\plugins-csdm_single.ini ( 
SET S=+    2. Single Deathmatch 
SET N=     0. Normal
)
)
IF NOT EXIST cstrike\addons\amxmodx\configs\plugins-normal.ini ( 
IF EXIST cstrike\addons\amxmodx\configs\plugins-zplague.ini  ( SET ZP=+    3. Zombie Plague )
IF EXIST cstrike\addons\amxmodx\configs\plugins-bio.ini  ( SET ZB=+    4. Zombie Biohazard )
IF EXIST cstrike\addons\amxmodx\configs\plugins-ghost.ini ( SET G=+    5. Ghost )
IF EXIST cstrike\addons\amxmodx\configs\plugins-gungame.ini ( SET GG=+    6. Gungame )
)
ECHO *****************************
ECHO COUNTER STRIKE 1.6
ECHO.                             
ECHO MOD GAME:           
ECHO *****************************
ECHO %N%
ECHO %T%
ECHO *****************************
ECHO press "0" or "1":
SET /P CD=
IF '%CD%'=='0' (
REN cstrike\addons\amxmodx\configs\plugins-csdm.ini disabled-csdm.ini
REN cstrike\\resource\GameMenu.res GameMenu-dm.res
REN cstrike\\resource\GameMenu-nm.res GameMenu.res
CLS
ECHO You've chosen NORMAL mode, press any key to escape.
PAUSE >NUL
EXIT
 )
IF '%CD%'=='1' (
REN cstrike\addons\amxmodx\configs\disabled-csdm.ini plugins-csdm.ini
REN cstrike\\resource\GameMenu.res GameMenu-nm.res
REN cstrike\\resource\GameMenu-dm.res GameMenu.res
CLS
ECHO You've chosen Team DeathMatch mode, press any key to escape.
PAUSE >NUL
EXIT )
EXIT













