.set noreorder
.set noat
addi $1,$0,245
addi $3,$0,0x1FFF
sll  $3,$3,16
addi $3,$3,0xFFFF
lw   $2,0($3)
jr   $0