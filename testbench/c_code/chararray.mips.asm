
testbench/c_code/chararray.mips.elf:     file format elf32-tradbigmips


Disassembly of section .text:

10000000 <entry-0x4>:
10000000:	3c1d2400 	lui	sp,0x2400

10000004 <entry>:
10000004:	27bdd8c0 	addiu	sp,sp,-10048
10000008:	afbf273c 	sw	ra,10044(sp)
1000000c:	afbe2738 	sw	s8,10040(sp)
10000010:	03a0f025 	move	s8,sp
10000014:	afc00018 	sw	zero,24(s8)
10000018:	1000000f 	b	10000058 <entry+0x54>
1000001c:	00000000 	nop
10000020:	8fc30018 	lw	v1,24(s8)
10000024:	240200ff 	li	v0,255
10000028:	0062001a 	div	zero,v1,v0
1000002c:	00001010 	mfhi	v0
10000030:	00021e00 	sll	v1,v0,0x18
10000034:	00031e03 	sra	v1,v1,0x18
10000038:	8fc20018 	lw	v0,24(s8)
1000003c:	27c40018 	addiu	a0,s8,24
10000040:	00821021 	addu	v0,a0,v0
10000044:	a043000c 	sb	v1,12(v0)
10000048:	8fc20018 	lw	v0,24(s8)
1000004c:	00000000 	nop
10000050:	24420001 	addiu	v0,v0,1
10000054:	afc20018 	sw	v0,24(s8)
10000058:	8fc20018 	lw	v0,24(s8)
1000005c:	00000000 	nop
10000060:	28422710 	slti	v0,v0,10000
10000064:	1440ffee 	bnez	v0,10000020 <entry+0x1c>
10000068:	00000000 	nop
1000006c:	24022710 	li	v0,10000
10000070:	afc2001c 	sw	v0,28(s8)
10000074:	27c20024 	addiu	v0,s8,36
10000078:	24060005 	li	a2,5
1000007c:	8fc5001c 	lw	a1,28(s8)
10000080:	00402025 	move	a0,v0
10000084:	0c00002b 	jal	100000ac <looparray>
10000088:	00000000 	nop
1000008c:	afc20020 	sw	v0,32(s8)
10000090:	8fc20020 	lw	v0,32(s8)
10000094:	03c0e825 	move	sp,s8
10000098:	8fbf273c 	lw	ra,10044(sp)
1000009c:	8fbe2738 	lw	s8,10040(sp)
100000a0:	27bd2740 	addiu	sp,sp,10048
100000a4:	03e00008 	jr	ra
100000a8:	00000000 	nop

100000ac <looparray>:
100000ac:	27bdffe8 	addiu	sp,sp,-24
100000b0:	afbe0014 	sw	s8,20(sp)
100000b4:	03a0f025 	move	s8,sp
100000b8:	afc40018 	sw	a0,24(s8)
100000bc:	afc5001c 	sw	a1,28(s8)
100000c0:	00c01025 	move	v0,a2
100000c4:	a3c20020 	sb	v0,32(s8)
100000c8:	afc00008 	sw	zero,8(s8)
100000cc:	10000011 	b	10000114 <looparray+0x68>
100000d0:	00000000 	nop
100000d4:	8fc20008 	lw	v0,8(s8)
100000d8:	8fc30018 	lw	v1,24(s8)
100000dc:	00000000 	nop
100000e0:	00621021 	addu	v0,v1,v0
100000e4:	80420000 	lb	v0,0(v0)
100000e8:	83c30020 	lb	v1,32(s8)
100000ec:	00000000 	nop
100000f0:	14620004 	bne	v1,v0,10000104 <looparray+0x58>
100000f4:	00000000 	nop
100000f8:	8fc20008 	lw	v0,8(s8)
100000fc:	1000000c 	b	10000130 <looparray+0x84>
10000100:	00000000 	nop
10000104:	8fc20008 	lw	v0,8(s8)
10000108:	00000000 	nop
1000010c:	24420001 	addiu	v0,v0,1
10000110:	afc20008 	sw	v0,8(s8)
10000114:	8fc30008 	lw	v1,8(s8)
10000118:	8fc2001c 	lw	v0,28(s8)
1000011c:	00000000 	nop
10000120:	0062102a 	slt	v0,v1,v0
10000124:	1440ffeb 	bnez	v0,100000d4 <looparray+0x28>
10000128:	00000000 	nop
1000012c:	2402ffff 	li	v0,-1
10000130:	03c0e825 	move	sp,s8
10000134:	8fbe0014 	lw	s8,20(sp)
10000138:	27bd0018 	addiu	sp,sp,24
1000013c:	03e00008 	jr	ra
10000140:	00000000 	nop
	...

Disassembly of section .reginfo:

10000150 <.reginfo>:
10000150:	e000007c 	swc0	c0_index,124(zero)
	...

Disassembly of section .MIPS.abiflags:

10000168 <.MIPS.abiflags>:
10000168:	00000100 	sll	zero,zero,0x4
1000016c:	01010001 	0x1010001
	...

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	10000004 	b	14 <entry-0xffffff0>
   4:	c0000000 	lwc0	c0_index,0(zero)
   8:	fffffffc 	0xfffffffc
	...
  14:	00002740 	sll	a0,zero,0x1d
  18:	0000001e 	0x1e
  1c:	0000001f 	0x1f
  20:	100000ac 	b	2d4 <entry-0xffffd30>
  24:	40000000 	mfc0	zero,c0_index
  28:	fffffffc 	0xfffffffc
	...
  34:	00000018 	mult	zero,zero
  38:	0000001e 	0x1e
  3c:	0000001f 	0x1f

Disassembly of section .comment:

00000000 <.comment>:
   0:	4743433a 	c1	0x143433a
   4:	20285562 	addi	t0,at,21858
   8:	756e7475 	jalx	5b9d1d4 <entry-0xa462e30>
   c:	20352e34 	addi	s5,at,11828
  10:	2e302d36 	sltiu	s0,s1,11574
  14:	7562756e 	jalx	589d5b8 <entry-0xa762a4c>
  18:	7475317e 	jalx	1d4c5f8 <entry-0xe2b3a0c>
  1c:	31362e30 	andi	s6,t1,0x2e30
  20:	342e3129 	ori	t6,at,0x3129
  24:	20352e34 	addi	s5,at,11828
  28:	2e302032 	sltiu	s0,s1,8242
  2c:	30313630 	andi	s1,at,0x3630
  30:	36303900 	ori	s0,s1,0x3900

Disassembly of section .gnu.attributes:

00000000 <.gnu.attributes>:
   0:	41000000 	bc0f	4 <entry-0x10000000>
   4:	0f676e75 	jal	d9db9d4 <entry-0x2624630>
   8:	00010000 	sll	zero,at,0x0
   c:	00070401 	0x70401
