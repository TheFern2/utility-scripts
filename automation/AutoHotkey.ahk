; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one .ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

; Made by TheFern https://github.com/TheFern2

;-------------------------------------------------------------------------
#z::Run www.autohotkey.com

^!n::
IfWinExist Untitled - Notepad
	WinActivate
else
	Run Notepad
return
;-------------------------------------------------------------------------
;When Simatic Manager Window is Active
#ifWinActive, SIMATIC Manager
;Capslock::Ctrl
;Tab::Alt
;remap keypad buttons when numlock is off

;retrieve with keypad
NumpadEnd::
Send {f10}fv
return

;archive with keypad
NumpadDown::
Send {f10}fh
return

NumpadPgDn::
Send {f10}ob
return

NumpadIns::
Send {f10}ord
return

;upload to station
NumpadLeft::
Send {f10}ln
return


F3::Send, +{F3} ;instead of Shift + F3 for rearranging it uses F3 only
!a::Send,{f10}fh ;archive
!r::Send,{f10}fv ;retrieve
+r::Send,{f10}ord ;display reference
!c::Send,{f10}ob ;compare
#ifWinActive
;-------------------------------------------------------------------------
;When LAD/STL/FBD Window is Active
#ifWinActive, LAD/STL/FBD
;Capslock::Ctrl
;Tab::Alt
;remap keypad buttons when numlock is off

;go to local application forward
NumpadRight::
Send ^+f
return

;go to local application backward
NumpadLeft::
Send ^+b
return

;go to location
NumpadClear::
Send ^!q
return

;Monitor on/off
^m::
Send, ^{F7}
return

F3::Send, +{F3} ;instead of Shift + F3 for rearranging it uses F3 only

#ifWinActive
;-------------------------------------------------------------------------
#ifWinActive, Ref
;remap keypad buttons when numlock is off

;filter
NumpadIns::
Send {f10}vf
return

;Find
NumpadDel::
Send, ^f 

#ifWinActive

;------------------------------------------------------------------------
#ifWinActive, Java
;Capslock::Ctrl
#ifWinActive
;------------------------------------------------------------------------


;F12::
;WinGetTitle, title, A
;MsgBox, "%title%"
;return

-------------------------------------------------------------------------
