@echo off

REM Set title to program window
title SysInfoLogger - http://marcus.crisisresponseunit.com/

REM Pick a random number for the output directory, this prevents overwriting
REM previous reports
:start
echo Setting random number for report output
set randnum=%RANDOM%

REM Now we check to make sure we're not using the same number twice
REM (This rarely happens, since the %RANDOM% variable picks a number between
REM 1 and 32767). If the number was used, script skips to :used, else goes to
REM :unused
echo Checking if random number picked was previously used
if exist rpt_%randnum% goto used else goto unused
:unused

REM Now we'll make the directory to place all the text file outputs
echo Creating rpt_%randnum% directory
mkdir rpt_%randnum%

REM Now we run the reports and get info from each program.
echo Getting info. Currently running program name will be displayed as it runs
echo.

echo whoami
whoami > .\rpt_%randnum%\whoami_%randnum%.txt

echo ipconfig /all
ipconfig /all > .\rpt_%randnum%\ipconfig--all_%randnum%.txt

echo nbtstat -n
nbtstat -n > .\rpt_%randnum%\nbtstat--n_%randnum%.txt

echo net config workstation
net config workstation > .\rpt_%randnum%\net-config-workstation_%randnum%.txt

echo net user
net user > .\rpt_%randnum%\net-user_%randnum%.txt

echo net file
net file > .\rpt_%randnum%\net-file_%randnum%.txt

echo net accounts
net accounts > .\rpt_%randnum%\net-accounts_%randnum%.txt

echo net share
net share > .\rpt_%randnum%\net-share_%randnum%.txt

echo net use
net use > .\rpt_%randnum%\net-use_%randnum%.txt

echo pslist -t
"./res/pslist.exe" -t > .\rpt_%randnum%\pslist--t_%randnum%.txt

echo quser
quser > .\rpt_%randnum%\quser_%randnum%.txt

echo psloggedon
"./res/psloggedon.exe" > .\rpt_%randnum%\psloggedon_%randnum%.txt

echo netstat -ao
netstat -ao > .\rpt_%randnum%\netstat--ao_%randnum%.txt

echo netstat -no
netstat -no > .\rpt_%randnum%\netstat--no_%randnum%.txt

echo sclist
"./res/sclist.exe" > .\rpt_%randnum%\sclist_%randnum%.txt

echo showgrps
"./res/showgrps.exe" > .\rpt_%randnum%\showgrps_%randnum%.txt

echo systeminfo
systeminfo > .\rpt_%randnum%\systeminfo_%randnum%.txt

echo wmic product
wmic product > .\rpt_%randnum%\wmic-product_%randnum%.txt

REM Tell user that scan is complete, the report directory, and hostname for 
REM their own reference.
echo.
echo.
echo Done. Report output directory: .\rpt_%randnum%\. Computer's hostname:
hostname
echo.
echo.
echo Press a key to quit.
pause > NUL
exit

REM Tell user that there was a duplicate number, and go back to try again
:exist
echo Report number was previously used. Setting new number
:start
