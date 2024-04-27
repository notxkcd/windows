$Capslock::Esc
$Esc::Capslock


!q::ExitApp


#b:: ;hide/unhide taskbar (toogle)
if WinExist("ahk_class Shell_TrayWnd")
	{
	WinHide, ahk_class Shell_TrayWnd
	WinHide, ahk_class Shell_SecondaryTrayWnd
	}
Else
	{
	WinShow, ahk_class Shell_TrayWnd
	WinShow, ahk_class Shell_SecondaryTrayWnd
	}
Return

!t::
IF HideTray := !HideTray
{
	WinHide, ahk_class Shell_TrayWnd
	WinHide, ahk_class Shell_SecondaryTrayWnd
}
Else
{
	WinShow, ahk_class Shell_TrayWnd
	WinShow, ahk_class Shell_SecondaryTrayWnd
}
Return

#e:: ;open Home Dir
Run, Explorer  "C:\Users\Shahid\"

#del:: ; Empty Recycle Bin
FileRecycleEmpty, C:\
Return

#q::WinClose  A 	; Close Active Window

#v:: Run, neovide

#+F:: ; Win + F
Run, "C:\Users\shahid\scoop\shims\everything.exe" ; Change the path if needed
return

; Map Super+Shift+F to trigger full screen
#f::Send {F11}

#j::Send !{Tab}
#k::Send !+{Tab}

^!r:: ; Ctrl+Alt+R
Run, shell:RecycleBinFolder
Return

#+r::
Run, shell:RecycleBinFolder
Return
