.set noreorder
.set noat
li 	 $22,0x10000000
li   $2, 128
LBU   $2,0($22)
jr   $0
