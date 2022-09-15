;     SetTitleMatch mode 2 enables AutoHotkey to only partially match program names, must be in the beginning of the script
SetTitleMatchMode, 2

;     Remapping the common shortcuts:
^q::^x ;cut
^j::^c ;copy
^k::^v ;paste
^;::^z ;undo
^o::^s ;save
^l::^p ;print


;     Ctrl-E is now Ctrl-J, the shortcut for the Downloads tab in Google Chrome
#IfWinActive ahk_class Chrome_WidgetWin_1
^e::^j
#IfWinActive

;     Modifying and reloading script, Press Shift + F10 to edit AutoHotkey.ahk, press F10 to reload, Shift + F9 to toggle suspension of hotkeys
+F10::Edit
;Reload
F10::Reload
+F9::Suspend

;     QWERTY-Dvorak Toggle using ScrollLock key
state := 1 ; 

ScrollLock::
If (state)
   state := 0
else
   state := 1
return

#If state=1
#HotkeyInterval 1000000000
#MaxHotkeysPerInterval 9999999999999
[::-
]::=
'::q
,::w
.::e
p::r
y::t
f::y
g::u
c::i
r::o
l::p
/::[
=::]
o::s
e::d
u::f
i::g
d::h
h::j
t::k
n::l
s::;
-::'
`;::z
q::x
j::c
k::v
x::b
b::n
w::,
v::.
z::/
