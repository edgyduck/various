#SingleInstance force
^r::Reload ; Reload this script : Ctrl+r

;*********************
;;; MEDIA KEYS
;*********************

; Media_Prev::Send {LWin down}{LShift down}{Left down}{LWin up}{LShift up}{Left up}	; Move active window to left screen
; Media_Next::Send {LWin down}{LShift down}{Right down}{LWin up}{LShift up}{Right up} ; Move active window to right screen
; Media_Stop::
;	Send, {Ctrl down}e{Ctrl up} 	; Ends Skype call
	; PostMessage, 0x112, 0xF060,,, A 												; Closes active window
	; return
; Media_Play_Pause::WinMaximize, A													; Maximize active window
;Browser_Home::
Sleep::Shutdown, 5
;---------------------------------------------------------------------------------------------------------------------

;*********************
;;; MOUSE KEYS
;*********************
XButton1::WinMinimize, A														  	; Minimize active window
XButton2::WinMaximize, A
WheelRight::Send {LWin down}{LShift down}{Right down}{LWin up}{LShift up}{Right up} ; Move active window to right screen
WheelLeft::Send {LWin down}{LShift down}{Left down}{LWin up}{LShift up}{Left up} 	; Move active window to right screen
MButton::
	if (WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe firefox.exe"))
		{
			Send {Control down}w{Control up}										; Chrome: close current tab
		}
	else
		{
			PostMessage, 0x112, 0xF060,,, A 									  	; Closes active window
		}
	return
~RButton & LButton::
	if (WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe firefox.exe"))
		{
			Send {LAlt down}{Left down}{LAlt up}{Left up}							; Chrome go back
		}
	return
~LButton & RButton::
	if (WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe firefox.exe"))
		{
			Send {LAlt down}{Right down}{LAlt up}{Right up}							; Chrome go back
		}
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

;*********************
;;; ALT BUTTON
;*********************

;*********************
;;; WINDOWS BUTTON
;*********************
<#n::Send %A_Computername% 															; Type computer name : Win+n
<#w::Run %SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe				; Run powershell : Win+w
;---------------------------------------------------------------------------------------------------------------------

;*********************
;;; NUMPAD
;*********************
;^Numpad1::Run https://thepark.teliacompany.net/sites/Balthazar%20project/SitePages/Home.aspx	; Take over docs

;*********************
;;; FUNCTION KEYS
;*********************
F4::Run microsoft-edge:https://sehan5303cxam03.tcad.telia.se/Director/LogOn.aspx	; Open Director website
F6::Run iexplore.exe http://intranetas												; Open SPP login
F7::Run https://sf.teliacompany.net/vpn/index.html									; Open internal SF
;F8::Run lync																		; Run Skype
;---------------------------------------------------------------------------------------------------------------------

;*********************
;;; TEXT
;*********************
::ta::thanks!
::np:: no problem
::cpm::compmgmt.msc
::btw::by the way, 
::pw::%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe
::reboot::shutdown /r /f /t 0
::rusr::r-adn\uor3470_admin
::mzk::ltcom\agnmzk
::uor::uor3470
;---------------------------------------------------------------------------------------------------------------------
