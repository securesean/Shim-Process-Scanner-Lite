REM @author:       Sean Pierce
REM @license:      GNU General Public License 2.0 or later
REM @contact:      sdb at securesean com	
REM @organization: iSIGHT Partners
REM This searches for Dll's related to shimming. Be sure to run with a x64 shell on a x64 system. You will also get more results when running as administrators

@echo off
REM echo Scanning for Shimming DLLs
for %%a in (SystemShimmingDlls SCShim.dll acadproc.dll apphelp.dll AcGenral.dll AcLayers.dll AcRes.dll AcSpecfc.dll AcWinRT.dll acwow64.dll AcXtrnal.dll acgenral.dll aclayers.dll aclua.dll acspecfc.dll acxtrnal.dll apihex86.dll) do tasklist /FI "MODULES eq %%a" 2>nul
REM echo Scanning for Known Malicious Shimming Dlls
for %%a in (AcProtect.dll vc32loader.dll VCLdr64.dll SPVCLdr64.dll SPVC64Loader.dll spvc64loader.dll  ) do tasklist /FI "MODULES eq %%a"


