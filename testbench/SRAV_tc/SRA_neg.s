.set noreorder
.set noat
addi $2,$0,0xF812
sll  $2,$2,16
addi $2,$2,0x3456
addi $3,$0,0x0000
sll  $3,$3,16
addi $3,$3,0x0039
srav  $2,$2,$3
jr   $0
