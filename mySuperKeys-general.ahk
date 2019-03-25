#SingleInstance force
^r::Reload ; Reload this script : Ctrl+r

;*********************
;;; MEDIA KEYS
;*********************
Media_Prev::Send {LWin down}{LShift down}{Left down}{LWin up}{LShift up}{Left up}	; Move active window to left screen
Media_Next::Send {LWin down}{LShift down}{Right down}{LWin up}{LShift up}{Right up} ; Move active window to right screen
Media_Stop::
	;Send, {Ctrl down}e{Ctrl up} 	; Ends Skype call
	PostMessage, 0x112, 0xF060,,, A 												; Closes active window
	return
Media_Play_Pause::WinMaximize, A													; Maximize active window
;Browser_Home::
Sleep::Shutdown, 5
;---------------------------------------------------------------------------------------------------------------------

;*********************
;;; MOUSE KEYS
;*********************
XButton1::WinMinimize, A														  ; Minimize active window
XButton2::WinMaximize, A
WheelRight::Send {LWin down}{LShift down}{Right down}{LWin up}{LShift up}{Right up} ; Move active window to right screen
WheelLeft::Send {LWin down}{LShift down}{Left down}{LWin up}{LShift up}{Left up} ; Move active window to right screen
MButton::PostMessage, 0x112, 0xF060,,, A 									  ; Closes active window
	return
;---------------------------------------------------------------------------------------------------------------------

;*********************
;;; OTHER KEYS
;*********************
Pause::DllCall("LockWorkStation")													; Lock screen
PrintScreen::
if WinActive("ahk_exe WINWORD.EXE")
	{ 
		Send !n
		Send sc
		Send c
	}
else
	{
		Run snippingtool.exe
		WinWaitActive, Snipping Tool, , 2
		Send ^n
	}
return
ScrollLock::Send {LShift down}{LAlt down}{LShift up}{LAlt up}
`::@
;^`::!
;*********************
;;; WINDOWS BUTTON
;*********************
<#n::Send %A_Computername% 															; Type computer name : Win+n
<#w::Run %SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe				; Run powershell : Win+w
;---------------------------------------------------------------------------------------------------------------------

;*********************
;;; NUMPAD
;*********************
^Numpad7::Run http://google.com

;*********************
;;; FUNCTION KEYS
;*********************
F1::Run firefox																		; Run Firefox
F3::Run iexplore																	; Run Internet Explorer
F4::Run lync																		; Run Skype
;---------------------------------------------------------------------------------------------------------------------

;*********************
;;; TEXT
;*********************
::ta::thanks!
::np:: no problem
::hay::how are you?
::tbh::to be honest
::cpm::compmgmt.msc
::btw::by the way, 
::pw::%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe
::sd::shutdown /r /f /t 0
;---------------------------------------------------------------------------------------------------------------------
