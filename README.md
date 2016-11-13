Personal AutoHotKey scripts I use.

If not specified, scripts are written by me.
Most of them are trivial, though.

AutoHotKey scrips
-----------------

- DragKing: automatically copy selection.
- dvorak.ahk: change keyboard to dvorak. (I use registry entries for this on my machine. It can be used when using other people's machine.)
- windows-manager: some shortcuts inspired from wmii/awesome/xmonad. (I have no longer used this. I ues [PWT][] now.)
- switch-esc-caps: switch Esc and CapsLock 

[PWT]: https://github.com/Tzbob/python-windows-tiler/

Other stuff
-----------

- dvorak.reg and qwerty.reg: registry entries to switch between qwerty and dvorak.
- caps-as-esc.reg: use caps as addtional esc key.
- swap-cas-esc.reg: swap caps and esc.
- dvorak-esc-caps.reg: dvorak and swap caps and esc.
- clip.exe: Ships in Windows 2003 server, Windows Vista and Windows 7 but not in Windows XP. (But it works under Windows XP.)

Register key syntax
-------------------

Example: use Caps Lock key as an addtional Escape key.

```reg
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout]
"Scancode Map"=hex:00,00,00,00,00,00,00,00,02,00,00,00,01,00,3a,00,00,00,00,00
```

- `00,00,00,00,00,00,00,00`: header.
- `02`: data length (`n + 1` where `n` is numer of mapped keys).
- `00,00,00`: end of data length.
- `01,00`: Esc.
- `3a,00`: Caps.
- `00,00,00,00,00`: end.
