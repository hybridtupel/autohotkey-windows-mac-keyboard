;-----------------------------------------
; Mac keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;
; Debug action snippet: MsgBox You pressed Control-A while Notepad is active.

#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2
SendMode Input


; --------------------------------------------------------------
; media/function keys all mapped to the right option key
; --------------------------------------------------------------

; swap left command/windows key with left alt
;LWin::LAlt
;LAlt::LWin ; add a semicolon in front of this line if you want to disable the windows key

; Eject Key
F20::SendInput {Insert}

; F13-15, standard windows mapping
F13::SendInput {PrintScreen}
F14::SendInput {ScrollLock}
F15::SendInput {Pause}

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

; Make Ctrl + S work with cmd (windows) key
#s::^s

; Selecting
#a::^a

; Copying
#c::^c

; Pasting
#v::^v

; Cutting
#x::^x

; Opening
#o::^o

; Finding
#f::Send ^f

; Undo
#z::^z

; Redo
#y::^y

; New tab
#t::^t

; close tab
#w::^w

; Close windows (cmd + q to Alt + F4)
#q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
Lwin & Tab::AltTab

; minimize windows
#m::WinMinimize,a


; --------------------------------------------------------------
; OS X keyboard mappings for special chars
; --------------------------------------------------------------

; Map Alt + L to @
!l::SendInput {@}

; Map Shift + Alt + 7 to \
+!7::SendInput {\}

; Map Alt + N to ©
!g::SendInput {©}

; Map AltGr + o to ø
<^>!o::SendInput {ø}

; Map AltGr + 5 to [
<^>!5::SendInput {[}

; Map AltGr + 6 to ]
<^>!6::SendInput {]}

; Map Alt + E to €
!e::SendInput {€}

; Map AltGr + 8 to {
<^>!8::SendInput {{}

; Map AltGr + 9 to }
<^>!9::SendInput {}}

; Map Alt + - to ±
!+::SendInput {±}

; Map Alt + R to ®
!r::SendInput {®}

; Map Alt + 7 to |
!7::SendInput {|}

; Map AltGr + ß to ¿
<^>!ß::SendInput {¿}

; Map AltGr + N to ~
<^>!n::SendInput {~}


; --------------------------------------------------------------
; Custom mappings for special chars
; --------------------------------------------------------------

; Map [ and ] to Alt+ö and Alt+ä
!ö::SendInput {[} 
!ä::SendInput {]} 

; Map { and } to Ctrl + ö and Ctrl + ä
^ö::SendInput {{} 
^ä::SendInput {}} 


; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

; Show Web Developer Tools with cmd + alt + i
#!i::Send {F12}

; Show source code with cmd + alt + u
#!u::Send ^u

#IfWinActive

