<h1>SysInfoLogger - http://marcus.crisisresponseunit.com/</h1>

<h3>Files that come with SysInfoLogger:</h3>

  res/pslist.exe        Sysinternals pslist.exe: http://technet.microsoft.com/en-us/sysinternals/bb896682
  res/psloggedon.exe    Sysinternals psloggedon.exe: http://technet.microsoft.com/en-us/sysinternals/bb897545
  res/SCLIST.EXE        Microsoft Service Listing Application (no URL)
  res/SHOWGRPS.EXE      Microsoft Windows NT Resource Kit: http://support.microsoft.com/kb/158388
  README.md 	          (this file)
  SysInfoLogger.bat     Main Application Script: https://github.com/marcusteaton/sysinfologger

<h4>SysInfoLogger.bat and this README are licensed under the GNU GPL v3.

All other files are licensed under their respective licenses.</h4>

This program will grab text output from a whole bunch of programs and drop the resulting text files into a folder. Note that some info may be repeated in some files due to the info that varying programs show. (e.g. whomami and net config workstation have some duplicate info).

Each report varies in size but usually will use about 200KB of disk space, so the script can be run safely on a flash drive, or even a floppy disk!

I did not add report archiving functionality as that would add to the overall distribution size. If there is enough demand however I will implement a archive feature, probably provided by 7-zip.

<h3>FAQ:</h3>
<ul>
<li>Q: "wmic product" is taking FOREVER!</li>
<ul>
<li>A: From my experiences it does take a while, especially if you have lots of programs and Windows Updates installed. If it takes too long, kill wmic.exe; the script will continue (albeit without a complete wmic report).</li>
</ul>
<li>Q: I'm getting a "System error 5 has occurred." and/or "Access is denied." message!</li>
<ul>
<li>A: Are you running as a Administrator? (Right-click SysInfoLogger.bat, click "Run as administrator".) If you're sill having the problem, it's probably a permissions issue. Make sure that the user you're running the script as has permission to run the program in question, or to write files to the current directory SysInfoLogger is running from.</li>
</ul>
<li>Q: I'm getting "'program name here' is not recognized as an internal or external command, operable program, or batch file." errors!</li>
<ul>
<li>A: Double check that your PATH variable has the following paths:
<ul>
<li>C:\Windows\</li>
<li>C:\Windows\System32\</li>
</ul>
Also, double check that the programs that are run are present in those paths.

Alternatively, you can copy each EXE from your Windows and System32 directory and place in in the same directory as SysInfoLogger.bat.</li>

--END OF FILE--