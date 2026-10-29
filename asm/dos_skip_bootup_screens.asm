.nds
.relativeinclude on
.erroronwarning on

; Mostly skips the bootup screens; the "Licensed by Nintendo"
; still appears for a few frames though.

.open "ftc/arm9.bin", 0x2000000

.org 0x0203E548
    b 0x0203E6C0 ; Skip to the last check of the opening logos

.org 0x0203E6C8
    nop ; Disable a timing check on the first logo

.org 0x0203E794
    nop ; Don't blank out the top screen when suspending

.org 0x0202951C
    nop ; same as above

.close