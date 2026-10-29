.nds
.relativeinclude on
.erroronwarning on

; placeholder description

; by EgalLau37

Encyclopedia_LocalID	equ	0xC


.open "ftc/arm9.bin", 0x2000000

;determines item equippability, sets item lists, equip screen
.org 0x203e600
.area 0x448,0x69
stmfd r13!,{r4-r11,r14}
sub r13,r13,0x1c
mov r10,r0
mov r9,r1
mov r7,r2
mov r8,r3
ldr r0,[r13,0x40]
;str r0,[r13,0x40]
mov r6,0x0
ldr r4,[r13,0x44]
cmp r4,0x3
bne _0203e69c
cmp r9,0x1
bne _0203e64c
cmp r7,0x3
moveq r0,Encyclopedia_LocalID	;0xc
streqh r0,[r10,0x0]
addeq r6,r6,0x1
beq _0203e658
_0203e64c:
mov r0,0x0
strh r0,[r10,0x0]
add r6,r6,0x1
_0203e658:
mov r1,r9,lsl 0x5
ldr r2,=0x20ca580	;data
mov r0,0x0
add r4,r1,r8,lsl 0x2
_0203e668:
ldr r1,[r2,0x0]
add r1,r1,r4
add r1,r0,r1
add r1,r1,0x1b000
ldrb r3,[r1,0xc9b]
add r0,r0,0x1
cmp r3,0x0
movne r1,r6,lsl 0x1
strneh r3,[r10,r1]
addne r6,r6,0x1
cmp r0,0x4
blt _0203e668
b _0203e854
_0203e69c:
mov r4,r6
cmp r0,0x0
ble _0203e854
ldrh r0,[r13,0x48]
and r11,r0,0x1
and r5,r0,0x2
str r6,[r13,0x10]
_0203e6b8:
mov r0,r7
mov r1,r4
bl 0x21e45a4
cmp r0,0x0
bne _0203e6dc
cmp r11,0x0
beq _0203e844
cmp r4,0x0
bne _0203e844
_0203e6dc:
mov r0,r7
mov r1,r4
bl 0x21e46c4
cmp r7,0x9
moveq r0,r6,lsl 0x1
streqh r4,[r10,r0]
addeq r6,r6,0x1
beq _0203e844
cmp r7,0x8
bne _0203e76c
ldr r0,[r13,0x10]
mov r1,r4
bl 0x221499c
cmp r0,0x0
beq _0203e844
cmp r5,0x0
bne _0203e75c
cmp r4,0x0
beq _0203e75c
cmp r9,0x0
bne _0203e740
ldrb r1,[r0,0x6]
tst r1,0x40
bne _0203e75c
_0203e740:
cmp r9,0x1
bne _0203e844
ldrb r1,[r0,0x6]
tst r1,0x80
beq _0203e844
_0203e75c:
mov r0,r6,lsl 0x1
strh r4,[r10,r0]
add r6,r6,0x1
b _0203e844
_0203e76c:
cmp r0,0x0
beq _0203e844
cmp r5,0x0
bne _0203e7a4
cmp r9,0x0
bne _0203e790
ldrb r1,[r0,0xa]
tst r1,0x1
bne _0203e7a4
_0203e790:
cmp r9,0x1
bne _0203e844
ldrb r1,[r0,0xa]
tst r1,0x2
beq _0203e844
_0203e7a4:
cmp r9,0x1
bne _0203e7d0
cmp r7,0x3
bne _0203e7d0
cmp r4,0x0
beq _0203e844
cmp r4,Encyclopedia_LocalID	;0xc
moveq r0,r6,lsl 0x1
streqh r4,[r10,r0]
addeq r6,r6,0x1
beq _0203e844
_0203e7d0:
ldr r1,[r13,0x44]
cmp r1,0x2
bne _0203e838
cmp r4,0x0
beq _0203e828
ldr r0,[r0,0x14]
tst r0,0x7F00
bne _0203e828
tst r0,0x8000000
beq _0203e844
_0203e828:
mov r0,r6,lsl 0x1
strh r4,[r10,r0]
add r6,r6,0x1
b _0203e844
_0203e838:
mov r0,r6,lsl 0x1
strh r4,[r10,r0]
add r6,r6,0x1
_0203e844:
ldr r0,[r13,0x40]
add r4,r4,0x1
cmp r4,r0
blt _0203e6b8
_0203e854:
ldr r0,[r13,0x40]
cmp r6,r0
bge _0203e87c
mvn r1,0x0
_0203e864:
mov r0,r6,lsl 0x1
strh r1,[r10,r0]
ldr r0,[r13,0x40]
add r6,r6,0x1
cmp r6,r0
blt _0203e864
_0203e87c:
ldr r0,[r13,0x44]
cmp r0,0x1
addne r13,r13,0x1c
ldmnefd r13!,{r4-r11,r15}
cmp r7,0x9
cmpne r7,0x8
addeq r13,r13,0x1c
ldmeqfd r13!,{r4-r11,r15}
mov r0,0x6c
mul r11,r9,r0
ldr r4,=0x20ca580	;data
ldr r0,[r13,0x40]
ldr r1,[r4,0x0]
sub r0,r0,0x1
add r1,r1,r11
cmp r0,0x1
ldr r0,=0x1bf0c
add r1,r1,r8,lsl 0x1
ldrsh r0,[r1,r0]
str r0,[r13,0x4]
mov r0,0x1
str r0,[r13,0x0]
ble _0203ea10
mov r0,0x50
mul r7,r9,r0
ldr r0,[r13,0x0]
str r0,[r13,0x14]
_0203e8f0:
ldr r1,[r13,0x40]
ldr r0,[r13,0x0]
ldr r6,[r13,0x14]
sub r0,r1,r0
str r0,[r13,0xc]
cmp r0,0x1
ble _0203e9f0
_0203e90c:
add r5,r6,0x1
mov r0,r5,lsl 0x1
ldrsh r1,[r10,r0]
cmp r1,-0x1
beq _0203e9f0
mov r0,r6,lsl 0x1
ldrsh r2,[r10,r0]
ldr r1,[r4,0x0]
add r0,r11,r8,lsl 0x1
add r1,r1,r0
ldr r0,=0x1bf0c
strh r2,[r1,r0]
mov r0,r9
bl 0x22086d0
cmp r8,0x0
ldrne r0,[r4,0x0]
ldrne r1,=0x1bd52
addne r2,r0,r7
ldrnesh r1,[r2,r1]
strne r1,[r13,0x8]
bne _0203e978
ldr r0,[r4,0x0]
ldr r1,=0x1bd50
add r2,r0,r7
ldrsh r1,[r2,r1]
str r1,[r13,0x8]
_0203e978:
mov r1,r5,lsl 0x1
ldrsh r2,[r10,r1]
add r1,r11,r8,lsl 0x1
add r1,r0,r1
ldr r0,=0x1bf0c
strh r2,[r1,r0]
mov r0,r9
bl 0x22086d0
cmp r8,0x0
ldreq r0,[r4,0x0]
addeq r1,r0,r7
ldreq r0,=0x1bd50
ldreqsh r1,[r1,r0]
ldrne r0,[r4,0x0]
addne r1,r0,r7
ldrne r0,=0x1bd52
ldrnesh r1,[r1,r0]
ldr r0,[r13,0x8]
cmp r0,r1
bge _0203e9e0
mov r1,r5,lsl 0x1
mov r3,r6,lsl 0x1
ldrsh r2,[r10,r3]
ldrsh r0,[r10,r1]
strh r0,[r10,r3]
strh r2,[r10,r1]
_0203e9e0:
ldr r0,[r13,0xc]
add r6,r6,0x1
cmp r6,r0
blt _0203e90c
_0203e9f0:
ldr r0,[r13,0x0]
add r0,r0,0x1
str r0,[r13,0x0]
ldr r0,[r13,0x40]
sub r1,r0,0x1
ldr r0,[r13,0x0]
cmp r0,r1
blt _0203e8f0
_0203ea10:
ldr r0,=0x20ca580
ldr r1,=0x1bf0c
ldr r0,[r0,0x0]
add r0,r0,r11
add r2,r0,r8,lsl 0x1
ldr r0,[r13,0x4]
strh r0,[r2,r1]
bl 0x2208680
add r13,r13,0x1c
ldmfd r13!,{r4-r11,r15}
.pool
.endarea
;arm_func_end 0x203e600


.close



.open "ftc/overlay9_0", 0x21CDF60
.org 0x221E588+0x1B
.db 0xFF


.close


