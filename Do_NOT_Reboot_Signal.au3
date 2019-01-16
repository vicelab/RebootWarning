; This script simply runs in the background doing nothing. It is just there to signal that you are working on something critical
; Written by A. Anderson using AutoIt


#include <MsgBoxConstants.au3>
#include <StringConstants.au3>
; Press Pause/Break to terminate script

Global $g_bPaused = False
Global $makeanException = False
$dll = DllOpen("user32.dll")
AutoItSetOption( "WinTitleMatchMode", 2)

HotKeySet("{PAUSE}", "Terminate")


MsgBox($MB_SYSTEMMODAL, "DoNotReboot", "This program signals that there is an important process running on your profile" & @CRLF & "by making the distinct X icon visible in the task manager" & @CRLF & @CRLF & @CRLF & "Terminate by pressing PAUSE or closing it in the system tray" & @CRLF & @CRLF & "Pausing the script in the systray does nothing, the program is still visible in the task manager")

While 1
   Sleep(10000)
WEnd

Func Terminate()
  Exit
EndFunc   ;==>Terminate

