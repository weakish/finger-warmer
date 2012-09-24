; by Jakukyo Friel <weakish@gmail.com> under GPL-2
; Keys are borrowed from wmii/awesome/xmond.


; close window
#+c::Send !{F4}

; switch between windows
LWin & Tab::AltTab


; fullscreen

; `y` is `f`(Fullscreen) in dvorak.
LWin & y::

WinGet Style, Style, A
if(Style & 0xC40000) {
  WinSet, Style, -0xC40000, A
  WinMaximize, A 
  ; Will, WinMaximize is not true fullscreen.
  ; For true fullscreen, we need to use something like `WinMove, A, , 0, 0, 1366, 768` (suppose you've a 1366x768 screen).
  ; The problem with `WinMove` is that some application windows just refuse to resize: they only move.
  ; Thus `WinMaximize` is used here.
  ; I suggest you set your taskbar to auto hide.
} else {
  WinSet, Style, +0xC40000, A
  WinRestore, A
}
return
