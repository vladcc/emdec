
fib.elf.x64.recomp.recomp:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 ff 00 00 	mov    rax,QWORD PTR [rip+0xffd9]        # 10fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 6a ff 00 00    	push   QWORD PTR [rip+0xff6a]        # 10f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 6b ff 00 00 	bnd jmp QWORD PTR [rip+0xff6b]        # 10f98 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop

Disassembly of section .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 4d ff 00 00 	bnd jmp QWORD PTR [rip+0xff4d]        # 10ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

00000000000010b0 <free@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 e5 fe 00 00 	bnd jmp QWORD PTR [rip+0xfee5]        # 10fa0 <free@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010c0 <printf@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 dd fe 00 00 	bnd jmp QWORD PTR [rip+0xfedd]        # 10fa8 <printf@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010d0 <calloc@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 d5 fe 00 00 	bnd jmp QWORD PTR [rip+0xfed5]        # 10fb0 <calloc@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010e0 <fprintf@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 cd fe 00 00 	bnd jmp QWORD PTR [rip+0xfecd]        # 10fb8 <fprintf@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010f0 <__isoc99_sscanf@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 c5 fe 00 00 	bnd jmp QWORD PTR [rip+0xfec5]        # 10fc0 <__isoc99_sscanf@GLIBC_2.7>
    10fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001100 <exit@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 bd fe 00 00 	bnd jmp QWORD PTR [rip+0xfebd]        # 10fc8 <exit@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001110 <fwrite@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 b5 fe 00 00 	bnd jmp QWORD PTR [rip+0xfeb5]        # 10fd0 <fwrite@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001120 <_start>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	31 ed                	xor    ebp,ebp
    1126:	49 89 d1             	mov    r9,rdx
    1129:	5e                   	pop    rsi
    112a:	48 89 e2             	mov    rdx,rsp
    112d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1131:	50                   	push   rax
    1132:	54                   	push   rsp
    1133:	45 31 c0             	xor    r8d,r8d
    1136:	31 c9                	xor    ecx,ecx
    1138:	48 8d 3d b3 d1 00 00 	lea    rdi,[rip+0xd1b3]        # e2f2 <main>
    113f:	ff 15 93 fe 00 00    	call   QWORD PTR [rip+0xfe93]        # 10fd8 <__libc_start_main@GLIBC_2.34>
    1145:	f4                   	hlt    
    1146:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    114d:	00 00 00 

0000000000001150 <deregister_tm_clones>:
    1150:	48 8d 3d b9 02 01 00 	lea    rdi,[rip+0x102b9]        # 11410 <__TMC_END__>
    1157:	48 8d 05 b2 02 01 00 	lea    rax,[rip+0x102b2]        # 11410 <__TMC_END__>
    115e:	48 39 f8             	cmp    rax,rdi
    1161:	74 15                	je     1178 <deregister_tm_clones+0x28>
    1163:	48 8b 05 76 fe 00 00 	mov    rax,QWORD PTR [rip+0xfe76]        # 10fe0 <_ITM_deregisterTMCloneTable@Base>
    116a:	48 85 c0             	test   rax,rax
    116d:	74 09                	je     1178 <deregister_tm_clones+0x28>
    116f:	ff e0                	jmp    rax
    1171:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1178:	c3                   	ret    
    1179:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001180 <register_tm_clones>:
    1180:	48 8d 3d 89 02 01 00 	lea    rdi,[rip+0x10289]        # 11410 <__TMC_END__>
    1187:	48 8d 35 82 02 01 00 	lea    rsi,[rip+0x10282]        # 11410 <__TMC_END__>
    118e:	48 29 fe             	sub    rsi,rdi
    1191:	48 89 f0             	mov    rax,rsi
    1194:	48 c1 ee 3f          	shr    rsi,0x3f
    1198:	48 c1 f8 03          	sar    rax,0x3
    119c:	48 01 c6             	add    rsi,rax
    119f:	48 d1 fe             	sar    rsi,1
    11a2:	74 14                	je     11b8 <register_tm_clones+0x38>
    11a4:	48 8b 05 45 fe 00 00 	mov    rax,QWORD PTR [rip+0xfe45]        # 10ff0 <_ITM_registerTMCloneTable@Base>
    11ab:	48 85 c0             	test   rax,rax
    11ae:	74 08                	je     11b8 <register_tm_clones+0x38>
    11b0:	ff e0                	jmp    rax
    11b2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    11b8:	c3                   	ret    
    11b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011c0 <__do_global_dtors_aux>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	80 3d 5d 02 01 00 00 	cmp    BYTE PTR [rip+0x1025d],0x0        # 11428 <completed.0>
    11cb:	75 2b                	jne    11f8 <__do_global_dtors_aux+0x38>
    11cd:	55                   	push   rbp
    11ce:	48 83 3d 22 fe 00 00 	cmp    QWORD PTR [rip+0xfe22],0x0        # 10ff8 <__cxa_finalize@GLIBC_2.2.5>
    11d5:	00 
    11d6:	48 89 e5             	mov    rbp,rsp
    11d9:	74 0c                	je     11e7 <__do_global_dtors_aux+0x27>
    11db:	48 8b 3d 26 fe 00 00 	mov    rdi,QWORD PTR [rip+0xfe26]        # 11008 <__dso_handle>
    11e2:	e8 b9 fe ff ff       	call   10a0 <__cxa_finalize@plt>
    11e7:	e8 64 ff ff ff       	call   1150 <deregister_tm_clones>
    11ec:	c6 05 35 02 01 00 01 	mov    BYTE PTR [rip+0x10235],0x1        # 11428 <completed.0>
    11f3:	5d                   	pop    rbp
    11f4:	c3                   	ret    
    11f5:	0f 1f 00             	nop    DWORD PTR [rax]
    11f8:	c3                   	ret    
    11f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001200 <frame_dummy>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	e9 77 ff ff ff       	jmp    1180 <register_tm_clones>

0000000000001209 <init_regs>:
    1209:	f3 0f 1e fa          	endbr64 
    120d:	55                   	push   rbp
    120e:	48 89 e5             	mov    rbp,rsp
    1211:	48 8d 05 70 04 01 00 	lea    rax,[rip+0x10470]        # 11688 <regs.4+0x8>
    1218:	48 89 05 21 02 01 00 	mov    QWORD PTR [rip+0x10221],rax        # 11440 <rax>
    121f:	48 8d 05 62 04 01 00 	lea    rax,[rip+0x10462]        # 11688 <regs.4+0x8>
    1226:	48 89 05 1b 02 01 00 	mov    QWORD PTR [rip+0x1021b],rax        # 11448 <eax>
    122d:	48 8d 05 54 04 01 00 	lea    rax,[rip+0x10454]        # 11688 <regs.4+0x8>
    1234:	48 89 05 15 02 01 00 	mov    QWORD PTR [rip+0x10215],rax        # 11450 <ax>
    123b:	48 8d 05 47 04 01 00 	lea    rax,[rip+0x10447]        # 11689 <regs.4+0x9>
    1242:	48 89 05 0f 02 01 00 	mov    QWORD PTR [rip+0x1020f],rax        # 11458 <ah>
    1249:	48 8d 05 38 04 01 00 	lea    rax,[rip+0x10438]        # 11688 <regs.4+0x8>
    1250:	48 89 05 09 02 01 00 	mov    QWORD PTR [rip+0x10209],rax        # 11460 <al>
    1257:	48 8d 05 32 04 01 00 	lea    rax,[rip+0x10432]        # 11690 <regs.4+0x10>
    125e:	48 89 05 03 02 01 00 	mov    QWORD PTR [rip+0x10203],rax        # 11468 <rbx>
    1265:	48 8d 05 24 04 01 00 	lea    rax,[rip+0x10424]        # 11690 <regs.4+0x10>
    126c:	48 89 05 fd 01 01 00 	mov    QWORD PTR [rip+0x101fd],rax        # 11470 <ebx>
    1273:	48 8d 05 16 04 01 00 	lea    rax,[rip+0x10416]        # 11690 <regs.4+0x10>
    127a:	48 89 05 f7 01 01 00 	mov    QWORD PTR [rip+0x101f7],rax        # 11478 <bx>
    1281:	48 8d 05 09 04 01 00 	lea    rax,[rip+0x10409]        # 11691 <regs.4+0x11>
    1288:	48 89 05 f1 01 01 00 	mov    QWORD PTR [rip+0x101f1],rax        # 11480 <bh>
    128f:	48 8d 05 fa 03 01 00 	lea    rax,[rip+0x103fa]        # 11690 <regs.4+0x10>
    1296:	48 89 05 eb 01 01 00 	mov    QWORD PTR [rip+0x101eb],rax        # 11488 <bl>
    129d:	48 8d 05 f4 03 01 00 	lea    rax,[rip+0x103f4]        # 11698 <regs.4+0x18>
    12a4:	48 89 05 e5 01 01 00 	mov    QWORD PTR [rip+0x101e5],rax        # 11490 <rcx>
    12ab:	48 8d 05 e6 03 01 00 	lea    rax,[rip+0x103e6]        # 11698 <regs.4+0x18>
    12b2:	48 89 05 df 01 01 00 	mov    QWORD PTR [rip+0x101df],rax        # 11498 <ecx>
    12b9:	48 8d 05 d8 03 01 00 	lea    rax,[rip+0x103d8]        # 11698 <regs.4+0x18>
    12c0:	48 89 05 d9 01 01 00 	mov    QWORD PTR [rip+0x101d9],rax        # 114a0 <cx>
    12c7:	48 8d 05 cb 03 01 00 	lea    rax,[rip+0x103cb]        # 11699 <regs.4+0x19>
    12ce:	48 89 05 d3 01 01 00 	mov    QWORD PTR [rip+0x101d3],rax        # 114a8 <ch>
    12d5:	48 8d 05 bc 03 01 00 	lea    rax,[rip+0x103bc]        # 11698 <regs.4+0x18>
    12dc:	48 89 05 cd 01 01 00 	mov    QWORD PTR [rip+0x101cd],rax        # 114b0 <cl>
    12e3:	48 8d 05 b6 03 01 00 	lea    rax,[rip+0x103b6]        # 116a0 <regs.4+0x20>
    12ea:	48 89 05 c7 01 01 00 	mov    QWORD PTR [rip+0x101c7],rax        # 114b8 <rdx>
    12f1:	48 8d 05 a8 03 01 00 	lea    rax,[rip+0x103a8]        # 116a0 <regs.4+0x20>
    12f8:	48 89 05 c1 01 01 00 	mov    QWORD PTR [rip+0x101c1],rax        # 114c0 <edx>
    12ff:	48 8d 05 9a 03 01 00 	lea    rax,[rip+0x1039a]        # 116a0 <regs.4+0x20>
    1306:	48 89 05 bb 01 01 00 	mov    QWORD PTR [rip+0x101bb],rax        # 114c8 <dx>
    130d:	48 8d 05 8d 03 01 00 	lea    rax,[rip+0x1038d]        # 116a1 <regs.4+0x21>
    1314:	48 89 05 b5 01 01 00 	mov    QWORD PTR [rip+0x101b5],rax        # 114d0 <dh>
    131b:	48 8d 05 7e 03 01 00 	lea    rax,[rip+0x1037e]        # 116a0 <regs.4+0x20>
    1322:	48 89 05 af 01 01 00 	mov    QWORD PTR [rip+0x101af],rax        # 114d8 <dl>
    1329:	48 8d 05 78 03 01 00 	lea    rax,[rip+0x10378]        # 116a8 <regs.4+0x28>
    1330:	48 89 05 a9 01 01 00 	mov    QWORD PTR [rip+0x101a9],rax        # 114e0 <rsi>
    1337:	48 8d 05 6a 03 01 00 	lea    rax,[rip+0x1036a]        # 116a8 <regs.4+0x28>
    133e:	48 89 05 a3 01 01 00 	mov    QWORD PTR [rip+0x101a3],rax        # 114e8 <esi>
    1345:	48 8d 05 5c 03 01 00 	lea    rax,[rip+0x1035c]        # 116a8 <regs.4+0x28>
    134c:	48 89 05 9d 01 01 00 	mov    QWORD PTR [rip+0x1019d],rax        # 114f0 <si>
    1353:	48 8d 05 4e 03 01 00 	lea    rax,[rip+0x1034e]        # 116a8 <regs.4+0x28>
    135a:	48 89 05 97 01 01 00 	mov    QWORD PTR [rip+0x10197],rax        # 114f8 <sil>
    1361:	48 8d 05 48 03 01 00 	lea    rax,[rip+0x10348]        # 116b0 <regs.4+0x30>
    1368:	48 89 05 91 01 01 00 	mov    QWORD PTR [rip+0x10191],rax        # 11500 <rdi>
    136f:	48 8d 05 3a 03 01 00 	lea    rax,[rip+0x1033a]        # 116b0 <regs.4+0x30>
    1376:	48 89 05 8b 01 01 00 	mov    QWORD PTR [rip+0x1018b],rax        # 11508 <edi>
    137d:	48 8d 05 2c 03 01 00 	lea    rax,[rip+0x1032c]        # 116b0 <regs.4+0x30>
    1384:	48 89 05 85 01 01 00 	mov    QWORD PTR [rip+0x10185],rax        # 11510 <di>
    138b:	48 8d 05 1e 03 01 00 	lea    rax,[rip+0x1031e]        # 116b0 <regs.4+0x30>
    1392:	48 89 05 7f 01 01 00 	mov    QWORD PTR [rip+0x1017f],rax        # 11518 <dil>
    1399:	48 8d 05 18 03 01 00 	lea    rax,[rip+0x10318]        # 116b8 <regs.4+0x38>
    13a0:	48 89 05 79 01 01 00 	mov    QWORD PTR [rip+0x10179],rax        # 11520 <rbp>
    13a7:	48 8d 05 0a 03 01 00 	lea    rax,[rip+0x1030a]        # 116b8 <regs.4+0x38>
    13ae:	48 89 05 73 01 01 00 	mov    QWORD PTR [rip+0x10173],rax        # 11528 <ebp>
    13b5:	48 8d 05 fc 02 01 00 	lea    rax,[rip+0x102fc]        # 116b8 <regs.4+0x38>
    13bc:	48 89 05 6d 01 01 00 	mov    QWORD PTR [rip+0x1016d],rax        # 11530 <bp>
    13c3:	48 8d 05 ee 02 01 00 	lea    rax,[rip+0x102ee]        # 116b8 <regs.4+0x38>
    13ca:	48 89 05 67 01 01 00 	mov    QWORD PTR [rip+0x10167],rax        # 11538 <bpl>
    13d1:	48 8d 05 e8 02 01 00 	lea    rax,[rip+0x102e8]        # 116c0 <regs.4+0x40>
    13d8:	48 89 05 61 01 01 00 	mov    QWORD PTR [rip+0x10161],rax        # 11540 <rsp>
    13df:	48 8d 05 da 02 01 00 	lea    rax,[rip+0x102da]        # 116c0 <regs.4+0x40>
    13e6:	48 89 05 5b 01 01 00 	mov    QWORD PTR [rip+0x1015b],rax        # 11548 <esp>
    13ed:	48 8d 05 cc 02 01 00 	lea    rax,[rip+0x102cc]        # 116c0 <regs.4+0x40>
    13f4:	48 89 05 55 01 01 00 	mov    QWORD PTR [rip+0x10155],rax        # 11550 <sp>
    13fb:	48 8d 05 be 02 01 00 	lea    rax,[rip+0x102be]        # 116c0 <regs.4+0x40>
    1402:	48 89 05 4f 01 01 00 	mov    QWORD PTR [rip+0x1014f],rax        # 11558 <spl>
    1409:	48 8d 05 b8 02 01 00 	lea    rax,[rip+0x102b8]        # 116c8 <regs.4+0x48>
    1410:	48 89 05 49 01 01 00 	mov    QWORD PTR [rip+0x10149],rax        # 11560 <r8>
    1417:	48 8d 05 aa 02 01 00 	lea    rax,[rip+0x102aa]        # 116c8 <regs.4+0x48>
    141e:	48 89 05 43 01 01 00 	mov    QWORD PTR [rip+0x10143],rax        # 11568 <r8d>
    1425:	48 8d 05 9c 02 01 00 	lea    rax,[rip+0x1029c]        # 116c8 <regs.4+0x48>
    142c:	48 89 05 3d 01 01 00 	mov    QWORD PTR [rip+0x1013d],rax        # 11570 <r8w>
    1433:	48 8d 05 8e 02 01 00 	lea    rax,[rip+0x1028e]        # 116c8 <regs.4+0x48>
    143a:	48 89 05 37 01 01 00 	mov    QWORD PTR [rip+0x10137],rax        # 11578 <r8b>
    1441:	48 8d 05 88 02 01 00 	lea    rax,[rip+0x10288]        # 116d0 <regs.4+0x50>
    1448:	48 89 05 31 01 01 00 	mov    QWORD PTR [rip+0x10131],rax        # 11580 <r9>
    144f:	48 8d 05 7a 02 01 00 	lea    rax,[rip+0x1027a]        # 116d0 <regs.4+0x50>
    1456:	48 89 05 2b 01 01 00 	mov    QWORD PTR [rip+0x1012b],rax        # 11588 <r9d>
    145d:	48 8d 05 6c 02 01 00 	lea    rax,[rip+0x1026c]        # 116d0 <regs.4+0x50>
    1464:	48 89 05 25 01 01 00 	mov    QWORD PTR [rip+0x10125],rax        # 11590 <r9w>
    146b:	48 8d 05 5e 02 01 00 	lea    rax,[rip+0x1025e]        # 116d0 <regs.4+0x50>
    1472:	48 89 05 1f 01 01 00 	mov    QWORD PTR [rip+0x1011f],rax        # 11598 <r9b>
    1479:	48 8d 05 58 02 01 00 	lea    rax,[rip+0x10258]        # 116d8 <regs.4+0x58>
    1480:	48 89 05 19 01 01 00 	mov    QWORD PTR [rip+0x10119],rax        # 115a0 <r10>
    1487:	48 8d 05 4a 02 01 00 	lea    rax,[rip+0x1024a]        # 116d8 <regs.4+0x58>
    148e:	48 89 05 13 01 01 00 	mov    QWORD PTR [rip+0x10113],rax        # 115a8 <r10d>
    1495:	48 8d 05 3c 02 01 00 	lea    rax,[rip+0x1023c]        # 116d8 <regs.4+0x58>
    149c:	48 89 05 0d 01 01 00 	mov    QWORD PTR [rip+0x1010d],rax        # 115b0 <r10w>
    14a3:	48 8d 05 2e 02 01 00 	lea    rax,[rip+0x1022e]        # 116d8 <regs.4+0x58>
    14aa:	48 89 05 07 01 01 00 	mov    QWORD PTR [rip+0x10107],rax        # 115b8 <r10b>
    14b1:	48 8d 05 28 02 01 00 	lea    rax,[rip+0x10228]        # 116e0 <regs.4+0x60>
    14b8:	48 89 05 01 01 01 00 	mov    QWORD PTR [rip+0x10101],rax        # 115c0 <r11>
    14bf:	48 8d 05 1a 02 01 00 	lea    rax,[rip+0x1021a]        # 116e0 <regs.4+0x60>
    14c6:	48 89 05 fb 00 01 00 	mov    QWORD PTR [rip+0x100fb],rax        # 115c8 <r11d>
    14cd:	48 8d 05 0c 02 01 00 	lea    rax,[rip+0x1020c]        # 116e0 <regs.4+0x60>
    14d4:	48 89 05 f5 00 01 00 	mov    QWORD PTR [rip+0x100f5],rax        # 115d0 <r11w>
    14db:	48 8d 05 fe 01 01 00 	lea    rax,[rip+0x101fe]        # 116e0 <regs.4+0x60>
    14e2:	48 89 05 ef 00 01 00 	mov    QWORD PTR [rip+0x100ef],rax        # 115d8 <r11b>
    14e9:	48 8d 05 f8 01 01 00 	lea    rax,[rip+0x101f8]        # 116e8 <regs.4+0x68>
    14f0:	48 89 05 e9 00 01 00 	mov    QWORD PTR [rip+0x100e9],rax        # 115e0 <r12>
    14f7:	48 8d 05 ea 01 01 00 	lea    rax,[rip+0x101ea]        # 116e8 <regs.4+0x68>
    14fe:	48 89 05 e3 00 01 00 	mov    QWORD PTR [rip+0x100e3],rax        # 115e8 <r12d>
    1505:	48 8d 05 dc 01 01 00 	lea    rax,[rip+0x101dc]        # 116e8 <regs.4+0x68>
    150c:	48 89 05 dd 00 01 00 	mov    QWORD PTR [rip+0x100dd],rax        # 115f0 <r12w>
    1513:	48 8d 05 ce 01 01 00 	lea    rax,[rip+0x101ce]        # 116e8 <regs.4+0x68>
    151a:	48 89 05 d7 00 01 00 	mov    QWORD PTR [rip+0x100d7],rax        # 115f8 <r12b>
    1521:	48 8d 05 c8 01 01 00 	lea    rax,[rip+0x101c8]        # 116f0 <regs.4+0x70>
    1528:	48 89 05 d1 00 01 00 	mov    QWORD PTR [rip+0x100d1],rax        # 11600 <r13>
    152f:	48 8d 05 ba 01 01 00 	lea    rax,[rip+0x101ba]        # 116f0 <regs.4+0x70>
    1536:	48 89 05 cb 00 01 00 	mov    QWORD PTR [rip+0x100cb],rax        # 11608 <r13d>
    153d:	48 8d 05 ac 01 01 00 	lea    rax,[rip+0x101ac]        # 116f0 <regs.4+0x70>
    1544:	48 89 05 c5 00 01 00 	mov    QWORD PTR [rip+0x100c5],rax        # 11610 <r13w>
    154b:	48 8d 05 9e 01 01 00 	lea    rax,[rip+0x1019e]        # 116f0 <regs.4+0x70>
    1552:	48 89 05 bf 00 01 00 	mov    QWORD PTR [rip+0x100bf],rax        # 11618 <r13b>
    1559:	48 8d 05 98 01 01 00 	lea    rax,[rip+0x10198]        # 116f8 <regs.4+0x78>
    1560:	48 89 05 b9 00 01 00 	mov    QWORD PTR [rip+0x100b9],rax        # 11620 <r14>
    1567:	48 8d 05 8a 01 01 00 	lea    rax,[rip+0x1018a]        # 116f8 <regs.4+0x78>
    156e:	48 89 05 b3 00 01 00 	mov    QWORD PTR [rip+0x100b3],rax        # 11628 <r14d>
    1575:	48 8d 05 7c 01 01 00 	lea    rax,[rip+0x1017c]        # 116f8 <regs.4+0x78>
    157c:	48 89 05 ad 00 01 00 	mov    QWORD PTR [rip+0x100ad],rax        # 11630 <r14w>
    1583:	48 8d 05 6e 01 01 00 	lea    rax,[rip+0x1016e]        # 116f8 <regs.4+0x78>
    158a:	48 89 05 a7 00 01 00 	mov    QWORD PTR [rip+0x100a7],rax        # 11638 <r14b>
    1591:	48 8d 05 68 01 01 00 	lea    rax,[rip+0x10168]        # 11700 <regs.4+0x80>
    1598:	48 89 05 a1 00 01 00 	mov    QWORD PTR [rip+0x100a1],rax        # 11640 <r15>
    159f:	48 8d 05 5a 01 01 00 	lea    rax,[rip+0x1015a]        # 11700 <regs.4+0x80>
    15a6:	48 89 05 9b 00 01 00 	mov    QWORD PTR [rip+0x1009b],rax        # 11648 <r15d>
    15ad:	48 8d 05 4c 01 01 00 	lea    rax,[rip+0x1014c]        # 11700 <regs.4+0x80>
    15b4:	48 89 05 95 00 01 00 	mov    QWORD PTR [rip+0x10095],rax        # 11650 <r15w>
    15bb:	48 8d 05 3e 01 01 00 	lea    rax,[rip+0x1013e]        # 11700 <regs.4+0x80>
    15c2:	48 89 05 8f 00 01 00 	mov    QWORD PTR [rip+0x1008f],rax        # 11658 <r15b>
    15c9:	90                   	nop
    15ca:	5d                   	pop    rbp
    15cb:	c3                   	ret    

00000000000015cc <init_stack>:
    15cc:	f3 0f 1e fa          	endbr64 
    15d0:	55                   	push   rbp
    15d1:	48 89 e5             	mov    rbp,rsp
    15d4:	48 8b 05 65 ff 00 00 	mov    rax,QWORD PTR [rip+0xff65]        # 11540 <rsp>
    15db:	48 8d 15 3e 01 01 00 	lea    rdx,[rip+0x1013e]        # 11720 <stack.3>
    15e2:	48 8d 92 f8 ff ff 03 	lea    rdx,[rdx+0x3fffff8]
    15e9:	48 89 10             	mov    QWORD PTR [rax],rdx
    15ec:	48 8b 15 4d ff 00 00 	mov    rdx,QWORD PTR [rip+0xff4d]        # 11540 <rsp>
    15f3:	48 8b 05 26 ff 00 00 	mov    rax,QWORD PTR [rip+0xff26]        # 11520 <rbp>
    15fa:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    15fd:	48 89 10             	mov    QWORD PTR [rax],rdx
    1600:	90                   	nop
    1601:	5d                   	pop    rbp
    1602:	c3                   	ret    

0000000000001603 <push_u64>:
    1603:	55                   	push   rbp
    1604:	48 89 e5             	mov    rbp,rsp
    1607:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    160b:	48 8b 05 2e ff 00 00 	mov    rax,QWORD PTR [rip+0xff2e]        # 11540 <rsp>
    1612:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1615:	48 8b 05 24 ff 00 00 	mov    rax,QWORD PTR [rip+0xff24]        # 11540 <rsp>
    161c:	48 83 ea 08          	sub    rdx,0x8
    1620:	48 89 10             	mov    QWORD PTR [rax],rdx
    1623:	48 8b 05 16 ff 00 00 	mov    rax,QWORD PTR [rip+0xff16]        # 11540 <rsp>
    162a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    162d:	48 89 c2             	mov    rdx,rax
    1630:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1634:	48 89 02             	mov    QWORD PTR [rdx],rax
    1637:	90                   	nop
    1638:	5d                   	pop    rbp
    1639:	c3                   	ret    

000000000000163a <pop_u64>:
    163a:	55                   	push   rbp
    163b:	48 89 e5             	mov    rbp,rsp
    163e:	48 8b 05 fb fe 00 00 	mov    rax,QWORD PTR [rip+0xfefb]        # 11540 <rsp>
    1645:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1648:	48 8b 00             	mov    rax,QWORD PTR [rax]
    164b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    164f:	48 8b 05 ea fe 00 00 	mov    rax,QWORD PTR [rip+0xfeea]        # 11540 <rsp>
    1656:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1659:	48 8b 05 e0 fe 00 00 	mov    rax,QWORD PTR [rip+0xfee0]        # 11540 <rsp>
    1660:	48 83 c2 08          	add    rdx,0x8
    1664:	48 89 10             	mov    QWORD PTR [rax],rdx
    1667:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    166b:	5d                   	pop    rbp
    166c:	c3                   	ret    

000000000000166d <init_sections>:
    166d:	f3 0f 1e fa          	endbr64 
    1671:	55                   	push   rbp
    1672:	48 89 e5             	mov    rbp,rsp
    1675:	48 8d 05 a4 f9 00 00 	lea    rax,[rip+0xf9a4]        # 11020 <s_rodata_.2>
    167c:	48 89 05 dd ff 00 00 	mov    QWORD PTR [rip+0xffdd],rax        # 11660 <s_rodata>
    1683:	48 8d 05 16 fb 00 00 	lea    rax,[rip+0xfb16]        # 111a0 <s_data_.1>
    168a:	48 89 05 d7 ff 00 00 	mov    QWORD PTR [rip+0xffd7],rax        # 11668 <s_data>
    1691:	48 8d 05 88 00 01 04 	lea    rax,[rip+0x4010088]        # 4011720 <s_bss_.0>
    1698:	48 89 05 d1 ff 00 00 	mov    QWORD PTR [rip+0xffd1],rax        # 11670 <s_bss>
    169f:	90                   	nop
    16a0:	5d                   	pop    rbp
    16a1:	c3                   	ret    

00000000000016a2 <init_regs_>:
    16a2:	f3 0f 1e fa          	endbr64 
    16a6:	55                   	push   rbp
    16a7:	48 89 e5             	mov    rbp,rsp
    16aa:	53                   	push   rbx
    16ab:	48 8b 05 6e fe 00 00 	mov    rax,QWORD PTR [rip+0xfe6e]        # 11520 <rbp>
    16b2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    16b5:	48 89 c7             	mov    rdi,rax
    16b8:	e8 46 ff ff ff       	call   1603 <push_u64>
    16bd:	48 8b 15 7c fe 00 00 	mov    rdx,QWORD PTR [rip+0xfe7c]        # 11540 <rsp>
    16c4:	48 8b 05 55 fe 00 00 	mov    rax,QWORD PTR [rip+0xfe55]        # 11520 <rbp>
    16cb:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    16ce:	48 89 10             	mov    QWORD PTR [rax],rdx
    16d1:	48 8b 05 98 ff 00 00 	mov    rax,QWORD PTR [rip+0xff98]        # 11670 <s_bss>
    16d8:	48 8d 90 68 02 00 00 	lea    rdx,[rax+0x268]
    16df:	48 8b 05 5a fd 00 00 	mov    rax,QWORD PTR [rip+0xfd5a]        # 11440 <rax>
    16e6:	48 89 10             	mov    QWORD PTR [rax],rdx
    16e9:	48 8b 05 50 fd 00 00 	mov    rax,QWORD PTR [rip+0xfd50]        # 11440 <rax>
    16f0:	48 8b 15 79 ff 00 00 	mov    rdx,QWORD PTR [rip+0xff79]        # 11670 <s_bss>
    16f7:	48 83 c2 20          	add    rdx,0x20
    16fb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    16fe:	48 89 02             	mov    QWORD PTR [rdx],rax
    1701:	48 8b 05 68 ff 00 00 	mov    rax,QWORD PTR [rip+0xff68]        # 11670 <s_bss>
    1708:	48 8d 90 68 02 00 00 	lea    rdx,[rax+0x268]
    170f:	48 8b 05 2a fd 00 00 	mov    rax,QWORD PTR [rip+0xfd2a]        # 11440 <rax>
    1716:	48 89 10             	mov    QWORD PTR [rax],rdx
    1719:	48 8b 05 20 fd 00 00 	mov    rax,QWORD PTR [rip+0xfd20]        # 11440 <rax>
    1720:	48 8b 15 49 ff 00 00 	mov    rdx,QWORD PTR [rip+0xff49]        # 11670 <s_bss>
    1727:	48 83 c2 28          	add    rdx,0x28
    172b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    172e:	48 89 02             	mov    QWORD PTR [rdx],rax
    1731:	48 8b 05 38 ff 00 00 	mov    rax,QWORD PTR [rip+0xff38]        # 11670 <s_bss>
    1738:	48 8d 90 68 02 00 00 	lea    rdx,[rax+0x268]
    173f:	48 8b 05 fa fc 00 00 	mov    rax,QWORD PTR [rip+0xfcfa]        # 11440 <rax>
    1746:	48 89 10             	mov    QWORD PTR [rax],rdx
    1749:	48 8b 05 f0 fc 00 00 	mov    rax,QWORD PTR [rip+0xfcf0]        # 11440 <rax>
    1750:	48 8b 15 19 ff 00 00 	mov    rdx,QWORD PTR [rip+0xff19]        # 11670 <s_bss>
    1757:	48 83 c2 30          	add    rdx,0x30
    175b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    175e:	48 89 02             	mov    QWORD PTR [rdx],rax
    1761:	48 8b 05 08 ff 00 00 	mov    rax,QWORD PTR [rip+0xff08]        # 11670 <s_bss>
    1768:	48 8d 90 69 02 00 00 	lea    rdx,[rax+0x269]
    176f:	48 8b 05 ca fc 00 00 	mov    rax,QWORD PTR [rip+0xfcca]        # 11440 <rax>
    1776:	48 89 10             	mov    QWORD PTR [rax],rdx
    1779:	48 8b 05 c0 fc 00 00 	mov    rax,QWORD PTR [rip+0xfcc0]        # 11440 <rax>
    1780:	48 8b 15 e9 fe 00 00 	mov    rdx,QWORD PTR [rip+0xfee9]        # 11670 <s_bss>
    1787:	48 83 c2 38          	add    rdx,0x38
    178b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    178e:	48 89 02             	mov    QWORD PTR [rdx],rax
    1791:	48 8b 05 d8 fe 00 00 	mov    rax,QWORD PTR [rip+0xfed8]        # 11670 <s_bss>
    1798:	48 8d 90 68 02 00 00 	lea    rdx,[rax+0x268]
    179f:	48 8b 05 9a fc 00 00 	mov    rax,QWORD PTR [rip+0xfc9a]        # 11440 <rax>
    17a6:	48 89 10             	mov    QWORD PTR [rax],rdx
    17a9:	48 8b 05 90 fc 00 00 	mov    rax,QWORD PTR [rip+0xfc90]        # 11440 <rax>
    17b0:	48 8b 15 b9 fe 00 00 	mov    rdx,QWORD PTR [rip+0xfeb9]        # 11670 <s_bss>
    17b7:	48 83 c2 40          	add    rdx,0x40
    17bb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    17be:	48 89 02             	mov    QWORD PTR [rdx],rax
    17c1:	48 8b 05 a8 fe 00 00 	mov    rax,QWORD PTR [rip+0xfea8]        # 11670 <s_bss>
    17c8:	48 8d 90 70 02 00 00 	lea    rdx,[rax+0x270]
    17cf:	48 8b 05 6a fc 00 00 	mov    rax,QWORD PTR [rip+0xfc6a]        # 11440 <rax>
    17d6:	48 89 10             	mov    QWORD PTR [rax],rdx
    17d9:	48 8b 05 60 fc 00 00 	mov    rax,QWORD PTR [rip+0xfc60]        # 11440 <rax>
    17e0:	48 8b 15 89 fe 00 00 	mov    rdx,QWORD PTR [rip+0xfe89]        # 11670 <s_bss>
    17e7:	48 83 c2 48          	add    rdx,0x48
    17eb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    17ee:	48 89 02             	mov    QWORD PTR [rdx],rax
    17f1:	48 8b 05 78 fe 00 00 	mov    rax,QWORD PTR [rip+0xfe78]        # 11670 <s_bss>
    17f8:	48 8d 90 70 02 00 00 	lea    rdx,[rax+0x270]
    17ff:	48 8b 05 3a fc 00 00 	mov    rax,QWORD PTR [rip+0xfc3a]        # 11440 <rax>
    1806:	48 89 10             	mov    QWORD PTR [rax],rdx
    1809:	48 8b 05 30 fc 00 00 	mov    rax,QWORD PTR [rip+0xfc30]        # 11440 <rax>
    1810:	48 8b 15 59 fe 00 00 	mov    rdx,QWORD PTR [rip+0xfe59]        # 11670 <s_bss>
    1817:	48 83 c2 50          	add    rdx,0x50
    181b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    181e:	48 89 02             	mov    QWORD PTR [rdx],rax
    1821:	48 8b 05 48 fe 00 00 	mov    rax,QWORD PTR [rip+0xfe48]        # 11670 <s_bss>
    1828:	48 8d 90 70 02 00 00 	lea    rdx,[rax+0x270]
    182f:	48 8b 05 0a fc 00 00 	mov    rax,QWORD PTR [rip+0xfc0a]        # 11440 <rax>
    1836:	48 89 10             	mov    QWORD PTR [rax],rdx
    1839:	48 8b 05 00 fc 00 00 	mov    rax,QWORD PTR [rip+0xfc00]        # 11440 <rax>
    1840:	48 8b 15 29 fe 00 00 	mov    rdx,QWORD PTR [rip+0xfe29]        # 11670 <s_bss>
    1847:	48 83 c2 58          	add    rdx,0x58
    184b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    184e:	48 89 02             	mov    QWORD PTR [rdx],rax
    1851:	48 8b 05 18 fe 00 00 	mov    rax,QWORD PTR [rip+0xfe18]        # 11670 <s_bss>
    1858:	48 8d 90 71 02 00 00 	lea    rdx,[rax+0x271]
    185f:	48 8b 05 da fb 00 00 	mov    rax,QWORD PTR [rip+0xfbda]        # 11440 <rax>
    1866:	48 89 10             	mov    QWORD PTR [rax],rdx
    1869:	48 8b 05 d0 fb 00 00 	mov    rax,QWORD PTR [rip+0xfbd0]        # 11440 <rax>
    1870:	48 8b 15 f9 fd 00 00 	mov    rdx,QWORD PTR [rip+0xfdf9]        # 11670 <s_bss>
    1877:	48 83 c2 60          	add    rdx,0x60
    187b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    187e:	48 89 02             	mov    QWORD PTR [rdx],rax
    1881:	48 8b 05 e8 fd 00 00 	mov    rax,QWORD PTR [rip+0xfde8]        # 11670 <s_bss>
    1888:	48 8d 90 70 02 00 00 	lea    rdx,[rax+0x270]
    188f:	48 8b 05 aa fb 00 00 	mov    rax,QWORD PTR [rip+0xfbaa]        # 11440 <rax>
    1896:	48 89 10             	mov    QWORD PTR [rax],rdx
    1899:	48 8b 05 a0 fb 00 00 	mov    rax,QWORD PTR [rip+0xfba0]        # 11440 <rax>
    18a0:	48 8b 15 c9 fd 00 00 	mov    rdx,QWORD PTR [rip+0xfdc9]        # 11670 <s_bss>
    18a7:	48 83 c2 68          	add    rdx,0x68
    18ab:	48 8b 00             	mov    rax,QWORD PTR [rax]
    18ae:	48 89 02             	mov    QWORD PTR [rdx],rax
    18b1:	48 8b 05 b8 fd 00 00 	mov    rax,QWORD PTR [rip+0xfdb8]        # 11670 <s_bss>
    18b8:	48 8d 90 78 02 00 00 	lea    rdx,[rax+0x278]
    18bf:	48 8b 05 7a fb 00 00 	mov    rax,QWORD PTR [rip+0xfb7a]        # 11440 <rax>
    18c6:	48 89 10             	mov    QWORD PTR [rax],rdx
    18c9:	48 8b 05 70 fb 00 00 	mov    rax,QWORD PTR [rip+0xfb70]        # 11440 <rax>
    18d0:	48 8b 15 99 fd 00 00 	mov    rdx,QWORD PTR [rip+0xfd99]        # 11670 <s_bss>
    18d7:	48 83 c2 70          	add    rdx,0x70
    18db:	48 8b 00             	mov    rax,QWORD PTR [rax]
    18de:	48 89 02             	mov    QWORD PTR [rdx],rax
    18e1:	48 8b 05 88 fd 00 00 	mov    rax,QWORD PTR [rip+0xfd88]        # 11670 <s_bss>
    18e8:	48 8d 90 78 02 00 00 	lea    rdx,[rax+0x278]
    18ef:	48 8b 05 4a fb 00 00 	mov    rax,QWORD PTR [rip+0xfb4a]        # 11440 <rax>
    18f6:	48 89 10             	mov    QWORD PTR [rax],rdx
    18f9:	48 8b 05 40 fb 00 00 	mov    rax,QWORD PTR [rip+0xfb40]        # 11440 <rax>
    1900:	48 8b 15 69 fd 00 00 	mov    rdx,QWORD PTR [rip+0xfd69]        # 11670 <s_bss>
    1907:	48 83 c2 78          	add    rdx,0x78
    190b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    190e:	48 89 02             	mov    QWORD PTR [rdx],rax
    1911:	48 8b 05 58 fd 00 00 	mov    rax,QWORD PTR [rip+0xfd58]        # 11670 <s_bss>
    1918:	48 8d 90 78 02 00 00 	lea    rdx,[rax+0x278]
    191f:	48 8b 05 1a fb 00 00 	mov    rax,QWORD PTR [rip+0xfb1a]        # 11440 <rax>
    1926:	48 89 10             	mov    QWORD PTR [rax],rdx
    1929:	48 8b 05 10 fb 00 00 	mov    rax,QWORD PTR [rip+0xfb10]        # 11440 <rax>
    1930:	48 8b 15 39 fd 00 00 	mov    rdx,QWORD PTR [rip+0xfd39]        # 11670 <s_bss>
    1937:	48 83 ea 80          	sub    rdx,0xffffffffffffff80
    193b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    193e:	48 89 02             	mov    QWORD PTR [rdx],rax
    1941:	48 8b 05 28 fd 00 00 	mov    rax,QWORD PTR [rip+0xfd28]        # 11670 <s_bss>
    1948:	48 8d 90 79 02 00 00 	lea    rdx,[rax+0x279]
    194f:	48 8b 05 ea fa 00 00 	mov    rax,QWORD PTR [rip+0xfaea]        # 11440 <rax>
    1956:	48 89 10             	mov    QWORD PTR [rax],rdx
    1959:	48 8b 05 e0 fa 00 00 	mov    rax,QWORD PTR [rip+0xfae0]        # 11440 <rax>
    1960:	48 8b 15 09 fd 00 00 	mov    rdx,QWORD PTR [rip+0xfd09]        # 11670 <s_bss>
    1967:	48 81 c2 88 00 00 00 	add    rdx,0x88
    196e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1971:	48 89 02             	mov    QWORD PTR [rdx],rax
    1974:	48 8b 05 f5 fc 00 00 	mov    rax,QWORD PTR [rip+0xfcf5]        # 11670 <s_bss>
    197b:	48 8d 90 78 02 00 00 	lea    rdx,[rax+0x278]
    1982:	48 8b 05 b7 fa 00 00 	mov    rax,QWORD PTR [rip+0xfab7]        # 11440 <rax>
    1989:	48 89 10             	mov    QWORD PTR [rax],rdx
    198c:	48 8b 05 ad fa 00 00 	mov    rax,QWORD PTR [rip+0xfaad]        # 11440 <rax>
    1993:	48 8b 15 d6 fc 00 00 	mov    rdx,QWORD PTR [rip+0xfcd6]        # 11670 <s_bss>
    199a:	48 81 c2 90 00 00 00 	add    rdx,0x90
    19a1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    19a4:	48 89 02             	mov    QWORD PTR [rdx],rax
    19a7:	48 8b 05 c2 fc 00 00 	mov    rax,QWORD PTR [rip+0xfcc2]        # 11670 <s_bss>
    19ae:	48 8d 90 80 02 00 00 	lea    rdx,[rax+0x280]
    19b5:	48 8b 05 84 fa 00 00 	mov    rax,QWORD PTR [rip+0xfa84]        # 11440 <rax>
    19bc:	48 89 10             	mov    QWORD PTR [rax],rdx
    19bf:	48 8b 05 7a fa 00 00 	mov    rax,QWORD PTR [rip+0xfa7a]        # 11440 <rax>
    19c6:	48 8b 15 a3 fc 00 00 	mov    rdx,QWORD PTR [rip+0xfca3]        # 11670 <s_bss>
    19cd:	48 81 c2 98 00 00 00 	add    rdx,0x98
    19d4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    19d7:	48 89 02             	mov    QWORD PTR [rdx],rax
    19da:	48 8b 05 8f fc 00 00 	mov    rax,QWORD PTR [rip+0xfc8f]        # 11670 <s_bss>
    19e1:	48 8d 90 80 02 00 00 	lea    rdx,[rax+0x280]
    19e8:	48 8b 05 51 fa 00 00 	mov    rax,QWORD PTR [rip+0xfa51]        # 11440 <rax>
    19ef:	48 89 10             	mov    QWORD PTR [rax],rdx
    19f2:	48 8b 05 47 fa 00 00 	mov    rax,QWORD PTR [rip+0xfa47]        # 11440 <rax>
    19f9:	48 8b 15 70 fc 00 00 	mov    rdx,QWORD PTR [rip+0xfc70]        # 11670 <s_bss>
    1a00:	48 81 c2 a0 00 00 00 	add    rdx,0xa0
    1a07:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1a0a:	48 89 02             	mov    QWORD PTR [rdx],rax
    1a0d:	48 8b 05 5c fc 00 00 	mov    rax,QWORD PTR [rip+0xfc5c]        # 11670 <s_bss>
    1a14:	48 8d 90 80 02 00 00 	lea    rdx,[rax+0x280]
    1a1b:	48 8b 05 1e fa 00 00 	mov    rax,QWORD PTR [rip+0xfa1e]        # 11440 <rax>
    1a22:	48 89 10             	mov    QWORD PTR [rax],rdx
    1a25:	48 8b 05 14 fa 00 00 	mov    rax,QWORD PTR [rip+0xfa14]        # 11440 <rax>
    1a2c:	48 8b 15 3d fc 00 00 	mov    rdx,QWORD PTR [rip+0xfc3d]        # 11670 <s_bss>
    1a33:	48 81 c2 a8 00 00 00 	add    rdx,0xa8
    1a3a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1a3d:	48 89 02             	mov    QWORD PTR [rdx],rax
    1a40:	48 8b 05 29 fc 00 00 	mov    rax,QWORD PTR [rip+0xfc29]        # 11670 <s_bss>
    1a47:	48 8d 90 81 02 00 00 	lea    rdx,[rax+0x281]
    1a4e:	48 8b 05 eb f9 00 00 	mov    rax,QWORD PTR [rip+0xf9eb]        # 11440 <rax>
    1a55:	48 89 10             	mov    QWORD PTR [rax],rdx
    1a58:	48 8b 05 e1 f9 00 00 	mov    rax,QWORD PTR [rip+0xf9e1]        # 11440 <rax>
    1a5f:	48 8b 15 0a fc 00 00 	mov    rdx,QWORD PTR [rip+0xfc0a]        # 11670 <s_bss>
    1a66:	48 81 c2 b0 00 00 00 	add    rdx,0xb0
    1a6d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1a70:	48 89 02             	mov    QWORD PTR [rdx],rax
    1a73:	48 8b 05 f6 fb 00 00 	mov    rax,QWORD PTR [rip+0xfbf6]        # 11670 <s_bss>
    1a7a:	48 8d 90 80 02 00 00 	lea    rdx,[rax+0x280]
    1a81:	48 8b 05 b8 f9 00 00 	mov    rax,QWORD PTR [rip+0xf9b8]        # 11440 <rax>
    1a88:	48 89 10             	mov    QWORD PTR [rax],rdx
    1a8b:	48 8b 05 ae f9 00 00 	mov    rax,QWORD PTR [rip+0xf9ae]        # 11440 <rax>
    1a92:	48 8b 15 d7 fb 00 00 	mov    rdx,QWORD PTR [rip+0xfbd7]        # 11670 <s_bss>
    1a99:	48 81 c2 b8 00 00 00 	add    rdx,0xb8
    1aa0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1aa3:	48 89 02             	mov    QWORD PTR [rdx],rax
    1aa6:	48 8b 05 c3 fb 00 00 	mov    rax,QWORD PTR [rip+0xfbc3]        # 11670 <s_bss>
    1aad:	48 8d 90 88 02 00 00 	lea    rdx,[rax+0x288]
    1ab4:	48 8b 05 85 f9 00 00 	mov    rax,QWORD PTR [rip+0xf985]        # 11440 <rax>
    1abb:	48 89 10             	mov    QWORD PTR [rax],rdx
    1abe:	48 8b 05 7b f9 00 00 	mov    rax,QWORD PTR [rip+0xf97b]        # 11440 <rax>
    1ac5:	48 8b 15 a4 fb 00 00 	mov    rdx,QWORD PTR [rip+0xfba4]        # 11670 <s_bss>
    1acc:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
    1ad3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1ad6:	48 89 02             	mov    QWORD PTR [rdx],rax
    1ad9:	48 8b 05 90 fb 00 00 	mov    rax,QWORD PTR [rip+0xfb90]        # 11670 <s_bss>
    1ae0:	48 8d 90 88 02 00 00 	lea    rdx,[rax+0x288]
    1ae7:	48 8b 05 52 f9 00 00 	mov    rax,QWORD PTR [rip+0xf952]        # 11440 <rax>
    1aee:	48 89 10             	mov    QWORD PTR [rax],rdx
    1af1:	48 8b 05 48 f9 00 00 	mov    rax,QWORD PTR [rip+0xf948]        # 11440 <rax>
    1af8:	48 8b 15 71 fb 00 00 	mov    rdx,QWORD PTR [rip+0xfb71]        # 11670 <s_bss>
    1aff:	48 81 c2 c8 00 00 00 	add    rdx,0xc8
    1b06:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1b09:	48 89 02             	mov    QWORD PTR [rdx],rax
    1b0c:	48 8b 05 5d fb 00 00 	mov    rax,QWORD PTR [rip+0xfb5d]        # 11670 <s_bss>
    1b13:	48 8d 90 88 02 00 00 	lea    rdx,[rax+0x288]
    1b1a:	48 8b 05 1f f9 00 00 	mov    rax,QWORD PTR [rip+0xf91f]        # 11440 <rax>
    1b21:	48 89 10             	mov    QWORD PTR [rax],rdx
    1b24:	48 8b 05 15 f9 00 00 	mov    rax,QWORD PTR [rip+0xf915]        # 11440 <rax>
    1b2b:	48 8b 15 3e fb 00 00 	mov    rdx,QWORD PTR [rip+0xfb3e]        # 11670 <s_bss>
    1b32:	48 81 c2 d0 00 00 00 	add    rdx,0xd0
    1b39:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1b3c:	48 89 02             	mov    QWORD PTR [rdx],rax
    1b3f:	48 8b 05 2a fb 00 00 	mov    rax,QWORD PTR [rip+0xfb2a]        # 11670 <s_bss>
    1b46:	48 8d 90 88 02 00 00 	lea    rdx,[rax+0x288]
    1b4d:	48 8b 05 ec f8 00 00 	mov    rax,QWORD PTR [rip+0xf8ec]        # 11440 <rax>
    1b54:	48 89 10             	mov    QWORD PTR [rax],rdx
    1b57:	48 8b 05 e2 f8 00 00 	mov    rax,QWORD PTR [rip+0xf8e2]        # 11440 <rax>
    1b5e:	48 8b 15 0b fb 00 00 	mov    rdx,QWORD PTR [rip+0xfb0b]        # 11670 <s_bss>
    1b65:	48 81 c2 d8 00 00 00 	add    rdx,0xd8
    1b6c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1b6f:	48 89 02             	mov    QWORD PTR [rdx],rax
    1b72:	48 8b 05 f7 fa 00 00 	mov    rax,QWORD PTR [rip+0xfaf7]        # 11670 <s_bss>
    1b79:	48 8d 90 90 02 00 00 	lea    rdx,[rax+0x290]
    1b80:	48 8b 05 b9 f8 00 00 	mov    rax,QWORD PTR [rip+0xf8b9]        # 11440 <rax>
    1b87:	48 89 10             	mov    QWORD PTR [rax],rdx
    1b8a:	48 8b 05 af f8 00 00 	mov    rax,QWORD PTR [rip+0xf8af]        # 11440 <rax>
    1b91:	48 8b 15 d8 fa 00 00 	mov    rdx,QWORD PTR [rip+0xfad8]        # 11670 <s_bss>
    1b98:	48 81 c2 e0 00 00 00 	add    rdx,0xe0
    1b9f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1ba2:	48 89 02             	mov    QWORD PTR [rdx],rax
    1ba5:	48 8b 05 c4 fa 00 00 	mov    rax,QWORD PTR [rip+0xfac4]        # 11670 <s_bss>
    1bac:	48 8d 90 90 02 00 00 	lea    rdx,[rax+0x290]
    1bb3:	48 8b 05 86 f8 00 00 	mov    rax,QWORD PTR [rip+0xf886]        # 11440 <rax>
    1bba:	48 89 10             	mov    QWORD PTR [rax],rdx
    1bbd:	48 8b 05 7c f8 00 00 	mov    rax,QWORD PTR [rip+0xf87c]        # 11440 <rax>
    1bc4:	48 8b 15 a5 fa 00 00 	mov    rdx,QWORD PTR [rip+0xfaa5]        # 11670 <s_bss>
    1bcb:	48 81 c2 e8 00 00 00 	add    rdx,0xe8
    1bd2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1bd5:	48 89 02             	mov    QWORD PTR [rdx],rax
    1bd8:	48 8b 05 91 fa 00 00 	mov    rax,QWORD PTR [rip+0xfa91]        # 11670 <s_bss>
    1bdf:	48 8d 90 90 02 00 00 	lea    rdx,[rax+0x290]
    1be6:	48 8b 05 53 f8 00 00 	mov    rax,QWORD PTR [rip+0xf853]        # 11440 <rax>
    1bed:	48 89 10             	mov    QWORD PTR [rax],rdx
    1bf0:	48 8b 05 49 f8 00 00 	mov    rax,QWORD PTR [rip+0xf849]        # 11440 <rax>
    1bf7:	48 8b 15 72 fa 00 00 	mov    rdx,QWORD PTR [rip+0xfa72]        # 11670 <s_bss>
    1bfe:	48 81 c2 f0 00 00 00 	add    rdx,0xf0
    1c05:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1c08:	48 89 02             	mov    QWORD PTR [rdx],rax
    1c0b:	48 8b 05 5e fa 00 00 	mov    rax,QWORD PTR [rip+0xfa5e]        # 11670 <s_bss>
    1c12:	48 8d 90 90 02 00 00 	lea    rdx,[rax+0x290]
    1c19:	48 8b 05 20 f8 00 00 	mov    rax,QWORD PTR [rip+0xf820]        # 11440 <rax>
    1c20:	48 89 10             	mov    QWORD PTR [rax],rdx
    1c23:	48 8b 05 16 f8 00 00 	mov    rax,QWORD PTR [rip+0xf816]        # 11440 <rax>
    1c2a:	48 8b 15 3f fa 00 00 	mov    rdx,QWORD PTR [rip+0xfa3f]        # 11670 <s_bss>
    1c31:	48 81 c2 f8 00 00 00 	add    rdx,0xf8
    1c38:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1c3b:	48 89 02             	mov    QWORD PTR [rdx],rax
    1c3e:	48 8b 05 2b fa 00 00 	mov    rax,QWORD PTR [rip+0xfa2b]        # 11670 <s_bss>
    1c45:	48 8d 90 98 02 00 00 	lea    rdx,[rax+0x298]
    1c4c:	48 8b 05 ed f7 00 00 	mov    rax,QWORD PTR [rip+0xf7ed]        # 11440 <rax>
    1c53:	48 89 10             	mov    QWORD PTR [rax],rdx
    1c56:	48 8b 05 e3 f7 00 00 	mov    rax,QWORD PTR [rip+0xf7e3]        # 11440 <rax>
    1c5d:	48 8b 15 0c fa 00 00 	mov    rdx,QWORD PTR [rip+0xfa0c]        # 11670 <s_bss>
    1c64:	48 81 c2 00 01 00 00 	add    rdx,0x100
    1c6b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1c6e:	48 89 02             	mov    QWORD PTR [rdx],rax
    1c71:	48 8b 05 f8 f9 00 00 	mov    rax,QWORD PTR [rip+0xf9f8]        # 11670 <s_bss>
    1c78:	48 8d 90 98 02 00 00 	lea    rdx,[rax+0x298]
    1c7f:	48 8b 05 ba f7 00 00 	mov    rax,QWORD PTR [rip+0xf7ba]        # 11440 <rax>
    1c86:	48 89 10             	mov    QWORD PTR [rax],rdx
    1c89:	48 8b 05 b0 f7 00 00 	mov    rax,QWORD PTR [rip+0xf7b0]        # 11440 <rax>
    1c90:	48 8b 15 d9 f9 00 00 	mov    rdx,QWORD PTR [rip+0xf9d9]        # 11670 <s_bss>
    1c97:	48 81 c2 08 01 00 00 	add    rdx,0x108
    1c9e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1ca1:	48 89 02             	mov    QWORD PTR [rdx],rax
    1ca4:	48 8b 05 c5 f9 00 00 	mov    rax,QWORD PTR [rip+0xf9c5]        # 11670 <s_bss>
    1cab:	48 8d 90 98 02 00 00 	lea    rdx,[rax+0x298]
    1cb2:	48 8b 05 87 f7 00 00 	mov    rax,QWORD PTR [rip+0xf787]        # 11440 <rax>
    1cb9:	48 89 10             	mov    QWORD PTR [rax],rdx
    1cbc:	48 8b 05 7d f7 00 00 	mov    rax,QWORD PTR [rip+0xf77d]        # 11440 <rax>
    1cc3:	48 8b 15 a6 f9 00 00 	mov    rdx,QWORD PTR [rip+0xf9a6]        # 11670 <s_bss>
    1cca:	48 81 c2 10 01 00 00 	add    rdx,0x110
    1cd1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1cd4:	48 89 02             	mov    QWORD PTR [rdx],rax
    1cd7:	48 8b 05 92 f9 00 00 	mov    rax,QWORD PTR [rip+0xf992]        # 11670 <s_bss>
    1cde:	48 8d 90 98 02 00 00 	lea    rdx,[rax+0x298]
    1ce5:	48 8b 05 54 f7 00 00 	mov    rax,QWORD PTR [rip+0xf754]        # 11440 <rax>
    1cec:	48 89 10             	mov    QWORD PTR [rax],rdx
    1cef:	48 8b 05 4a f7 00 00 	mov    rax,QWORD PTR [rip+0xf74a]        # 11440 <rax>
    1cf6:	48 8b 15 73 f9 00 00 	mov    rdx,QWORD PTR [rip+0xf973]        # 11670 <s_bss>
    1cfd:	48 81 c2 18 01 00 00 	add    rdx,0x118
    1d04:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1d07:	48 89 02             	mov    QWORD PTR [rdx],rax
    1d0a:	48 8b 05 5f f9 00 00 	mov    rax,QWORD PTR [rip+0xf95f]        # 11670 <s_bss>
    1d11:	48 8d 90 a0 02 00 00 	lea    rdx,[rax+0x2a0]
    1d18:	48 8b 05 21 f7 00 00 	mov    rax,QWORD PTR [rip+0xf721]        # 11440 <rax>
    1d1f:	48 89 10             	mov    QWORD PTR [rax],rdx
    1d22:	48 8b 05 17 f7 00 00 	mov    rax,QWORD PTR [rip+0xf717]        # 11440 <rax>
    1d29:	48 8b 15 40 f9 00 00 	mov    rdx,QWORD PTR [rip+0xf940]        # 11670 <s_bss>
    1d30:	48 81 c2 20 01 00 00 	add    rdx,0x120
    1d37:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1d3a:	48 89 02             	mov    QWORD PTR [rdx],rax
    1d3d:	48 8b 05 2c f9 00 00 	mov    rax,QWORD PTR [rip+0xf92c]        # 11670 <s_bss>
    1d44:	48 8d 90 a0 02 00 00 	lea    rdx,[rax+0x2a0]
    1d4b:	48 8b 05 ee f6 00 00 	mov    rax,QWORD PTR [rip+0xf6ee]        # 11440 <rax>
    1d52:	48 89 10             	mov    QWORD PTR [rax],rdx
    1d55:	48 8b 05 e4 f6 00 00 	mov    rax,QWORD PTR [rip+0xf6e4]        # 11440 <rax>
    1d5c:	48 8b 15 0d f9 00 00 	mov    rdx,QWORD PTR [rip+0xf90d]        # 11670 <s_bss>
    1d63:	48 81 c2 28 01 00 00 	add    rdx,0x128
    1d6a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1d6d:	48 89 02             	mov    QWORD PTR [rdx],rax
    1d70:	48 8b 05 f9 f8 00 00 	mov    rax,QWORD PTR [rip+0xf8f9]        # 11670 <s_bss>
    1d77:	48 8d 90 a0 02 00 00 	lea    rdx,[rax+0x2a0]
    1d7e:	48 8b 05 bb f6 00 00 	mov    rax,QWORD PTR [rip+0xf6bb]        # 11440 <rax>
    1d85:	48 89 10             	mov    QWORD PTR [rax],rdx
    1d88:	48 8b 05 b1 f6 00 00 	mov    rax,QWORD PTR [rip+0xf6b1]        # 11440 <rax>
    1d8f:	48 8b 15 da f8 00 00 	mov    rdx,QWORD PTR [rip+0xf8da]        # 11670 <s_bss>
    1d96:	48 81 c2 30 01 00 00 	add    rdx,0x130
    1d9d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1da0:	48 89 02             	mov    QWORD PTR [rdx],rax
    1da3:	48 8b 05 c6 f8 00 00 	mov    rax,QWORD PTR [rip+0xf8c6]        # 11670 <s_bss>
    1daa:	48 8d 90 a0 02 00 00 	lea    rdx,[rax+0x2a0]
    1db1:	48 8b 05 88 f6 00 00 	mov    rax,QWORD PTR [rip+0xf688]        # 11440 <rax>
    1db8:	48 89 10             	mov    QWORD PTR [rax],rdx
    1dbb:	48 8b 05 7e f6 00 00 	mov    rax,QWORD PTR [rip+0xf67e]        # 11440 <rax>
    1dc2:	48 8b 15 a7 f8 00 00 	mov    rdx,QWORD PTR [rip+0xf8a7]        # 11670 <s_bss>
    1dc9:	48 81 c2 38 01 00 00 	add    rdx,0x138
    1dd0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1dd3:	48 89 02             	mov    QWORD PTR [rdx],rax
    1dd6:	48 8b 05 93 f8 00 00 	mov    rax,QWORD PTR [rip+0xf893]        # 11670 <s_bss>
    1ddd:	48 8d 90 a8 02 00 00 	lea    rdx,[rax+0x2a8]
    1de4:	48 8b 05 55 f6 00 00 	mov    rax,QWORD PTR [rip+0xf655]        # 11440 <rax>
    1deb:	48 89 10             	mov    QWORD PTR [rax],rdx
    1dee:	48 8b 05 4b f6 00 00 	mov    rax,QWORD PTR [rip+0xf64b]        # 11440 <rax>
    1df5:	48 8b 15 74 f8 00 00 	mov    rdx,QWORD PTR [rip+0xf874]        # 11670 <s_bss>
    1dfc:	48 81 c2 40 01 00 00 	add    rdx,0x140
    1e03:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1e06:	48 89 02             	mov    QWORD PTR [rdx],rax
    1e09:	48 8b 05 60 f8 00 00 	mov    rax,QWORD PTR [rip+0xf860]        # 11670 <s_bss>
    1e10:	48 8d 90 a8 02 00 00 	lea    rdx,[rax+0x2a8]
    1e17:	48 8b 05 22 f6 00 00 	mov    rax,QWORD PTR [rip+0xf622]        # 11440 <rax>
    1e1e:	48 89 10             	mov    QWORD PTR [rax],rdx
    1e21:	48 8b 05 18 f6 00 00 	mov    rax,QWORD PTR [rip+0xf618]        # 11440 <rax>
    1e28:	48 8b 15 41 f8 00 00 	mov    rdx,QWORD PTR [rip+0xf841]        # 11670 <s_bss>
    1e2f:	48 81 c2 48 01 00 00 	add    rdx,0x148
    1e36:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1e39:	48 89 02             	mov    QWORD PTR [rdx],rax
    1e3c:	48 8b 05 2d f8 00 00 	mov    rax,QWORD PTR [rip+0xf82d]        # 11670 <s_bss>
    1e43:	48 8d 90 a8 02 00 00 	lea    rdx,[rax+0x2a8]
    1e4a:	48 8b 05 ef f5 00 00 	mov    rax,QWORD PTR [rip+0xf5ef]        # 11440 <rax>
    1e51:	48 89 10             	mov    QWORD PTR [rax],rdx
    1e54:	48 8b 05 e5 f5 00 00 	mov    rax,QWORD PTR [rip+0xf5e5]        # 11440 <rax>
    1e5b:	48 8b 15 0e f8 00 00 	mov    rdx,QWORD PTR [rip+0xf80e]        # 11670 <s_bss>
    1e62:	48 81 c2 50 01 00 00 	add    rdx,0x150
    1e69:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1e6c:	48 89 02             	mov    QWORD PTR [rdx],rax
    1e6f:	48 8b 05 fa f7 00 00 	mov    rax,QWORD PTR [rip+0xf7fa]        # 11670 <s_bss>
    1e76:	48 8d 90 a8 02 00 00 	lea    rdx,[rax+0x2a8]
    1e7d:	48 8b 05 bc f5 00 00 	mov    rax,QWORD PTR [rip+0xf5bc]        # 11440 <rax>
    1e84:	48 89 10             	mov    QWORD PTR [rax],rdx
    1e87:	48 8b 05 b2 f5 00 00 	mov    rax,QWORD PTR [rip+0xf5b2]        # 11440 <rax>
    1e8e:	48 8b 15 db f7 00 00 	mov    rdx,QWORD PTR [rip+0xf7db]        # 11670 <s_bss>
    1e95:	48 81 c2 58 01 00 00 	add    rdx,0x158
    1e9c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1e9f:	48 89 02             	mov    QWORD PTR [rdx],rax
    1ea2:	48 8b 05 c7 f7 00 00 	mov    rax,QWORD PTR [rip+0xf7c7]        # 11670 <s_bss>
    1ea9:	48 8d 90 b0 02 00 00 	lea    rdx,[rax+0x2b0]
    1eb0:	48 8b 05 89 f5 00 00 	mov    rax,QWORD PTR [rip+0xf589]        # 11440 <rax>
    1eb7:	48 89 10             	mov    QWORD PTR [rax],rdx
    1eba:	48 8b 05 7f f5 00 00 	mov    rax,QWORD PTR [rip+0xf57f]        # 11440 <rax>
    1ec1:	48 8b 15 a8 f7 00 00 	mov    rdx,QWORD PTR [rip+0xf7a8]        # 11670 <s_bss>
    1ec8:	48 81 c2 60 01 00 00 	add    rdx,0x160
    1ecf:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1ed2:	48 89 02             	mov    QWORD PTR [rdx],rax
    1ed5:	48 8b 05 94 f7 00 00 	mov    rax,QWORD PTR [rip+0xf794]        # 11670 <s_bss>
    1edc:	48 8d 90 b0 02 00 00 	lea    rdx,[rax+0x2b0]
    1ee3:	48 8b 05 56 f5 00 00 	mov    rax,QWORD PTR [rip+0xf556]        # 11440 <rax>
    1eea:	48 89 10             	mov    QWORD PTR [rax],rdx
    1eed:	48 8b 05 4c f5 00 00 	mov    rax,QWORD PTR [rip+0xf54c]        # 11440 <rax>
    1ef4:	48 8b 15 75 f7 00 00 	mov    rdx,QWORD PTR [rip+0xf775]        # 11670 <s_bss>
    1efb:	48 81 c2 68 01 00 00 	add    rdx,0x168
    1f02:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1f05:	48 89 02             	mov    QWORD PTR [rdx],rax
    1f08:	48 8b 05 61 f7 00 00 	mov    rax,QWORD PTR [rip+0xf761]        # 11670 <s_bss>
    1f0f:	48 8d 90 b0 02 00 00 	lea    rdx,[rax+0x2b0]
    1f16:	48 8b 05 23 f5 00 00 	mov    rax,QWORD PTR [rip+0xf523]        # 11440 <rax>
    1f1d:	48 89 10             	mov    QWORD PTR [rax],rdx
    1f20:	48 8b 05 19 f5 00 00 	mov    rax,QWORD PTR [rip+0xf519]        # 11440 <rax>
    1f27:	48 8b 15 42 f7 00 00 	mov    rdx,QWORD PTR [rip+0xf742]        # 11670 <s_bss>
    1f2e:	48 81 c2 70 01 00 00 	add    rdx,0x170
    1f35:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1f38:	48 89 02             	mov    QWORD PTR [rdx],rax
    1f3b:	48 8b 05 2e f7 00 00 	mov    rax,QWORD PTR [rip+0xf72e]        # 11670 <s_bss>
    1f42:	48 8d 90 b0 02 00 00 	lea    rdx,[rax+0x2b0]
    1f49:	48 8b 05 f0 f4 00 00 	mov    rax,QWORD PTR [rip+0xf4f0]        # 11440 <rax>
    1f50:	48 89 10             	mov    QWORD PTR [rax],rdx
    1f53:	48 8b 05 e6 f4 00 00 	mov    rax,QWORD PTR [rip+0xf4e6]        # 11440 <rax>
    1f5a:	48 8b 15 0f f7 00 00 	mov    rdx,QWORD PTR [rip+0xf70f]        # 11670 <s_bss>
    1f61:	48 81 c2 78 01 00 00 	add    rdx,0x178
    1f68:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1f6b:	48 89 02             	mov    QWORD PTR [rdx],rax
    1f6e:	48 8b 05 fb f6 00 00 	mov    rax,QWORD PTR [rip+0xf6fb]        # 11670 <s_bss>
    1f75:	48 8d 90 b8 02 00 00 	lea    rdx,[rax+0x2b8]
    1f7c:	48 8b 05 bd f4 00 00 	mov    rax,QWORD PTR [rip+0xf4bd]        # 11440 <rax>
    1f83:	48 89 10             	mov    QWORD PTR [rax],rdx
    1f86:	48 8b 05 b3 f4 00 00 	mov    rax,QWORD PTR [rip+0xf4b3]        # 11440 <rax>
    1f8d:	48 8b 15 dc f6 00 00 	mov    rdx,QWORD PTR [rip+0xf6dc]        # 11670 <s_bss>
    1f94:	48 81 c2 80 01 00 00 	add    rdx,0x180
    1f9b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1f9e:	48 89 02             	mov    QWORD PTR [rdx],rax
    1fa1:	48 8b 05 c8 f6 00 00 	mov    rax,QWORD PTR [rip+0xf6c8]        # 11670 <s_bss>
    1fa8:	48 8d 90 b8 02 00 00 	lea    rdx,[rax+0x2b8]
    1faf:	48 8b 05 8a f4 00 00 	mov    rax,QWORD PTR [rip+0xf48a]        # 11440 <rax>
    1fb6:	48 89 10             	mov    QWORD PTR [rax],rdx
    1fb9:	48 8b 05 80 f4 00 00 	mov    rax,QWORD PTR [rip+0xf480]        # 11440 <rax>
    1fc0:	48 8b 15 a9 f6 00 00 	mov    rdx,QWORD PTR [rip+0xf6a9]        # 11670 <s_bss>
    1fc7:	48 81 c2 88 01 00 00 	add    rdx,0x188
    1fce:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1fd1:	48 89 02             	mov    QWORD PTR [rdx],rax
    1fd4:	48 8b 05 95 f6 00 00 	mov    rax,QWORD PTR [rip+0xf695]        # 11670 <s_bss>
    1fdb:	48 8d 90 b8 02 00 00 	lea    rdx,[rax+0x2b8]
    1fe2:	48 8b 05 57 f4 00 00 	mov    rax,QWORD PTR [rip+0xf457]        # 11440 <rax>
    1fe9:	48 89 10             	mov    QWORD PTR [rax],rdx
    1fec:	48 8b 05 4d f4 00 00 	mov    rax,QWORD PTR [rip+0xf44d]        # 11440 <rax>
    1ff3:	48 8b 15 76 f6 00 00 	mov    rdx,QWORD PTR [rip+0xf676]        # 11670 <s_bss>
    1ffa:	48 81 c2 90 01 00 00 	add    rdx,0x190
    2001:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2004:	48 89 02             	mov    QWORD PTR [rdx],rax
    2007:	48 8b 05 62 f6 00 00 	mov    rax,QWORD PTR [rip+0xf662]        # 11670 <s_bss>
    200e:	48 8d 90 b8 02 00 00 	lea    rdx,[rax+0x2b8]
    2015:	48 8b 05 24 f4 00 00 	mov    rax,QWORD PTR [rip+0xf424]        # 11440 <rax>
    201c:	48 89 10             	mov    QWORD PTR [rax],rdx
    201f:	48 8b 05 1a f4 00 00 	mov    rax,QWORD PTR [rip+0xf41a]        # 11440 <rax>
    2026:	48 8b 15 43 f6 00 00 	mov    rdx,QWORD PTR [rip+0xf643]        # 11670 <s_bss>
    202d:	48 81 c2 98 01 00 00 	add    rdx,0x198
    2034:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2037:	48 89 02             	mov    QWORD PTR [rdx],rax
    203a:	48 8b 05 2f f6 00 00 	mov    rax,QWORD PTR [rip+0xf62f]        # 11670 <s_bss>
    2041:	48 8d 90 c0 02 00 00 	lea    rdx,[rax+0x2c0]
    2048:	48 8b 05 f1 f3 00 00 	mov    rax,QWORD PTR [rip+0xf3f1]        # 11440 <rax>
    204f:	48 89 10             	mov    QWORD PTR [rax],rdx
    2052:	48 8b 05 e7 f3 00 00 	mov    rax,QWORD PTR [rip+0xf3e7]        # 11440 <rax>
    2059:	48 8b 15 10 f6 00 00 	mov    rdx,QWORD PTR [rip+0xf610]        # 11670 <s_bss>
    2060:	48 81 c2 a0 01 00 00 	add    rdx,0x1a0
    2067:	48 8b 00             	mov    rax,QWORD PTR [rax]
    206a:	48 89 02             	mov    QWORD PTR [rdx],rax
    206d:	48 8b 05 fc f5 00 00 	mov    rax,QWORD PTR [rip+0xf5fc]        # 11670 <s_bss>
    2074:	48 8d 90 c0 02 00 00 	lea    rdx,[rax+0x2c0]
    207b:	48 8b 05 be f3 00 00 	mov    rax,QWORD PTR [rip+0xf3be]        # 11440 <rax>
    2082:	48 89 10             	mov    QWORD PTR [rax],rdx
    2085:	48 8b 05 b4 f3 00 00 	mov    rax,QWORD PTR [rip+0xf3b4]        # 11440 <rax>
    208c:	48 8b 15 dd f5 00 00 	mov    rdx,QWORD PTR [rip+0xf5dd]        # 11670 <s_bss>
    2093:	48 81 c2 a8 01 00 00 	add    rdx,0x1a8
    209a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    209d:	48 89 02             	mov    QWORD PTR [rdx],rax
    20a0:	48 8b 05 c9 f5 00 00 	mov    rax,QWORD PTR [rip+0xf5c9]        # 11670 <s_bss>
    20a7:	48 8d 90 c0 02 00 00 	lea    rdx,[rax+0x2c0]
    20ae:	48 8b 05 8b f3 00 00 	mov    rax,QWORD PTR [rip+0xf38b]        # 11440 <rax>
    20b5:	48 89 10             	mov    QWORD PTR [rax],rdx
    20b8:	48 8b 05 81 f3 00 00 	mov    rax,QWORD PTR [rip+0xf381]        # 11440 <rax>
    20bf:	48 8b 15 aa f5 00 00 	mov    rdx,QWORD PTR [rip+0xf5aa]        # 11670 <s_bss>
    20c6:	48 81 c2 b0 01 00 00 	add    rdx,0x1b0
    20cd:	48 8b 00             	mov    rax,QWORD PTR [rax]
    20d0:	48 89 02             	mov    QWORD PTR [rdx],rax
    20d3:	48 8b 05 96 f5 00 00 	mov    rax,QWORD PTR [rip+0xf596]        # 11670 <s_bss>
    20da:	48 8d 90 c0 02 00 00 	lea    rdx,[rax+0x2c0]
    20e1:	48 8b 05 58 f3 00 00 	mov    rax,QWORD PTR [rip+0xf358]        # 11440 <rax>
    20e8:	48 89 10             	mov    QWORD PTR [rax],rdx
    20eb:	48 8b 05 4e f3 00 00 	mov    rax,QWORD PTR [rip+0xf34e]        # 11440 <rax>
    20f2:	48 8b 15 77 f5 00 00 	mov    rdx,QWORD PTR [rip+0xf577]        # 11670 <s_bss>
    20f9:	48 81 c2 b8 01 00 00 	add    rdx,0x1b8
    2100:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2103:	48 89 02             	mov    QWORD PTR [rdx],rax
    2106:	48 8b 05 63 f5 00 00 	mov    rax,QWORD PTR [rip+0xf563]        # 11670 <s_bss>
    210d:	48 8d 90 c8 02 00 00 	lea    rdx,[rax+0x2c8]
    2114:	48 8b 05 25 f3 00 00 	mov    rax,QWORD PTR [rip+0xf325]        # 11440 <rax>
    211b:	48 89 10             	mov    QWORD PTR [rax],rdx
    211e:	48 8b 05 1b f3 00 00 	mov    rax,QWORD PTR [rip+0xf31b]        # 11440 <rax>
    2125:	48 8b 15 44 f5 00 00 	mov    rdx,QWORD PTR [rip+0xf544]        # 11670 <s_bss>
    212c:	48 81 c2 c0 01 00 00 	add    rdx,0x1c0
    2133:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2136:	48 89 02             	mov    QWORD PTR [rdx],rax
    2139:	48 8b 05 30 f5 00 00 	mov    rax,QWORD PTR [rip+0xf530]        # 11670 <s_bss>
    2140:	48 8d 90 c8 02 00 00 	lea    rdx,[rax+0x2c8]
    2147:	48 8b 05 f2 f2 00 00 	mov    rax,QWORD PTR [rip+0xf2f2]        # 11440 <rax>
    214e:	48 89 10             	mov    QWORD PTR [rax],rdx
    2151:	48 8b 05 e8 f2 00 00 	mov    rax,QWORD PTR [rip+0xf2e8]        # 11440 <rax>
    2158:	48 8b 15 11 f5 00 00 	mov    rdx,QWORD PTR [rip+0xf511]        # 11670 <s_bss>
    215f:	48 81 c2 c8 01 00 00 	add    rdx,0x1c8
    2166:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2169:	48 89 02             	mov    QWORD PTR [rdx],rax
    216c:	48 8b 05 fd f4 00 00 	mov    rax,QWORD PTR [rip+0xf4fd]        # 11670 <s_bss>
    2173:	48 8d 90 c8 02 00 00 	lea    rdx,[rax+0x2c8]
    217a:	48 8b 05 bf f2 00 00 	mov    rax,QWORD PTR [rip+0xf2bf]        # 11440 <rax>
    2181:	48 89 10             	mov    QWORD PTR [rax],rdx
    2184:	48 8b 05 b5 f2 00 00 	mov    rax,QWORD PTR [rip+0xf2b5]        # 11440 <rax>
    218b:	48 8b 15 de f4 00 00 	mov    rdx,QWORD PTR [rip+0xf4de]        # 11670 <s_bss>
    2192:	48 81 c2 d0 01 00 00 	add    rdx,0x1d0
    2199:	48 8b 00             	mov    rax,QWORD PTR [rax]
    219c:	48 89 02             	mov    QWORD PTR [rdx],rax
    219f:	48 8b 05 ca f4 00 00 	mov    rax,QWORD PTR [rip+0xf4ca]        # 11670 <s_bss>
    21a6:	48 8d 90 c8 02 00 00 	lea    rdx,[rax+0x2c8]
    21ad:	48 8b 05 8c f2 00 00 	mov    rax,QWORD PTR [rip+0xf28c]        # 11440 <rax>
    21b4:	48 89 10             	mov    QWORD PTR [rax],rdx
    21b7:	48 8b 05 82 f2 00 00 	mov    rax,QWORD PTR [rip+0xf282]        # 11440 <rax>
    21be:	48 8b 15 ab f4 00 00 	mov    rdx,QWORD PTR [rip+0xf4ab]        # 11670 <s_bss>
    21c5:	48 81 c2 d8 01 00 00 	add    rdx,0x1d8
    21cc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    21cf:	48 89 02             	mov    QWORD PTR [rdx],rax
    21d2:	48 8b 05 97 f4 00 00 	mov    rax,QWORD PTR [rip+0xf497]        # 11670 <s_bss>
    21d9:	48 8d 90 d0 02 00 00 	lea    rdx,[rax+0x2d0]
    21e0:	48 8b 05 59 f2 00 00 	mov    rax,QWORD PTR [rip+0xf259]        # 11440 <rax>
    21e7:	48 89 10             	mov    QWORD PTR [rax],rdx
    21ea:	48 8b 05 4f f2 00 00 	mov    rax,QWORD PTR [rip+0xf24f]        # 11440 <rax>
    21f1:	48 8b 15 78 f4 00 00 	mov    rdx,QWORD PTR [rip+0xf478]        # 11670 <s_bss>
    21f8:	48 81 c2 e0 01 00 00 	add    rdx,0x1e0
    21ff:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2202:	48 89 02             	mov    QWORD PTR [rdx],rax
    2205:	48 8b 05 64 f4 00 00 	mov    rax,QWORD PTR [rip+0xf464]        # 11670 <s_bss>
    220c:	48 8d 90 d0 02 00 00 	lea    rdx,[rax+0x2d0]
    2213:	48 8b 05 26 f2 00 00 	mov    rax,QWORD PTR [rip+0xf226]        # 11440 <rax>
    221a:	48 89 10             	mov    QWORD PTR [rax],rdx
    221d:	48 8b 05 1c f2 00 00 	mov    rax,QWORD PTR [rip+0xf21c]        # 11440 <rax>
    2224:	48 8b 15 45 f4 00 00 	mov    rdx,QWORD PTR [rip+0xf445]        # 11670 <s_bss>
    222b:	48 81 c2 e8 01 00 00 	add    rdx,0x1e8
    2232:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2235:	48 89 02             	mov    QWORD PTR [rdx],rax
    2238:	48 8b 05 31 f4 00 00 	mov    rax,QWORD PTR [rip+0xf431]        # 11670 <s_bss>
    223f:	48 8d 90 d0 02 00 00 	lea    rdx,[rax+0x2d0]
    2246:	48 8b 05 f3 f1 00 00 	mov    rax,QWORD PTR [rip+0xf1f3]        # 11440 <rax>
    224d:	48 89 10             	mov    QWORD PTR [rax],rdx
    2250:	48 8b 05 e9 f1 00 00 	mov    rax,QWORD PTR [rip+0xf1e9]        # 11440 <rax>
    2257:	48 8b 15 12 f4 00 00 	mov    rdx,QWORD PTR [rip+0xf412]        # 11670 <s_bss>
    225e:	48 81 c2 f0 01 00 00 	add    rdx,0x1f0
    2265:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2268:	48 89 02             	mov    QWORD PTR [rdx],rax
    226b:	48 8b 05 fe f3 00 00 	mov    rax,QWORD PTR [rip+0xf3fe]        # 11670 <s_bss>
    2272:	48 8d 90 d0 02 00 00 	lea    rdx,[rax+0x2d0]
    2279:	48 8b 05 c0 f1 00 00 	mov    rax,QWORD PTR [rip+0xf1c0]        # 11440 <rax>
    2280:	48 89 10             	mov    QWORD PTR [rax],rdx
    2283:	48 8b 05 b6 f1 00 00 	mov    rax,QWORD PTR [rip+0xf1b6]        # 11440 <rax>
    228a:	48 8b 15 df f3 00 00 	mov    rdx,QWORD PTR [rip+0xf3df]        # 11670 <s_bss>
    2291:	48 81 c2 f8 01 00 00 	add    rdx,0x1f8
    2298:	48 8b 00             	mov    rax,QWORD PTR [rax]
    229b:	48 89 02             	mov    QWORD PTR [rdx],rax
    229e:	48 8b 05 cb f3 00 00 	mov    rax,QWORD PTR [rip+0xf3cb]        # 11670 <s_bss>
    22a5:	48 8d 90 d8 02 00 00 	lea    rdx,[rax+0x2d8]
    22ac:	48 8b 05 8d f1 00 00 	mov    rax,QWORD PTR [rip+0xf18d]        # 11440 <rax>
    22b3:	48 89 10             	mov    QWORD PTR [rax],rdx
    22b6:	48 8b 05 83 f1 00 00 	mov    rax,QWORD PTR [rip+0xf183]        # 11440 <rax>
    22bd:	48 8b 15 ac f3 00 00 	mov    rdx,QWORD PTR [rip+0xf3ac]        # 11670 <s_bss>
    22c4:	48 81 c2 00 02 00 00 	add    rdx,0x200
    22cb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    22ce:	48 89 02             	mov    QWORD PTR [rdx],rax
    22d1:	48 8b 05 98 f3 00 00 	mov    rax,QWORD PTR [rip+0xf398]        # 11670 <s_bss>
    22d8:	48 8d 90 d8 02 00 00 	lea    rdx,[rax+0x2d8]
    22df:	48 8b 05 5a f1 00 00 	mov    rax,QWORD PTR [rip+0xf15a]        # 11440 <rax>
    22e6:	48 89 10             	mov    QWORD PTR [rax],rdx
    22e9:	48 8b 05 50 f1 00 00 	mov    rax,QWORD PTR [rip+0xf150]        # 11440 <rax>
    22f0:	48 8b 15 79 f3 00 00 	mov    rdx,QWORD PTR [rip+0xf379]        # 11670 <s_bss>
    22f7:	48 81 c2 08 02 00 00 	add    rdx,0x208
    22fe:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2301:	48 89 02             	mov    QWORD PTR [rdx],rax
    2304:	48 8b 05 65 f3 00 00 	mov    rax,QWORD PTR [rip+0xf365]        # 11670 <s_bss>
    230b:	48 8d 90 d8 02 00 00 	lea    rdx,[rax+0x2d8]
    2312:	48 8b 05 27 f1 00 00 	mov    rax,QWORD PTR [rip+0xf127]        # 11440 <rax>
    2319:	48 89 10             	mov    QWORD PTR [rax],rdx
    231c:	48 8b 05 1d f1 00 00 	mov    rax,QWORD PTR [rip+0xf11d]        # 11440 <rax>
    2323:	48 8b 15 46 f3 00 00 	mov    rdx,QWORD PTR [rip+0xf346]        # 11670 <s_bss>
    232a:	48 81 c2 10 02 00 00 	add    rdx,0x210
    2331:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2334:	48 89 02             	mov    QWORD PTR [rdx],rax
    2337:	48 8b 05 32 f3 00 00 	mov    rax,QWORD PTR [rip+0xf332]        # 11670 <s_bss>
    233e:	48 8d 90 d8 02 00 00 	lea    rdx,[rax+0x2d8]
    2345:	48 8b 05 f4 f0 00 00 	mov    rax,QWORD PTR [rip+0xf0f4]        # 11440 <rax>
    234c:	48 89 10             	mov    QWORD PTR [rax],rdx
    234f:	48 8b 05 ea f0 00 00 	mov    rax,QWORD PTR [rip+0xf0ea]        # 11440 <rax>
    2356:	48 8b 15 13 f3 00 00 	mov    rdx,QWORD PTR [rip+0xf313]        # 11670 <s_bss>
    235d:	48 81 c2 18 02 00 00 	add    rdx,0x218
    2364:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2367:	48 89 02             	mov    QWORD PTR [rdx],rax
    236a:	48 8b 05 ff f2 00 00 	mov    rax,QWORD PTR [rip+0xf2ff]        # 11670 <s_bss>
    2371:	48 8d 90 e0 02 00 00 	lea    rdx,[rax+0x2e0]
    2378:	48 8b 05 c1 f0 00 00 	mov    rax,QWORD PTR [rip+0xf0c1]        # 11440 <rax>
    237f:	48 89 10             	mov    QWORD PTR [rax],rdx
    2382:	48 8b 05 b7 f0 00 00 	mov    rax,QWORD PTR [rip+0xf0b7]        # 11440 <rax>
    2389:	48 8b 15 e0 f2 00 00 	mov    rdx,QWORD PTR [rip+0xf2e0]        # 11670 <s_bss>
    2390:	48 81 c2 20 02 00 00 	add    rdx,0x220
    2397:	48 8b 00             	mov    rax,QWORD PTR [rax]
    239a:	48 89 02             	mov    QWORD PTR [rdx],rax
    239d:	48 8b 05 cc f2 00 00 	mov    rax,QWORD PTR [rip+0xf2cc]        # 11670 <s_bss>
    23a4:	48 8d 90 e0 02 00 00 	lea    rdx,[rax+0x2e0]
    23ab:	48 8b 05 8e f0 00 00 	mov    rax,QWORD PTR [rip+0xf08e]        # 11440 <rax>
    23b2:	48 89 10             	mov    QWORD PTR [rax],rdx
    23b5:	48 8b 05 84 f0 00 00 	mov    rax,QWORD PTR [rip+0xf084]        # 11440 <rax>
    23bc:	48 8b 15 ad f2 00 00 	mov    rdx,QWORD PTR [rip+0xf2ad]        # 11670 <s_bss>
    23c3:	48 81 c2 28 02 00 00 	add    rdx,0x228
    23ca:	48 8b 00             	mov    rax,QWORD PTR [rax]
    23cd:	48 89 02             	mov    QWORD PTR [rdx],rax
    23d0:	48 8b 05 99 f2 00 00 	mov    rax,QWORD PTR [rip+0xf299]        # 11670 <s_bss>
    23d7:	48 8d 90 e0 02 00 00 	lea    rdx,[rax+0x2e0]
    23de:	48 8b 05 5b f0 00 00 	mov    rax,QWORD PTR [rip+0xf05b]        # 11440 <rax>
    23e5:	48 89 10             	mov    QWORD PTR [rax],rdx
    23e8:	48 8b 05 51 f0 00 00 	mov    rax,QWORD PTR [rip+0xf051]        # 11440 <rax>
    23ef:	48 8b 15 7a f2 00 00 	mov    rdx,QWORD PTR [rip+0xf27a]        # 11670 <s_bss>
    23f6:	48 81 c2 30 02 00 00 	add    rdx,0x230
    23fd:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2400:	48 89 02             	mov    QWORD PTR [rdx],rax
    2403:	48 8b 05 66 f2 00 00 	mov    rax,QWORD PTR [rip+0xf266]        # 11670 <s_bss>
    240a:	48 8d 90 e0 02 00 00 	lea    rdx,[rax+0x2e0]
    2411:	48 8b 05 28 f0 00 00 	mov    rax,QWORD PTR [rip+0xf028]        # 11440 <rax>
    2418:	48 89 10             	mov    QWORD PTR [rax],rdx
    241b:	48 8b 05 1e f0 00 00 	mov    rax,QWORD PTR [rip+0xf01e]        # 11440 <rax>
    2422:	48 8b 15 47 f2 00 00 	mov    rdx,QWORD PTR [rip+0xf247]        # 11670 <s_bss>
    2429:	48 81 c2 38 02 00 00 	add    rdx,0x238
    2430:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2433:	48 89 02             	mov    QWORD PTR [rdx],rax
    2436:	48 8b 1d e3 f0 00 00 	mov    rbx,QWORD PTR [rip+0xf0e3]        # 11520 <rbp>
    243d:	e8 f8 f1 ff ff       	call   163a <pop_u64>
    2442:	48 89 03             	mov    QWORD PTR [rbx],rax
    2445:	90                   	nop
    2446:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    244a:	c9                   	leave  
    244b:	c3                   	ret    

000000000000244c <init_stack_>:
    244c:	f3 0f 1e fa          	endbr64 
    2450:	55                   	push   rbp
    2451:	48 89 e5             	mov    rbp,rsp
    2454:	53                   	push   rbx
    2455:	48 8b 05 c4 f0 00 00 	mov    rax,QWORD PTR [rip+0xf0c4]        # 11520 <rbp>
    245c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    245f:	48 89 c7             	mov    rdi,rax
    2462:	e8 9c f1 ff ff       	call   1603 <push_u64>
    2467:	48 8b 15 d2 f0 00 00 	mov    rdx,QWORD PTR [rip+0xf0d2]        # 11540 <rsp>
    246e:	48 8b 05 ab f0 00 00 	mov    rax,QWORD PTR [rip+0xf0ab]        # 11520 <rbp>
    2475:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2478:	48 89 10             	mov    QWORD PTR [rax],rdx
    247b:	48 8b 15 ee f1 00 00 	mov    rdx,QWORD PTR [rip+0xf1ee]        # 11670 <s_bss>
    2482:	48 8b 05 b7 ef 00 00 	mov    rax,QWORD PTR [rip+0xefb7]        # 11440 <rax>
    2489:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    2490:	48 89 10             	mov    QWORD PTR [rax],rdx
    2493:	48 8b 05 d6 f1 00 00 	mov    rax,QWORD PTR [rip+0xf1d6]        # 11670 <s_bss>
    249a:	48 8d 90 00 03 00 00 	lea    rdx,[rax+0x300]
    24a1:	48 8b 05 10 f0 00 00 	mov    rax,QWORD PTR [rip+0xf010]        # 114b8 <rdx>
    24a8:	48 89 10             	mov    QWORD PTR [rax],rdx
    24ab:	48 8b 05 06 f0 00 00 	mov    rax,QWORD PTR [rip+0xf006]        # 114b8 <rdx>
    24b2:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    24b5:	48 8b 05 fc ef 00 00 	mov    rax,QWORD PTR [rip+0xeffc]        # 114b8 <rdx>
    24bc:	48 81 c2 f8 ff ff 03 	add    rdx,0x3fffff8
    24c3:	48 89 10             	mov    QWORD PTR [rax],rdx
    24c6:	48 8b 05 eb ef 00 00 	mov    rax,QWORD PTR [rip+0xefeb]        # 114b8 <rdx>
    24cd:	48 8b 15 6c ef 00 00 	mov    rdx,QWORD PTR [rip+0xef6c]        # 11440 <rax>
    24d4:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    24d7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    24da:	48 89 02             	mov    QWORD PTR [rdx],rax
    24dd:	48 8b 15 8c f1 00 00 	mov    rdx,QWORD PTR [rip+0xf18c]        # 11670 <s_bss>
    24e4:	48 8b 05 cd ef 00 00 	mov    rax,QWORD PTR [rip+0xefcd]        # 114b8 <rdx>
    24eb:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    24f2:	48 89 10             	mov    QWORD PTR [rax],rdx
    24f5:	48 8b 15 74 f1 00 00 	mov    rdx,QWORD PTR [rip+0xf174]        # 11670 <s_bss>
    24fc:	48 8b 05 3d ef 00 00 	mov    rax,QWORD PTR [rip+0xef3d]        # 11440 <rax>
    2503:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    250a:	48 89 10             	mov    QWORD PTR [rax],rdx
    250d:	48 8b 05 a4 ef 00 00 	mov    rax,QWORD PTR [rip+0xefa4]        # 114b8 <rdx>
    2514:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2517:	48 89 c2             	mov    rdx,rax
    251a:	48 8b 05 97 ef 00 00 	mov    rax,QWORD PTR [rip+0xef97]        # 114b8 <rdx>
    2521:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2524:	48 89 10             	mov    QWORD PTR [rax],rdx
    2527:	48 8b 05 8a ef 00 00 	mov    rax,QWORD PTR [rip+0xef8a]        # 114b8 <rdx>
    252e:	48 8b 15 0b ef 00 00 	mov    rdx,QWORD PTR [rip+0xef0b]        # 11440 <rax>
    2535:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2538:	48 8b 00             	mov    rax,QWORD PTR [rax]
    253b:	48 89 02             	mov    QWORD PTR [rdx],rax
    253e:	48 8b 1d db ef 00 00 	mov    rbx,QWORD PTR [rip+0xefdb]        # 11520 <rbp>
    2545:	e8 f0 f0 ff ff       	call   163a <pop_u64>
    254a:	48 89 03             	mov    QWORD PTR [rbx],rax
    254d:	90                   	nop
    254e:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    2552:	c9                   	leave  
    2553:	c3                   	ret    

0000000000002554 <push_u64_>:
    2554:	f3 0f 1e fa          	endbr64 
    2558:	55                   	push   rbp
    2559:	48 89 e5             	mov    rbp,rsp
    255c:	53                   	push   rbx
    255d:	48 8b 05 bc ef 00 00 	mov    rax,QWORD PTR [rip+0xefbc]        # 11520 <rbp>
    2564:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2567:	48 89 c7             	mov    rdi,rax
    256a:	e8 94 f0 ff ff       	call   1603 <push_u64>
    256f:	48 8b 15 ca ef 00 00 	mov    rdx,QWORD PTR [rip+0xefca]        # 11540 <rsp>
    2576:	48 8b 05 a3 ef 00 00 	mov    rax,QWORD PTR [rip+0xefa3]        # 11520 <rbp>
    257d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2580:	48 89 10             	mov    QWORD PTR [rax],rdx
    2583:	48 8b 05 76 ef 00 00 	mov    rax,QWORD PTR [rip+0xef76]        # 11500 <rdi>
    258a:	48 8b 15 8f ef 00 00 	mov    rdx,QWORD PTR [rip+0xef8f]        # 11520 <rbp>
    2591:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2594:	48 83 ea 08          	sub    rdx,0x8
    2598:	48 8b 00             	mov    rax,QWORD PTR [rax]
    259b:	48 89 02             	mov    QWORD PTR [rdx],rax
    259e:	48 8b 15 cb f0 00 00 	mov    rdx,QWORD PTR [rip+0xf0cb]        # 11670 <s_bss>
    25a5:	48 8b 05 94 ee 00 00 	mov    rax,QWORD PTR [rip+0xee94]        # 11440 <rax>
    25ac:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    25b3:	48 89 10             	mov    QWORD PTR [rax],rdx
    25b6:	48 8b 05 83 ee 00 00 	mov    rax,QWORD PTR [rip+0xee83]        # 11440 <rax>
    25bd:	48 8b 00             	mov    rax,QWORD PTR [rax]
    25c0:	48 89 c2             	mov    rdx,rax
    25c3:	48 8b 05 ee ee 00 00 	mov    rax,QWORD PTR [rip+0xeeee]        # 114b8 <rdx>
    25ca:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    25cd:	48 89 10             	mov    QWORD PTR [rax],rdx
    25d0:	48 8b 15 99 f0 00 00 	mov    rdx,QWORD PTR [rip+0xf099]        # 11670 <s_bss>
    25d7:	48 8b 05 62 ee 00 00 	mov    rax,QWORD PTR [rip+0xee62]        # 11440 <rax>
    25de:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    25e5:	48 89 10             	mov    QWORD PTR [rax],rdx
    25e8:	48 8b 05 c9 ee 00 00 	mov    rax,QWORD PTR [rip+0xeec9]        # 114b8 <rdx>
    25ef:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    25f2:	48 8b 05 bf ee 00 00 	mov    rax,QWORD PTR [rip+0xeebf]        # 114b8 <rdx>
    25f9:	48 83 ea 08          	sub    rdx,0x8
    25fd:	48 89 10             	mov    QWORD PTR [rax],rdx
    2600:	48 8b 05 b1 ee 00 00 	mov    rax,QWORD PTR [rip+0xeeb1]        # 114b8 <rdx>
    2607:	48 8b 15 32 ee 00 00 	mov    rdx,QWORD PTR [rip+0xee32]        # 11440 <rax>
    260e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2611:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2614:	48 89 02             	mov    QWORD PTR [rdx],rax
    2617:	48 8b 15 52 f0 00 00 	mov    rdx,QWORD PTR [rip+0xf052]        # 11670 <s_bss>
    261e:	48 8b 05 1b ee 00 00 	mov    rax,QWORD PTR [rip+0xee1b]        # 11440 <rax>
    2625:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    262c:	48 89 10             	mov    QWORD PTR [rax],rdx
    262f:	48 8b 05 0a ee 00 00 	mov    rax,QWORD PTR [rip+0xee0a]        # 11440 <rax>
    2636:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2639:	48 89 c2             	mov    rdx,rax
    263c:	48 8b 05 fd ed 00 00 	mov    rax,QWORD PTR [rip+0xedfd]        # 11440 <rax>
    2643:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2646:	48 89 10             	mov    QWORD PTR [rax],rdx
    2649:	48 8b 15 f0 ed 00 00 	mov    rdx,QWORD PTR [rip+0xedf0]        # 11440 <rax>
    2650:	48 8b 05 61 ee 00 00 	mov    rax,QWORD PTR [rip+0xee61]        # 114b8 <rdx>
    2657:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    265a:	48 89 10             	mov    QWORD PTR [rax],rdx
    265d:	48 8b 05 bc ee 00 00 	mov    rax,QWORD PTR [rip+0xeebc]        # 11520 <rbp>
    2664:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2667:	48 83 e8 08          	sub    rax,0x8
    266b:	48 89 c2             	mov    rdx,rax
    266e:	48 8b 05 cb ed 00 00 	mov    rax,QWORD PTR [rip+0xedcb]        # 11440 <rax>
    2675:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2678:	48 89 10             	mov    QWORD PTR [rax],rdx
    267b:	48 8b 05 be ed 00 00 	mov    rax,QWORD PTR [rip+0xedbe]        # 11440 <rax>
    2682:	48 8b 15 2f ee 00 00 	mov    rdx,QWORD PTR [rip+0xee2f]        # 114b8 <rdx>
    2689:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    268c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    268f:	48 89 02             	mov    QWORD PTR [rdx],rax
    2692:	48 8b 1d 87 ee 00 00 	mov    rbx,QWORD PTR [rip+0xee87]        # 11520 <rbp>
    2699:	e8 9c ef ff ff       	call   163a <pop_u64>
    269e:	48 89 03             	mov    QWORD PTR [rbx],rax
    26a1:	90                   	nop
    26a2:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    26a6:	c9                   	leave  
    26a7:	c3                   	ret    

00000000000026a8 <pop_u64_>:
    26a8:	f3 0f 1e fa          	endbr64 
    26ac:	55                   	push   rbp
    26ad:	48 89 e5             	mov    rbp,rsp
    26b0:	53                   	push   rbx
    26b1:	48 8b 05 68 ee 00 00 	mov    rax,QWORD PTR [rip+0xee68]        # 11520 <rbp>
    26b8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    26bb:	48 89 c7             	mov    rdi,rax
    26be:	e8 40 ef ff ff       	call   1603 <push_u64>
    26c3:	48 8b 15 76 ee 00 00 	mov    rdx,QWORD PTR [rip+0xee76]        # 11540 <rsp>
    26ca:	48 8b 05 4f ee 00 00 	mov    rax,QWORD PTR [rip+0xee4f]        # 11520 <rbp>
    26d1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    26d4:	48 89 10             	mov    QWORD PTR [rax],rdx
    26d7:	48 8b 15 92 ef 00 00 	mov    rdx,QWORD PTR [rip+0xef92]        # 11670 <s_bss>
    26de:	48 8b 05 5b ed 00 00 	mov    rax,QWORD PTR [rip+0xed5b]        # 11440 <rax>
    26e5:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    26ec:	48 89 10             	mov    QWORD PTR [rax],rdx
    26ef:	48 8b 05 4a ed 00 00 	mov    rax,QWORD PTR [rip+0xed4a]        # 11440 <rax>
    26f6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    26f9:	48 89 c2             	mov    rdx,rax
    26fc:	48 8b 05 3d ed 00 00 	mov    rax,QWORD PTR [rip+0xed3d]        # 11440 <rax>
    2703:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2706:	48 89 10             	mov    QWORD PTR [rax],rdx
    2709:	48 8b 05 30 ed 00 00 	mov    rax,QWORD PTR [rip+0xed30]        # 11440 <rax>
    2710:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2713:	48 89 c2             	mov    rdx,rax
    2716:	48 8b 05 23 ed 00 00 	mov    rax,QWORD PTR [rip+0xed23]        # 11440 <rax>
    271d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2720:	48 89 10             	mov    QWORD PTR [rax],rdx
    2723:	48 8b 05 16 ed 00 00 	mov    rax,QWORD PTR [rip+0xed16]        # 11440 <rax>
    272a:	48 8b 15 ef ed 00 00 	mov    rdx,QWORD PTR [rip+0xedef]        # 11520 <rbp>
    2731:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2734:	48 83 ea 08          	sub    rdx,0x8
    2738:	48 8b 00             	mov    rax,QWORD PTR [rax]
    273b:	48 89 02             	mov    QWORD PTR [rdx],rax
    273e:	48 8b 15 2b ef 00 00 	mov    rdx,QWORD PTR [rip+0xef2b]        # 11670 <s_bss>
    2745:	48 8b 05 f4 ec 00 00 	mov    rax,QWORD PTR [rip+0xecf4]        # 11440 <rax>
    274c:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    2753:	48 89 10             	mov    QWORD PTR [rax],rdx
    2756:	48 8b 05 e3 ec 00 00 	mov    rax,QWORD PTR [rip+0xece3]        # 11440 <rax>
    275d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2760:	48 89 c2             	mov    rdx,rax
    2763:	48 8b 05 4e ed 00 00 	mov    rax,QWORD PTR [rip+0xed4e]        # 114b8 <rdx>
    276a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    276d:	48 89 10             	mov    QWORD PTR [rax],rdx
    2770:	48 8b 15 f9 ee 00 00 	mov    rdx,QWORD PTR [rip+0xeef9]        # 11670 <s_bss>
    2777:	48 8b 05 c2 ec 00 00 	mov    rax,QWORD PTR [rip+0xecc2]        # 11440 <rax>
    277e:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    2785:	48 89 10             	mov    QWORD PTR [rax],rdx
    2788:	48 8b 05 29 ed 00 00 	mov    rax,QWORD PTR [rip+0xed29]        # 114b8 <rdx>
    278f:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2792:	48 8b 05 1f ed 00 00 	mov    rax,QWORD PTR [rip+0xed1f]        # 114b8 <rdx>
    2799:	48 83 c2 08          	add    rdx,0x8
    279d:	48 89 10             	mov    QWORD PTR [rax],rdx
    27a0:	48 8b 05 11 ed 00 00 	mov    rax,QWORD PTR [rip+0xed11]        # 114b8 <rdx>
    27a7:	48 8b 15 92 ec 00 00 	mov    rdx,QWORD PTR [rip+0xec92]        # 11440 <rax>
    27ae:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    27b1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    27b4:	48 89 02             	mov    QWORD PTR [rdx],rax
    27b7:	48 8b 05 62 ed 00 00 	mov    rax,QWORD PTR [rip+0xed62]        # 11520 <rbp>
    27be:	48 8b 00             	mov    rax,QWORD PTR [rax]
    27c1:	48 83 e8 08          	sub    rax,0x8
    27c5:	48 89 c2             	mov    rdx,rax
    27c8:	48 8b 05 71 ec 00 00 	mov    rax,QWORD PTR [rip+0xec71]        # 11440 <rax>
    27cf:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    27d2:	48 89 10             	mov    QWORD PTR [rax],rdx
    27d5:	48 8b 1d 44 ed 00 00 	mov    rbx,QWORD PTR [rip+0xed44]        # 11520 <rbp>
    27dc:	e8 59 ee ff ff       	call   163a <pop_u64>
    27e1:	48 89 03             	mov    QWORD PTR [rbx],rax
    27e4:	90                   	nop
    27e5:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    27e9:	c9                   	leave  
    27ea:	c3                   	ret    

00000000000027eb <init_sections_>:
    27eb:	f3 0f 1e fa          	endbr64 
    27ef:	55                   	push   rbp
    27f0:	48 89 e5             	mov    rbp,rsp
    27f3:	53                   	push   rbx
    27f4:	48 8b 05 25 ed 00 00 	mov    rax,QWORD PTR [rip+0xed25]        # 11520 <rbp>
    27fb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    27fe:	48 89 c7             	mov    rdi,rax
    2801:	e8 fd ed ff ff       	call   1603 <push_u64>
    2806:	48 8b 15 33 ed 00 00 	mov    rdx,QWORD PTR [rip+0xed33]        # 11540 <rsp>
    280d:	48 8b 05 0c ed 00 00 	mov    rax,QWORD PTR [rip+0xed0c]        # 11520 <rbp>
    2814:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2817:	48 89 10             	mov    QWORD PTR [rax],rdx
    281a:	48 8b 05 47 ee 00 00 	mov    rax,QWORD PTR [rip+0xee47]        # 11668 <s_data>
    2821:	48 8d 50 20          	lea    rdx,[rax+0x20]
    2825:	48 8b 05 14 ec 00 00 	mov    rax,QWORD PTR [rip+0xec14]        # 11440 <rax>
    282c:	48 89 10             	mov    QWORD PTR [rax],rdx
    282f:	48 8b 05 0a ec 00 00 	mov    rax,QWORD PTR [rip+0xec0a]        # 11440 <rax>
    2836:	48 8b 15 33 ee 00 00 	mov    rdx,QWORD PTR [rip+0xee33]        # 11670 <s_bss>
    283d:	48 81 c2 40 02 00 00 	add    rdx,0x240
    2844:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2847:	48 89 02             	mov    QWORD PTR [rdx],rax
    284a:	48 8b 05 17 ee 00 00 	mov    rax,QWORD PTR [rip+0xee17]        # 11668 <s_data>
    2851:	48 8d 90 60 02 00 00 	lea    rdx,[rax+0x260]
    2858:	48 8b 05 e1 eb 00 00 	mov    rax,QWORD PTR [rip+0xebe1]        # 11440 <rax>
    285f:	48 89 10             	mov    QWORD PTR [rax],rdx
    2862:	48 8b 05 d7 eb 00 00 	mov    rax,QWORD PTR [rip+0xebd7]        # 11440 <rax>
    2869:	48 8b 15 00 ee 00 00 	mov    rdx,QWORD PTR [rip+0xee00]        # 11670 <s_bss>
    2870:	48 81 c2 48 02 00 00 	add    rdx,0x248
    2877:	48 8b 00             	mov    rax,QWORD PTR [rax]
    287a:	48 89 02             	mov    QWORD PTR [rdx],rax
    287d:	48 8b 05 ec ed 00 00 	mov    rax,QWORD PTR [rip+0xedec]        # 11670 <s_bss>
    2884:	48 8d 90 00 03 00 04 	lea    rdx,[rax+0x4000300]
    288b:	48 8b 05 ae eb 00 00 	mov    rax,QWORD PTR [rip+0xebae]        # 11440 <rax>
    2892:	48 89 10             	mov    QWORD PTR [rax],rdx
    2895:	48 8b 05 a4 eb 00 00 	mov    rax,QWORD PTR [rip+0xeba4]        # 11440 <rax>
    289c:	48 8b 15 cd ed 00 00 	mov    rdx,QWORD PTR [rip+0xedcd]        # 11670 <s_bss>
    28a3:	48 81 c2 50 02 00 00 	add    rdx,0x250
    28aa:	48 8b 00             	mov    rax,QWORD PTR [rax]
    28ad:	48 89 02             	mov    QWORD PTR [rdx],rax
    28b0:	48 8b 1d 69 ec 00 00 	mov    rbx,QWORD PTR [rip+0xec69]        # 11520 <rbp>
    28b7:	e8 7e ed ff ff       	call   163a <pop_u64>
    28bc:	48 89 03             	mov    QWORD PTR [rbx],rax
    28bf:	90                   	nop
    28c0:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    28c4:	c9                   	leave  
    28c5:	c3                   	ret    

00000000000028c6 <fib_rec>:
    28c6:	f3 0f 1e fa          	endbr64 
    28ca:	55                   	push   rbp
    28cb:	48 89 e5             	mov    rbp,rsp
    28ce:	53                   	push   rbx
    28cf:	48 83 ec 08          	sub    rsp,0x8
    28d3:	48 8b 05 46 ec 00 00 	mov    rax,QWORD PTR [rip+0xec46]        # 11520 <rbp>
    28da:	48 8b 00             	mov    rax,QWORD PTR [rax]
    28dd:	48 89 c7             	mov    rdi,rax
    28e0:	e8 1e ed ff ff       	call   1603 <push_u64>
    28e5:	48 8b 15 54 ec 00 00 	mov    rdx,QWORD PTR [rip+0xec54]        # 11540 <rsp>
    28ec:	48 8b 05 2d ec 00 00 	mov    rax,QWORD PTR [rip+0xec2d]        # 11520 <rbp>
    28f3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    28f6:	48 89 10             	mov    QWORD PTR [rax],rdx
    28f9:	48 8b 05 68 eb 00 00 	mov    rax,QWORD PTR [rip+0xeb68]        # 11468 <rbx>
    2900:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2903:	48 89 c7             	mov    rdi,rax
    2906:	e8 f8 ec ff ff       	call   1603 <push_u64>
    290b:	48 8b 05 2e ec 00 00 	mov    rax,QWORD PTR [rip+0xec2e]        # 11540 <rsp>
    2912:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2915:	48 8b 05 24 ec 00 00 	mov    rax,QWORD PTR [rip+0xec24]        # 11540 <rsp>
    291c:	48 83 ea 08          	sub    rdx,0x8
    2920:	48 89 10             	mov    QWORD PTR [rax],rdx
    2923:	48 8b 15 46 ed 00 00 	mov    rdx,QWORD PTR [rip+0xed46]        # 11670 <s_bss>
    292a:	48 8b 05 0f eb 00 00 	mov    rax,QWORD PTR [rip+0xeb0f]        # 11440 <rax>
    2931:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    2938:	48 89 10             	mov    QWORD PTR [rax],rdx
    293b:	48 8b 05 fe ea 00 00 	mov    rax,QWORD PTR [rip+0xeafe]        # 11440 <rax>
    2942:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2945:	48 89 c2             	mov    rdx,rax
    2948:	48 8b 05 f1 ea 00 00 	mov    rax,QWORD PTR [rip+0xeaf1]        # 11440 <rax>
    294f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2952:	48 89 10             	mov    QWORD PTR [rax],rdx
    2955:	48 8b 15 e4 ea 00 00 	mov    rdx,QWORD PTR [rip+0xeae4]        # 11440 <rax>
    295c:	48 8b 05 9d eb 00 00 	mov    rax,QWORD PTR [rip+0xeb9d]        # 11500 <rdi>
    2963:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2966:	48 89 10             	mov    QWORD PTR [rax],rdx
    2969:	e8 e6 fb ff ff       	call   2554 <push_u64_>
    296e:	48 8b 15 fb ec 00 00 	mov    rdx,QWORD PTR [rip+0xecfb]        # 11670 <s_bss>
    2975:	48 8b 05 3c eb 00 00 	mov    rax,QWORD PTR [rip+0xeb3c]        # 114b8 <rdx>
    297c:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    2983:	48 89 10             	mov    QWORD PTR [rax],rdx
    2986:	48 8b 15 e3 ec 00 00 	mov    rdx,QWORD PTR [rip+0xece3]        # 11670 <s_bss>
    298d:	48 8b 05 ac ea 00 00 	mov    rax,QWORD PTR [rip+0xeaac]        # 11440 <rax>
    2994:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    299b:	48 89 10             	mov    QWORD PTR [rax],rdx
    299e:	48 8b 05 13 eb 00 00 	mov    rax,QWORD PTR [rip+0xeb13]        # 114b8 <rdx>
    29a5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    29a8:	48 89 c2             	mov    rdx,rax
    29ab:	48 8b 05 06 eb 00 00 	mov    rax,QWORD PTR [rip+0xeb06]        # 114b8 <rdx>
    29b2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    29b5:	48 89 10             	mov    QWORD PTR [rax],rdx
    29b8:	48 8b 05 f9 ea 00 00 	mov    rax,QWORD PTR [rip+0xeaf9]        # 114b8 <rdx>
    29bf:	48 8b 15 7a ea 00 00 	mov    rdx,QWORD PTR [rip+0xea7a]        # 11440 <rax>
    29c6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    29c9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    29cc:	48 89 02             	mov    QWORD PTR [rdx],rax
    29cf:	48 8b 15 9a ec 00 00 	mov    rdx,QWORD PTR [rip+0xec9a]        # 11670 <s_bss>
    29d6:	48 8b 05 63 ea 00 00 	mov    rax,QWORD PTR [rip+0xea63]        # 11440 <rax>
    29dd:	48 8b 52 48          	mov    rdx,QWORD PTR [rdx+0x48]
    29e1:	48 89 10             	mov    QWORD PTR [rax],rdx
    29e4:	48 8b 05 55 ea 00 00 	mov    rax,QWORD PTR [rip+0xea55]        # 11440 <rax>
    29eb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    29ee:	48 89 c2             	mov    rdx,rax
    29f1:	48 8b 05 48 ea 00 00 	mov    rax,QWORD PTR [rip+0xea48]        # 11440 <rax>
    29f8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    29fb:	48 89 10             	mov    QWORD PTR [rax],rdx
    29fe:	48 8b 15 3b ea 00 00 	mov    rdx,QWORD PTR [rip+0xea3b]        # 11440 <rax>
    2a05:	48 8b 05 f4 ea 00 00 	mov    rax,QWORD PTR [rip+0xeaf4]        # 11500 <rdi>
    2a0c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2a0f:	48 89 10             	mov    QWORD PTR [rax],rdx
    2a12:	e8 3d fb ff ff       	call   2554 <push_u64_>
    2a17:	48 8b 15 52 ec 00 00 	mov    rdx,QWORD PTR [rip+0xec52]        # 11670 <s_bss>
    2a1e:	48 8b 05 1b ea 00 00 	mov    rax,QWORD PTR [rip+0xea1b]        # 11440 <rax>
    2a25:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    2a2c:	48 89 10             	mov    QWORD PTR [rax],rdx
    2a2f:	48 8b 05 0a ea 00 00 	mov    rax,QWORD PTR [rip+0xea0a]        # 11440 <rax>
    2a36:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2a39:	48 89 c2             	mov    rdx,rax
    2a3c:	48 8b 05 75 ea 00 00 	mov    rax,QWORD PTR [rip+0xea75]        # 114b8 <rdx>
    2a43:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2a46:	48 89 10             	mov    QWORD PTR [rax],rdx
    2a49:	48 8b 15 20 ec 00 00 	mov    rdx,QWORD PTR [rip+0xec20]        # 11670 <s_bss>
    2a50:	48 8b 05 e9 e9 00 00 	mov    rax,QWORD PTR [rip+0xe9e9]        # 11440 <rax>
    2a57:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    2a5e:	48 89 10             	mov    QWORD PTR [rax],rdx
    2a61:	48 8b 05 50 ea 00 00 	mov    rax,QWORD PTR [rip+0xea50]        # 114b8 <rdx>
    2a68:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2a6b:	48 8b 05 46 ea 00 00 	mov    rax,QWORD PTR [rip+0xea46]        # 114b8 <rdx>
    2a72:	48 83 ea 18          	sub    rdx,0x18
    2a76:	48 89 10             	mov    QWORD PTR [rax],rdx
    2a79:	48 8b 05 38 ea 00 00 	mov    rax,QWORD PTR [rip+0xea38]        # 114b8 <rdx>
    2a80:	48 8b 15 b9 e9 00 00 	mov    rdx,QWORD PTR [rip+0xe9b9]        # 11440 <rax>
    2a87:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2a8a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2a8d:	48 89 02             	mov    QWORD PTR [rdx],rax
    2a90:	48 8b 15 d9 eb 00 00 	mov    rdx,QWORD PTR [rip+0xebd9]        # 11670 <s_bss>
    2a97:	48 8b 05 a2 e9 00 00 	mov    rax,QWORD PTR [rip+0xe9a2]        # 11440 <rax>
    2a9e:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    2aa5:	48 89 10             	mov    QWORD PTR [rax],rdx
    2aa8:	48 8b 15 c1 eb 00 00 	mov    rdx,QWORD PTR [rip+0xebc1]        # 11670 <s_bss>
    2aaf:	48 8b 05 02 ea 00 00 	mov    rax,QWORD PTR [rip+0xea02]        # 114b8 <rdx>
    2ab6:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    2abd:	48 89 10             	mov    QWORD PTR [rax],rdx
    2ac0:	48 8b 05 f1 e9 00 00 	mov    rax,QWORD PTR [rip+0xe9f1]        # 114b8 <rdx>
    2ac7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2aca:	48 89 c2             	mov    rdx,rax
    2acd:	48 8b 05 e4 e9 00 00 	mov    rax,QWORD PTR [rip+0xe9e4]        # 114b8 <rdx>
    2ad4:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2ad7:	48 89 10             	mov    QWORD PTR [rax],rdx
    2ada:	48 8b 05 d7 e9 00 00 	mov    rax,QWORD PTR [rip+0xe9d7]        # 114b8 <rdx>
    2ae1:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2ae4:	48 8b 05 cd e9 00 00 	mov    rax,QWORD PTR [rip+0xe9cd]        # 114b8 <rdx>
    2aeb:	48 83 ea 18          	sub    rdx,0x18
    2aef:	48 89 10             	mov    QWORD PTR [rax],rdx
    2af2:	48 8b 05 47 e9 00 00 	mov    rax,QWORD PTR [rip+0xe947]        # 11440 <rax>
    2af9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2afc:	48 89 c2             	mov    rdx,rax
    2aff:	48 8b 05 3a e9 00 00 	mov    rax,QWORD PTR [rip+0xe93a]        # 11440 <rax>
    2b06:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2b09:	48 89 10             	mov    QWORD PTR [rax],rdx
    2b0c:	48 8b 05 2d e9 00 00 	mov    rax,QWORD PTR [rip+0xe92d]        # 11440 <rax>
    2b13:	48 8b 15 9e e9 00 00 	mov    rdx,QWORD PTR [rip+0xe99e]        # 114b8 <rdx>
    2b1a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2b1d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2b20:	48 89 02             	mov    QWORD PTR [rdx],rax
    2b23:	48 8b 15 46 eb 00 00 	mov    rdx,QWORD PTR [rip+0xeb46]        # 11670 <s_bss>
    2b2a:	48 8b 05 0f e9 00 00 	mov    rax,QWORD PTR [rip+0xe90f]        # 11440 <rax>
    2b31:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    2b38:	48 89 10             	mov    QWORD PTR [rax],rdx
    2b3b:	48 8b 05 fe e8 00 00 	mov    rax,QWORD PTR [rip+0xe8fe]        # 11440 <rax>
    2b42:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2b45:	48 89 c2             	mov    rdx,rax
    2b48:	48 8b 05 f1 e8 00 00 	mov    rax,QWORD PTR [rip+0xe8f1]        # 11440 <rax>
    2b4f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2b52:	48 89 10             	mov    QWORD PTR [rax],rdx
    2b55:	48 8b 05 e4 e8 00 00 	mov    rax,QWORD PTR [rip+0xe8e4]        # 11440 <rax>
    2b5c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2b5f:	48 8b 05 da e8 00 00 	mov    rax,QWORD PTR [rip+0xe8da]        # 11440 <rax>
    2b66:	48 83 ea 18          	sub    rdx,0x18
    2b6a:	48 89 10             	mov    QWORD PTR [rax],rdx
    2b6d:	48 8b 05 cc e8 00 00 	mov    rax,QWORD PTR [rip+0xe8cc]        # 11440 <rax>
    2b74:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2b77:	48 89 c2             	mov    rdx,rax
    2b7a:	48 8b 05 bf e8 00 00 	mov    rax,QWORD PTR [rip+0xe8bf]        # 11440 <rax>
    2b81:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2b84:	48 89 10             	mov    QWORD PTR [rax],rdx
    2b87:	48 8b 05 b2 e8 00 00 	mov    rax,QWORD PTR [rip+0xe8b2]        # 11440 <rax>
    2b8e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2b91:	48 83 f8 01          	cmp    rax,0x1
    2b95:	0f 86 ff 03 00 00    	jbe    2f9a <fib_rec+0x6d4>
    2b9b:	48 8b 15 ce ea 00 00 	mov    rdx,QWORD PTR [rip+0xeace]        # 11670 <s_bss>
    2ba2:	48 8b 05 97 e8 00 00 	mov    rax,QWORD PTR [rip+0xe897]        # 11440 <rax>
    2ba9:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    2bb0:	48 89 10             	mov    QWORD PTR [rax],rdx
    2bb3:	48 8b 05 86 e8 00 00 	mov    rax,QWORD PTR [rip+0xe886]        # 11440 <rax>
    2bba:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2bbd:	48 89 c2             	mov    rdx,rax
    2bc0:	48 8b 05 79 e8 00 00 	mov    rax,QWORD PTR [rip+0xe879]        # 11440 <rax>
    2bc7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2bca:	48 89 10             	mov    QWORD PTR [rax],rdx
    2bcd:	48 8b 05 6c e8 00 00 	mov    rax,QWORD PTR [rip+0xe86c]        # 11440 <rax>
    2bd4:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2bd7:	48 8b 05 62 e8 00 00 	mov    rax,QWORD PTR [rip+0xe862]        # 11440 <rax>
    2bde:	48 83 ea 18          	sub    rdx,0x18
    2be2:	48 89 10             	mov    QWORD PTR [rax],rdx
    2be5:	48 8b 15 54 e8 00 00 	mov    rdx,QWORD PTR [rip+0xe854]        # 11440 <rax>
    2bec:	48 8b 05 c5 e8 00 00 	mov    rax,QWORD PTR [rip+0xe8c5]        # 114b8 <rdx>
    2bf3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2bf6:	48 89 10             	mov    QWORD PTR [rax],rdx
    2bf9:	48 8b 15 70 ea 00 00 	mov    rdx,QWORD PTR [rip+0xea70]        # 11670 <s_bss>
    2c00:	48 8b 05 39 e8 00 00 	mov    rax,QWORD PTR [rip+0xe839]        # 11440 <rax>
    2c07:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    2c0b:	48 89 10             	mov    QWORD PTR [rax],rdx
    2c0e:	48 8b 05 a3 e8 00 00 	mov    rax,QWORD PTR [rip+0xe8a3]        # 114b8 <rdx>
    2c15:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2c18:	48 89 c2             	mov    rdx,rax
    2c1b:	48 8b 05 96 e8 00 00 	mov    rax,QWORD PTR [rip+0xe896]        # 114b8 <rdx>
    2c22:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2c25:	48 89 10             	mov    QWORD PTR [rax],rdx
    2c28:	48 8b 05 89 e8 00 00 	mov    rax,QWORD PTR [rip+0xe889]        # 114b8 <rdx>
    2c2f:	48 8b 15 0a e8 00 00 	mov    rdx,QWORD PTR [rip+0xe80a]        # 11440 <rax>
    2c36:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2c39:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2c3c:	48 89 02             	mov    QWORD PTR [rdx],rax
    2c3f:	48 8b 15 2a ea 00 00 	mov    rdx,QWORD PTR [rip+0xea2a]        # 11670 <s_bss>
    2c46:	48 8b 05 f3 e7 00 00 	mov    rax,QWORD PTR [rip+0xe7f3]        # 11440 <rax>
    2c4d:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    2c51:	48 89 10             	mov    QWORD PTR [rax],rdx
    2c54:	48 8b 05 e5 e7 00 00 	mov    rax,QWORD PTR [rip+0xe7e5]        # 11440 <rax>
    2c5b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2c5e:	48 89 c2             	mov    rdx,rax
    2c61:	48 8b 05 50 e8 00 00 	mov    rax,QWORD PTR [rip+0xe850]        # 114b8 <rdx>
    2c68:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2c6b:	48 89 10             	mov    QWORD PTR [rax],rdx
    2c6e:	48 8b 15 fb e9 00 00 	mov    rdx,QWORD PTR [rip+0xe9fb]        # 11670 <s_bss>
    2c75:	48 8b 05 c4 e7 00 00 	mov    rax,QWORD PTR [rip+0xe7c4]        # 11440 <rax>
    2c7c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    2c80:	48 89 10             	mov    QWORD PTR [rax],rdx
    2c83:	48 8b 05 2e e8 00 00 	mov    rax,QWORD PTR [rip+0xe82e]        # 114b8 <rdx>
    2c8a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2c8d:	48 8b 05 24 e8 00 00 	mov    rax,QWORD PTR [rip+0xe824]        # 114b8 <rdx>
    2c94:	48 83 ea 01          	sub    rdx,0x1
    2c98:	48 89 10             	mov    QWORD PTR [rax],rdx
    2c9b:	48 8b 05 16 e8 00 00 	mov    rax,QWORD PTR [rip+0xe816]        # 114b8 <rdx>
    2ca2:	48 8b 15 97 e7 00 00 	mov    rdx,QWORD PTR [rip+0xe797]        # 11440 <rax>
    2ca9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2cac:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2caf:	48 89 02             	mov    QWORD PTR [rdx],rax
    2cb2:	48 8b 15 b7 e9 00 00 	mov    rdx,QWORD PTR [rip+0xe9b7]        # 11670 <s_bss>
    2cb9:	48 8b 05 f8 e7 00 00 	mov    rax,QWORD PTR [rip+0xe7f8]        # 114b8 <rdx>
    2cc0:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    2cc4:	48 89 10             	mov    QWORD PTR [rax],rdx
    2cc7:	48 8b 15 a2 e9 00 00 	mov    rdx,QWORD PTR [rip+0xe9a2]        # 11670 <s_bss>
    2cce:	48 8b 05 6b e7 00 00 	mov    rax,QWORD PTR [rip+0xe76b]        # 11440 <rax>
    2cd5:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    2cdc:	48 89 10             	mov    QWORD PTR [rax],rdx
    2cdf:	48 8b 05 d2 e7 00 00 	mov    rax,QWORD PTR [rip+0xe7d2]        # 114b8 <rdx>
    2ce6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2ce9:	48 89 c2             	mov    rdx,rax
    2cec:	48 8b 05 c5 e7 00 00 	mov    rax,QWORD PTR [rip+0xe7c5]        # 114b8 <rdx>
    2cf3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2cf6:	48 89 10             	mov    QWORD PTR [rax],rdx
    2cf9:	48 8b 05 b8 e7 00 00 	mov    rax,QWORD PTR [rip+0xe7b8]        # 114b8 <rdx>
    2d00:	48 8b 15 39 e7 00 00 	mov    rdx,QWORD PTR [rip+0xe739]        # 11440 <rax>
    2d07:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2d0a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2d0d:	48 89 02             	mov    QWORD PTR [rdx],rax
    2d10:	e8 b1 fb ff ff       	call   28c6 <fib_rec>
    2d15:	48 8b 15 54 e9 00 00 	mov    rdx,QWORD PTR [rip+0xe954]        # 11670 <s_bss>
    2d1c:	48 8b 05 95 e7 00 00 	mov    rax,QWORD PTR [rip+0xe795]        # 114b8 <rdx>
    2d23:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    2d27:	48 89 10             	mov    QWORD PTR [rax],rdx
    2d2a:	48 8b 15 3f e9 00 00 	mov    rdx,QWORD PTR [rip+0xe93f]        # 11670 <s_bss>
    2d31:	48 8b 05 08 e7 00 00 	mov    rax,QWORD PTR [rip+0xe708]        # 11440 <rax>
    2d38:	48 8b 52 48          	mov    rdx,QWORD PTR [rdx+0x48]
    2d3c:	48 89 10             	mov    QWORD PTR [rax],rdx
    2d3f:	48 8b 05 72 e7 00 00 	mov    rax,QWORD PTR [rip+0xe772]        # 114b8 <rdx>
    2d46:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2d49:	48 89 c2             	mov    rdx,rax
    2d4c:	48 8b 05 65 e7 00 00 	mov    rax,QWORD PTR [rip+0xe765]        # 114b8 <rdx>
    2d53:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2d56:	48 89 10             	mov    QWORD PTR [rax],rdx
    2d59:	48 8b 05 58 e7 00 00 	mov    rax,QWORD PTR [rip+0xe758]        # 114b8 <rdx>
    2d60:	48 8b 15 d9 e6 00 00 	mov    rdx,QWORD PTR [rip+0xe6d9]        # 11440 <rax>
    2d67:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2d6a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2d6d:	48 89 02             	mov    QWORD PTR [rdx],rax
    2d70:	48 8b 15 f9 e8 00 00 	mov    rdx,QWORD PTR [rip+0xe8f9]        # 11670 <s_bss>
    2d77:	48 8b 05 c2 e6 00 00 	mov    rax,QWORD PTR [rip+0xe6c2]        # 11440 <rax>
    2d7e:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    2d85:	48 89 10             	mov    QWORD PTR [rax],rdx
    2d88:	48 8b 05 b1 e6 00 00 	mov    rax,QWORD PTR [rip+0xe6b1]        # 11440 <rax>
    2d8f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2d92:	48 89 c2             	mov    rdx,rax
    2d95:	48 8b 05 a4 e6 00 00 	mov    rax,QWORD PTR [rip+0xe6a4]        # 11440 <rax>
    2d9c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2d9f:	48 89 10             	mov    QWORD PTR [rax],rdx
    2da2:	48 8b 05 97 e6 00 00 	mov    rax,QWORD PTR [rip+0xe697]        # 11440 <rax>
    2da9:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2dac:	48 8b 05 8d e6 00 00 	mov    rax,QWORD PTR [rip+0xe68d]        # 11440 <rax>
    2db3:	48 83 ea 18          	sub    rdx,0x18
    2db7:	48 89 10             	mov    QWORD PTR [rax],rdx
    2dba:	48 8b 15 7f e6 00 00 	mov    rdx,QWORD PTR [rip+0xe67f]        # 11440 <rax>
    2dc1:	48 8b 05 f0 e6 00 00 	mov    rax,QWORD PTR [rip+0xe6f0]        # 114b8 <rdx>
    2dc8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2dcb:	48 89 10             	mov    QWORD PTR [rax],rdx
    2dce:	48 8b 15 9b e8 00 00 	mov    rdx,QWORD PTR [rip+0xe89b]        # 11670 <s_bss>
    2dd5:	48 8b 05 64 e6 00 00 	mov    rax,QWORD PTR [rip+0xe664]        # 11440 <rax>
    2ddc:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    2de0:	48 89 10             	mov    QWORD PTR [rax],rdx
    2de3:	48 8b 05 ce e6 00 00 	mov    rax,QWORD PTR [rip+0xe6ce]        # 114b8 <rdx>
    2dea:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2ded:	48 89 c2             	mov    rdx,rax
    2df0:	48 8b 05 c1 e6 00 00 	mov    rax,QWORD PTR [rip+0xe6c1]        # 114b8 <rdx>
    2df7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2dfa:	48 89 10             	mov    QWORD PTR [rax],rdx
    2dfd:	48 8b 05 b4 e6 00 00 	mov    rax,QWORD PTR [rip+0xe6b4]        # 114b8 <rdx>
    2e04:	48 8b 15 35 e6 00 00 	mov    rdx,QWORD PTR [rip+0xe635]        # 11440 <rax>
    2e0b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2e0e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2e11:	48 89 02             	mov    QWORD PTR [rdx],rax
    2e14:	48 8b 15 55 e8 00 00 	mov    rdx,QWORD PTR [rip+0xe855]        # 11670 <s_bss>
    2e1b:	48 8b 05 1e e6 00 00 	mov    rax,QWORD PTR [rip+0xe61e]        # 11440 <rax>
    2e22:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    2e26:	48 89 10             	mov    QWORD PTR [rax],rdx
    2e29:	48 8b 05 10 e6 00 00 	mov    rax,QWORD PTR [rip+0xe610]        # 11440 <rax>
    2e30:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2e33:	48 89 c2             	mov    rdx,rax
    2e36:	48 8b 05 7b e6 00 00 	mov    rax,QWORD PTR [rip+0xe67b]        # 114b8 <rdx>
    2e3d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2e40:	48 89 10             	mov    QWORD PTR [rax],rdx
    2e43:	48 8b 15 26 e8 00 00 	mov    rdx,QWORD PTR [rip+0xe826]        # 11670 <s_bss>
    2e4a:	48 8b 05 ef e5 00 00 	mov    rax,QWORD PTR [rip+0xe5ef]        # 11440 <rax>
    2e51:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    2e55:	48 89 10             	mov    QWORD PTR [rax],rdx
    2e58:	48 8b 05 59 e6 00 00 	mov    rax,QWORD PTR [rip+0xe659]        # 114b8 <rdx>
    2e5f:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2e62:	48 8b 05 4f e6 00 00 	mov    rax,QWORD PTR [rip+0xe64f]        # 114b8 <rdx>
    2e69:	48 83 ea 02          	sub    rdx,0x2
    2e6d:	48 89 10             	mov    QWORD PTR [rax],rdx
    2e70:	48 8b 05 41 e6 00 00 	mov    rax,QWORD PTR [rip+0xe641]        # 114b8 <rdx>
    2e77:	48 8b 15 c2 e5 00 00 	mov    rdx,QWORD PTR [rip+0xe5c2]        # 11440 <rax>
    2e7e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2e81:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2e84:	48 89 02             	mov    QWORD PTR [rdx],rax
    2e87:	48 8b 15 e2 e7 00 00 	mov    rdx,QWORD PTR [rip+0xe7e2]        # 11670 <s_bss>
    2e8e:	48 8b 05 23 e6 00 00 	mov    rax,QWORD PTR [rip+0xe623]        # 114b8 <rdx>
    2e95:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    2e99:	48 89 10             	mov    QWORD PTR [rax],rdx
    2e9c:	48 8b 15 cd e7 00 00 	mov    rdx,QWORD PTR [rip+0xe7cd]        # 11670 <s_bss>
    2ea3:	48 8b 05 96 e5 00 00 	mov    rax,QWORD PTR [rip+0xe596]        # 11440 <rax>
    2eaa:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    2eb1:	48 89 10             	mov    QWORD PTR [rax],rdx
    2eb4:	48 8b 05 fd e5 00 00 	mov    rax,QWORD PTR [rip+0xe5fd]        # 114b8 <rdx>
    2ebb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2ebe:	48 89 c2             	mov    rdx,rax
    2ec1:	48 8b 05 f0 e5 00 00 	mov    rax,QWORD PTR [rip+0xe5f0]        # 114b8 <rdx>
    2ec8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2ecb:	48 89 10             	mov    QWORD PTR [rax],rdx
    2ece:	48 8b 05 e3 e5 00 00 	mov    rax,QWORD PTR [rip+0xe5e3]        # 114b8 <rdx>
    2ed5:	48 8b 15 64 e5 00 00 	mov    rdx,QWORD PTR [rip+0xe564]        # 11440 <rax>
    2edc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2edf:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2ee2:	48 89 02             	mov    QWORD PTR [rdx],rax
    2ee5:	e8 dc f9 ff ff       	call   28c6 <fib_rec>
    2eea:	48 8b 15 7f e7 00 00 	mov    rdx,QWORD PTR [rip+0xe77f]        # 11670 <s_bss>
    2ef1:	48 8b 05 48 e5 00 00 	mov    rax,QWORD PTR [rip+0xe548]        # 11440 <rax>
    2ef8:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    2efc:	48 89 10             	mov    QWORD PTR [rax],rdx
    2eff:	48 8b 05 3a e5 00 00 	mov    rax,QWORD PTR [rip+0xe53a]        # 11440 <rax>
    2f06:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2f09:	48 89 c2             	mov    rdx,rax
    2f0c:	48 8b 05 7d e5 00 00 	mov    rax,QWORD PTR [rip+0xe57d]        # 11490 <rcx>
    2f13:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2f16:	48 89 10             	mov    QWORD PTR [rax],rdx
    2f19:	48 8b 15 50 e7 00 00 	mov    rdx,QWORD PTR [rip+0xe750]        # 11670 <s_bss>
    2f20:	48 8b 05 19 e5 00 00 	mov    rax,QWORD PTR [rip+0xe519]        # 11440 <rax>
    2f27:	48 8b 52 48          	mov    rdx,QWORD PTR [rdx+0x48]
    2f2b:	48 89 10             	mov    QWORD PTR [rax],rdx
    2f2e:	48 8b 05 0b e5 00 00 	mov    rax,QWORD PTR [rip+0xe50b]        # 11440 <rax>
    2f35:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2f38:	48 89 c2             	mov    rdx,rax
    2f3b:	48 8b 05 76 e5 00 00 	mov    rax,QWORD PTR [rip+0xe576]        # 114b8 <rdx>
    2f42:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2f45:	48 89 10             	mov    QWORD PTR [rax],rdx
    2f48:	48 8b 15 21 e7 00 00 	mov    rdx,QWORD PTR [rip+0xe721]        # 11670 <s_bss>
    2f4f:	48 8b 05 ea e4 00 00 	mov    rax,QWORD PTR [rip+0xe4ea]        # 11440 <rax>
    2f56:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    2f5a:	48 89 10             	mov    QWORD PTR [rax],rdx
    2f5d:	48 8b 05 54 e5 00 00 	mov    rax,QWORD PTR [rip+0xe554]        # 114b8 <rdx>
    2f64:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    2f67:	48 8b 05 22 e5 00 00 	mov    rax,QWORD PTR [rip+0xe522]        # 11490 <rcx>
    2f6e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2f71:	48 8b 05 40 e5 00 00 	mov    rax,QWORD PTR [rip+0xe540]        # 114b8 <rdx>
    2f78:	48 01 ca             	add    rdx,rcx
    2f7b:	48 89 10             	mov    QWORD PTR [rax],rdx
    2f7e:	48 8b 05 33 e5 00 00 	mov    rax,QWORD PTR [rip+0xe533]        # 114b8 <rdx>
    2f85:	48 8b 15 b4 e4 00 00 	mov    rdx,QWORD PTR [rip+0xe4b4]        # 11440 <rax>
    2f8c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2f8f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2f92:	48 89 02             	mov    QWORD PTR [rdx],rax
    2f95:	e9 a5 00 00 00       	jmp    303f <fib_rec+0x779>
    2f9a:	90                   	nop
    2f9b:	48 8b 15 ce e6 00 00 	mov    rdx,QWORD PTR [rip+0xe6ce]        # 11670 <s_bss>
    2fa2:	48 8b 05 97 e4 00 00 	mov    rax,QWORD PTR [rip+0xe497]        # 11440 <rax>
    2fa9:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    2fb0:	48 89 10             	mov    QWORD PTR [rax],rdx
    2fb3:	48 8b 05 86 e4 00 00 	mov    rax,QWORD PTR [rip+0xe486]        # 11440 <rax>
    2fba:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2fbd:	48 89 c2             	mov    rdx,rax
    2fc0:	48 8b 05 79 e4 00 00 	mov    rax,QWORD PTR [rip+0xe479]        # 11440 <rax>
    2fc7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2fca:	48 89 10             	mov    QWORD PTR [rax],rdx
    2fcd:	48 8b 05 6c e4 00 00 	mov    rax,QWORD PTR [rip+0xe46c]        # 11440 <rax>
    2fd4:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2fd7:	48 8b 05 62 e4 00 00 	mov    rax,QWORD PTR [rip+0xe462]        # 11440 <rax>
    2fde:	48 83 ea 18          	sub    rdx,0x18
    2fe2:	48 89 10             	mov    QWORD PTR [rax],rdx
    2fe5:	48 8b 15 54 e4 00 00 	mov    rdx,QWORD PTR [rip+0xe454]        # 11440 <rax>
    2fec:	48 8b 05 c5 e4 00 00 	mov    rax,QWORD PTR [rip+0xe4c5]        # 114b8 <rdx>
    2ff3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2ff6:	48 89 10             	mov    QWORD PTR [rax],rdx
    2ff9:	48 8b 15 70 e6 00 00 	mov    rdx,QWORD PTR [rip+0xe670]        # 11670 <s_bss>
    3000:	48 8b 05 39 e4 00 00 	mov    rax,QWORD PTR [rip+0xe439]        # 11440 <rax>
    3007:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    300b:	48 89 10             	mov    QWORD PTR [rax],rdx
    300e:	48 8b 05 a3 e4 00 00 	mov    rax,QWORD PTR [rip+0xe4a3]        # 114b8 <rdx>
    3015:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3018:	48 89 c2             	mov    rdx,rax
    301b:	48 8b 05 96 e4 00 00 	mov    rax,QWORD PTR [rip+0xe496]        # 114b8 <rdx>
    3022:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3025:	48 89 10             	mov    QWORD PTR [rax],rdx
    3028:	48 8b 05 89 e4 00 00 	mov    rax,QWORD PTR [rip+0xe489]        # 114b8 <rdx>
    302f:	48 8b 15 0a e4 00 00 	mov    rdx,QWORD PTR [rip+0xe40a]        # 11440 <rax>
    3036:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3039:	48 8b 00             	mov    rax,QWORD PTR [rax]
    303c:	48 89 02             	mov    QWORD PTR [rdx],rax
    303f:	48 8b 15 2a e6 00 00 	mov    rdx,QWORD PTR [rip+0xe62a]        # 11670 <s_bss>
    3046:	48 8b 05 f3 e3 00 00 	mov    rax,QWORD PTR [rip+0xe3f3]        # 11440 <rax>
    304d:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    3054:	48 89 10             	mov    QWORD PTR [rax],rdx
    3057:	48 8b 05 e2 e3 00 00 	mov    rax,QWORD PTR [rip+0xe3e2]        # 11440 <rax>
    305e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3061:	48 89 c2             	mov    rdx,rax
    3064:	48 8b 05 d5 e3 00 00 	mov    rax,QWORD PTR [rip+0xe3d5]        # 11440 <rax>
    306b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    306e:	48 89 10             	mov    QWORD PTR [rax],rdx
    3071:	48 8b 05 c8 e3 00 00 	mov    rax,QWORD PTR [rip+0xe3c8]        # 11440 <rax>
    3078:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    307b:	48 8b 05 be e3 00 00 	mov    rax,QWORD PTR [rip+0xe3be]        # 11440 <rax>
    3082:	48 83 ea 08          	sub    rdx,0x8
    3086:	48 89 10             	mov    QWORD PTR [rax],rdx
    3089:	48 8b 15 b0 e3 00 00 	mov    rdx,QWORD PTR [rip+0xe3b0]        # 11440 <rax>
    3090:	48 8b 05 21 e4 00 00 	mov    rax,QWORD PTR [rip+0xe421]        # 114b8 <rdx>
    3097:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    309a:	48 89 10             	mov    QWORD PTR [rax],rdx
    309d:	48 8b 15 cc e5 00 00 	mov    rdx,QWORD PTR [rip+0xe5cc]        # 11670 <s_bss>
    30a4:	48 8b 05 95 e3 00 00 	mov    rax,QWORD PTR [rip+0xe395]        # 11440 <rax>
    30ab:	48 8b 52 48          	mov    rdx,QWORD PTR [rdx+0x48]
    30af:	48 89 10             	mov    QWORD PTR [rax],rdx
    30b2:	48 8b 05 ff e3 00 00 	mov    rax,QWORD PTR [rip+0xe3ff]        # 114b8 <rdx>
    30b9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    30bc:	48 89 c2             	mov    rdx,rax
    30bf:	48 8b 05 f2 e3 00 00 	mov    rax,QWORD PTR [rip+0xe3f2]        # 114b8 <rdx>
    30c6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    30c9:	48 89 10             	mov    QWORD PTR [rax],rdx
    30cc:	48 8b 05 e5 e3 00 00 	mov    rax,QWORD PTR [rip+0xe3e5]        # 114b8 <rdx>
    30d3:	48 8b 15 66 e3 00 00 	mov    rdx,QWORD PTR [rip+0xe366]        # 11440 <rax>
    30da:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    30dd:	48 8b 00             	mov    rax,QWORD PTR [rax]
    30e0:	48 89 02             	mov    QWORD PTR [rdx],rax
    30e3:	48 8b 15 86 e5 00 00 	mov    rdx,QWORD PTR [rip+0xe586]        # 11670 <s_bss>
    30ea:	48 8b 05 c7 e3 00 00 	mov    rax,QWORD PTR [rip+0xe3c7]        # 114b8 <rdx>
    30f1:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    30f8:	48 89 10             	mov    QWORD PTR [rax],rdx
    30fb:	48 8b 15 6e e5 00 00 	mov    rdx,QWORD PTR [rip+0xe56e]        # 11670 <s_bss>
    3102:	48 8b 05 37 e3 00 00 	mov    rax,QWORD PTR [rip+0xe337]        # 11440 <rax>
    3109:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    3110:	48 89 10             	mov    QWORD PTR [rax],rdx
    3113:	48 8b 05 9e e3 00 00 	mov    rax,QWORD PTR [rip+0xe39e]        # 114b8 <rdx>
    311a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    311d:	48 89 c2             	mov    rdx,rax
    3120:	48 8b 05 91 e3 00 00 	mov    rax,QWORD PTR [rip+0xe391]        # 114b8 <rdx>
    3127:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    312a:	48 89 10             	mov    QWORD PTR [rax],rdx
    312d:	48 8b 05 84 e3 00 00 	mov    rax,QWORD PTR [rip+0xe384]        # 114b8 <rdx>
    3134:	48 8b 15 05 e3 00 00 	mov    rdx,QWORD PTR [rip+0xe305]        # 11440 <rax>
    313b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    313e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3141:	48 89 02             	mov    QWORD PTR [rdx],rax
    3144:	48 8b 15 25 e5 00 00 	mov    rdx,QWORD PTR [rip+0xe525]        # 11670 <s_bss>
    314b:	48 8b 05 16 e3 00 00 	mov    rax,QWORD PTR [rip+0xe316]        # 11468 <rbx>
    3152:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    3159:	48 89 10             	mov    QWORD PTR [rax],rdx
    315c:	e8 47 f5 ff ff       	call   26a8 <pop_u64_>
    3161:	48 8b 05 d8 e2 00 00 	mov    rax,QWORD PTR [rip+0xe2d8]        # 11440 <rax>
    3168:	48 8b 15 f9 e2 00 00 	mov    rdx,QWORD PTR [rip+0xe2f9]        # 11468 <rbx>
    316f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3172:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3175:	48 89 02             	mov    QWORD PTR [rdx],rax
    3178:	48 8b 05 a1 e3 00 00 	mov    rax,QWORD PTR [rip+0xe3a1]        # 11520 <rbp>
    317f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3182:	48 83 e8 08          	sub    rax,0x8
    3186:	48 89 c2             	mov    rdx,rax
    3189:	48 8b 05 d8 e2 00 00 	mov    rax,QWORD PTR [rip+0xe2d8]        # 11468 <rbx>
    3190:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3193:	48 89 10             	mov    QWORD PTR [rax],rdx
    3196:	48 8b 15 83 e3 00 00 	mov    rdx,QWORD PTR [rip+0xe383]        # 11520 <rbp>
    319d:	48 8b 05 9c e3 00 00 	mov    rax,QWORD PTR [rip+0xe39c]        # 11540 <rsp>
    31a4:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    31a7:	48 89 10             	mov    QWORD PTR [rax],rdx
    31aa:	48 8b 1d 6f e3 00 00 	mov    rbx,QWORD PTR [rip+0xe36f]        # 11520 <rbp>
    31b1:	e8 84 e4 ff ff       	call   163a <pop_u64>
    31b6:	48 89 03             	mov    QWORD PTR [rbx],rax
    31b9:	90                   	nop
    31ba:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    31be:	c9                   	leave  
    31bf:	c3                   	ret    

00000000000031c0 <fib_tbl_static>:
    31c0:	f3 0f 1e fa          	endbr64 
    31c4:	55                   	push   rbp
    31c5:	48 89 e5             	mov    rbp,rsp
    31c8:	53                   	push   rbx
    31c9:	48 83 ec 08          	sub    rsp,0x8
    31cd:	48 8b 05 4c e3 00 00 	mov    rax,QWORD PTR [rip+0xe34c]        # 11520 <rbp>
    31d4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    31d7:	48 89 c7             	mov    rdi,rax
    31da:	e8 24 e4 ff ff       	call   1603 <push_u64>
    31df:	48 8b 15 5a e3 00 00 	mov    rdx,QWORD PTR [rip+0xe35a]        # 11540 <rsp>
    31e6:	48 8b 05 33 e3 00 00 	mov    rax,QWORD PTR [rip+0xe333]        # 11520 <rbp>
    31ed:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    31f0:	48 89 10             	mov    QWORD PTR [rax],rdx
    31f3:	48 8b 05 6e e2 00 00 	mov    rax,QWORD PTR [rip+0xe26e]        # 11468 <rbx>
    31fa:	48 8b 00             	mov    rax,QWORD PTR [rax]
    31fd:	48 89 c7             	mov    rdi,rax
    3200:	e8 fe e3 ff ff       	call   1603 <push_u64>
    3205:	48 8b 05 34 e3 00 00 	mov    rax,QWORD PTR [rip+0xe334]        # 11540 <rsp>
    320c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    320f:	48 8b 05 2a e3 00 00 	mov    rax,QWORD PTR [rip+0xe32a]        # 11540 <rsp>
    3216:	48 83 ea 08          	sub    rdx,0x8
    321a:	48 89 10             	mov    QWORD PTR [rax],rdx
    321d:	48 8b 15 4c e4 00 00 	mov    rdx,QWORD PTR [rip+0xe44c]        # 11670 <s_bss>
    3224:	48 8b 05 15 e2 00 00 	mov    rax,QWORD PTR [rip+0xe215]        # 11440 <rax>
    322b:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    3232:	48 89 10             	mov    QWORD PTR [rax],rdx
    3235:	48 8b 05 04 e2 00 00 	mov    rax,QWORD PTR [rip+0xe204]        # 11440 <rax>
    323c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    323f:	48 89 c2             	mov    rdx,rax
    3242:	48 8b 05 f7 e1 00 00 	mov    rax,QWORD PTR [rip+0xe1f7]        # 11440 <rax>
    3249:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    324c:	48 89 10             	mov    QWORD PTR [rax],rdx
    324f:	48 8b 15 ea e1 00 00 	mov    rdx,QWORD PTR [rip+0xe1ea]        # 11440 <rax>
    3256:	48 8b 05 a3 e2 00 00 	mov    rax,QWORD PTR [rip+0xe2a3]        # 11500 <rdi>
    325d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3260:	48 89 10             	mov    QWORD PTR [rax],rdx
    3263:	e8 ec f2 ff ff       	call   2554 <push_u64_>
    3268:	48 8b 15 01 e4 00 00 	mov    rdx,QWORD PTR [rip+0xe401]        # 11670 <s_bss>
    326f:	48 8b 05 42 e2 00 00 	mov    rax,QWORD PTR [rip+0xe242]        # 114b8 <rdx>
    3276:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    327d:	48 89 10             	mov    QWORD PTR [rax],rdx
    3280:	48 8b 15 e9 e3 00 00 	mov    rdx,QWORD PTR [rip+0xe3e9]        # 11670 <s_bss>
    3287:	48 8b 05 b2 e1 00 00 	mov    rax,QWORD PTR [rip+0xe1b2]        # 11440 <rax>
    328e:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    3295:	48 89 10             	mov    QWORD PTR [rax],rdx
    3298:	48 8b 05 19 e2 00 00 	mov    rax,QWORD PTR [rip+0xe219]        # 114b8 <rdx>
    329f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    32a2:	48 89 c2             	mov    rdx,rax
    32a5:	48 8b 05 0c e2 00 00 	mov    rax,QWORD PTR [rip+0xe20c]        # 114b8 <rdx>
    32ac:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    32af:	48 89 10             	mov    QWORD PTR [rax],rdx
    32b2:	48 8b 05 ff e1 00 00 	mov    rax,QWORD PTR [rip+0xe1ff]        # 114b8 <rdx>
    32b9:	48 8b 15 80 e1 00 00 	mov    rdx,QWORD PTR [rip+0xe180]        # 11440 <rax>
    32c0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    32c3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    32c6:	48 89 02             	mov    QWORD PTR [rdx],rax
    32c9:	48 8b 15 a0 e3 00 00 	mov    rdx,QWORD PTR [rip+0xe3a0]        # 11670 <s_bss>
    32d0:	48 8b 05 69 e1 00 00 	mov    rax,QWORD PTR [rip+0xe169]        # 11440 <rax>
    32d7:	48 8b 52 48          	mov    rdx,QWORD PTR [rdx+0x48]
    32db:	48 89 10             	mov    QWORD PTR [rax],rdx
    32de:	48 8b 05 5b e1 00 00 	mov    rax,QWORD PTR [rip+0xe15b]        # 11440 <rax>
    32e5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    32e8:	48 89 c2             	mov    rdx,rax
    32eb:	48 8b 05 4e e1 00 00 	mov    rax,QWORD PTR [rip+0xe14e]        # 11440 <rax>
    32f2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    32f5:	48 89 10             	mov    QWORD PTR [rax],rdx
    32f8:	48 8b 15 41 e1 00 00 	mov    rdx,QWORD PTR [rip+0xe141]        # 11440 <rax>
    32ff:	48 8b 05 fa e1 00 00 	mov    rax,QWORD PTR [rip+0xe1fa]        # 11500 <rdi>
    3306:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3309:	48 89 10             	mov    QWORD PTR [rax],rdx
    330c:	e8 43 f2 ff ff       	call   2554 <push_u64_>
    3311:	48 8b 15 58 e3 00 00 	mov    rdx,QWORD PTR [rip+0xe358]        # 11670 <s_bss>
    3318:	48 8b 05 21 e1 00 00 	mov    rax,QWORD PTR [rip+0xe121]        # 11440 <rax>
    331f:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    3326:	48 89 10             	mov    QWORD PTR [rax],rdx
    3329:	48 8b 05 10 e1 00 00 	mov    rax,QWORD PTR [rip+0xe110]        # 11440 <rax>
    3330:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3333:	48 89 c2             	mov    rdx,rax
    3336:	48 8b 05 7b e1 00 00 	mov    rax,QWORD PTR [rip+0xe17b]        # 114b8 <rdx>
    333d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3340:	48 89 10             	mov    QWORD PTR [rax],rdx
    3343:	48 8b 15 26 e3 00 00 	mov    rdx,QWORD PTR [rip+0xe326]        # 11670 <s_bss>
    334a:	48 8b 05 ef e0 00 00 	mov    rax,QWORD PTR [rip+0xe0ef]        # 11440 <rax>
    3351:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    3358:	48 89 10             	mov    QWORD PTR [rax],rdx
    335b:	48 8b 05 56 e1 00 00 	mov    rax,QWORD PTR [rip+0xe156]        # 114b8 <rdx>
    3362:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    3365:	48 8b 05 4c e1 00 00 	mov    rax,QWORD PTR [rip+0xe14c]        # 114b8 <rdx>
    336c:	48 83 ea 18          	sub    rdx,0x18
    3370:	48 89 10             	mov    QWORD PTR [rax],rdx
    3373:	48 8b 05 3e e1 00 00 	mov    rax,QWORD PTR [rip+0xe13e]        # 114b8 <rdx>
    337a:	48 8b 15 bf e0 00 00 	mov    rdx,QWORD PTR [rip+0xe0bf]        # 11440 <rax>
    3381:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3384:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3387:	48 89 02             	mov    QWORD PTR [rdx],rax
    338a:	48 8b 15 df e2 00 00 	mov    rdx,QWORD PTR [rip+0xe2df]        # 11670 <s_bss>
    3391:	48 8b 05 a8 e0 00 00 	mov    rax,QWORD PTR [rip+0xe0a8]        # 11440 <rax>
    3398:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    339f:	48 89 10             	mov    QWORD PTR [rax],rdx
    33a2:	48 8b 15 c7 e2 00 00 	mov    rdx,QWORD PTR [rip+0xe2c7]        # 11670 <s_bss>
    33a9:	48 8b 05 08 e1 00 00 	mov    rax,QWORD PTR [rip+0xe108]        # 114b8 <rdx>
    33b0:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    33b7:	48 89 10             	mov    QWORD PTR [rax],rdx
    33ba:	48 8b 05 f7 e0 00 00 	mov    rax,QWORD PTR [rip+0xe0f7]        # 114b8 <rdx>
    33c1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    33c4:	48 89 c2             	mov    rdx,rax
    33c7:	48 8b 05 ea e0 00 00 	mov    rax,QWORD PTR [rip+0xe0ea]        # 114b8 <rdx>
    33ce:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    33d1:	48 89 10             	mov    QWORD PTR [rax],rdx
    33d4:	48 8b 05 dd e0 00 00 	mov    rax,QWORD PTR [rip+0xe0dd]        # 114b8 <rdx>
    33db:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    33de:	48 8b 05 d3 e0 00 00 	mov    rax,QWORD PTR [rip+0xe0d3]        # 114b8 <rdx>
    33e5:	48 83 ea 18          	sub    rdx,0x18
    33e9:	48 89 10             	mov    QWORD PTR [rax],rdx
    33ec:	48 8b 05 4d e0 00 00 	mov    rax,QWORD PTR [rip+0xe04d]        # 11440 <rax>
    33f3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    33f6:	48 89 c2             	mov    rdx,rax
    33f9:	48 8b 05 40 e0 00 00 	mov    rax,QWORD PTR [rip+0xe040]        # 11440 <rax>
    3400:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3403:	48 89 10             	mov    QWORD PTR [rax],rdx
    3406:	48 8b 05 33 e0 00 00 	mov    rax,QWORD PTR [rip+0xe033]        # 11440 <rax>
    340d:	48 8b 15 a4 e0 00 00 	mov    rdx,QWORD PTR [rip+0xe0a4]        # 114b8 <rdx>
    3414:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3417:	48 8b 00             	mov    rax,QWORD PTR [rax]
    341a:	48 89 02             	mov    QWORD PTR [rdx],rax
    341d:	48 8b 15 4c e2 00 00 	mov    rdx,QWORD PTR [rip+0xe24c]        # 11670 <s_bss>
    3424:	48 8b 05 15 e0 00 00 	mov    rax,QWORD PTR [rip+0xe015]        # 11440 <rax>
    342b:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    3432:	48 89 10             	mov    QWORD PTR [rax],rdx
    3435:	48 8b 05 04 e0 00 00 	mov    rax,QWORD PTR [rip+0xe004]        # 11440 <rax>
    343c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    343f:	48 89 c2             	mov    rdx,rax
    3442:	48 8b 05 f7 df 00 00 	mov    rax,QWORD PTR [rip+0xdff7]        # 11440 <rax>
    3449:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    344c:	48 89 10             	mov    QWORD PTR [rax],rdx
    344f:	48 8b 05 ea df 00 00 	mov    rax,QWORD PTR [rip+0xdfea]        # 11440 <rax>
    3456:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    3459:	48 8b 05 e0 df 00 00 	mov    rax,QWORD PTR [rip+0xdfe0]        # 11440 <rax>
    3460:	48 83 ea 18          	sub    rdx,0x18
    3464:	48 89 10             	mov    QWORD PTR [rax],rdx
    3467:	48 8b 05 d2 df 00 00 	mov    rax,QWORD PTR [rip+0xdfd2]        # 11440 <rax>
    346e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3471:	48 89 c2             	mov    rdx,rax
    3474:	48 8b 05 c5 df 00 00 	mov    rax,QWORD PTR [rip+0xdfc5]        # 11440 <rax>
    347b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    347e:	48 89 10             	mov    QWORD PTR [rax],rdx
    3481:	48 8b 05 b8 df 00 00 	mov    rax,QWORD PTR [rip+0xdfb8]        # 11440 <rax>
    3488:	48 8b 00             	mov    rax,QWORD PTR [rax]
    348b:	48 83 f8 01          	cmp    rax,0x1
    348f:	0f 87 a9 00 00 00    	ja     353e <fib_tbl_static+0x37e>
    3495:	48 8b 15 d4 e1 00 00 	mov    rdx,QWORD PTR [rip+0xe1d4]        # 11670 <s_bss>
    349c:	48 8b 05 9d df 00 00 	mov    rax,QWORD PTR [rip+0xdf9d]        # 11440 <rax>
    34a3:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    34aa:	48 89 10             	mov    QWORD PTR [rax],rdx
    34ad:	48 8b 05 8c df 00 00 	mov    rax,QWORD PTR [rip+0xdf8c]        # 11440 <rax>
    34b4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    34b7:	48 89 c2             	mov    rdx,rax
    34ba:	48 8b 05 7f df 00 00 	mov    rax,QWORD PTR [rip+0xdf7f]        # 11440 <rax>
    34c1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    34c4:	48 89 10             	mov    QWORD PTR [rax],rdx
    34c7:	48 8b 05 72 df 00 00 	mov    rax,QWORD PTR [rip+0xdf72]        # 11440 <rax>
    34ce:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    34d1:	48 8b 05 68 df 00 00 	mov    rax,QWORD PTR [rip+0xdf68]        # 11440 <rax>
    34d8:	48 83 ea 18          	sub    rdx,0x18
    34dc:	48 89 10             	mov    QWORD PTR [rax],rdx
    34df:	48 8b 15 5a df 00 00 	mov    rdx,QWORD PTR [rip+0xdf5a]        # 11440 <rax>
    34e6:	48 8b 05 cb df 00 00 	mov    rax,QWORD PTR [rip+0xdfcb]        # 114b8 <rdx>
    34ed:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    34f0:	48 89 10             	mov    QWORD PTR [rax],rdx
    34f3:	48 8b 15 76 e1 00 00 	mov    rdx,QWORD PTR [rip+0xe176]        # 11670 <s_bss>
    34fa:	48 8b 05 3f df 00 00 	mov    rax,QWORD PTR [rip+0xdf3f]        # 11440 <rax>
    3501:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3505:	48 89 10             	mov    QWORD PTR [rax],rdx
    3508:	48 8b 05 a9 df 00 00 	mov    rax,QWORD PTR [rip+0xdfa9]        # 114b8 <rdx>
    350f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3512:	48 89 c2             	mov    rdx,rax
    3515:	48 8b 05 9c df 00 00 	mov    rax,QWORD PTR [rip+0xdf9c]        # 114b8 <rdx>
    351c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    351f:	48 89 10             	mov    QWORD PTR [rax],rdx
    3522:	48 8b 05 8f df 00 00 	mov    rax,QWORD PTR [rip+0xdf8f]        # 114b8 <rdx>
    3529:	48 8b 15 10 df 00 00 	mov    rdx,QWORD PTR [rip+0xdf10]        # 11440 <rax>
    3530:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3533:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3536:	48 89 02             	mov    QWORD PTR [rdx],rax
    3539:	e9 77 0d 00 00       	jmp    42b5 <fib_tbl_static+0x10f5>
    353e:	90                   	nop
    353f:	48 8b 15 2a e1 00 00 	mov    rdx,QWORD PTR [rip+0xe12a]        # 11670 <s_bss>
    3546:	48 8b 05 f3 de 00 00 	mov    rax,QWORD PTR [rip+0xdef3]        # 11440 <rax>
    354d:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    3554:	48 89 10             	mov    QWORD PTR [rax],rdx
    3557:	48 8b 05 e2 de 00 00 	mov    rax,QWORD PTR [rip+0xdee2]        # 11440 <rax>
    355e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3561:	48 89 c2             	mov    rdx,rax
    3564:	48 8b 05 d5 de 00 00 	mov    rax,QWORD PTR [rip+0xded5]        # 11440 <rax>
    356b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    356e:	48 89 10             	mov    QWORD PTR [rax],rdx
    3571:	48 8b 05 c8 de 00 00 	mov    rax,QWORD PTR [rip+0xdec8]        # 11440 <rax>
    3578:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    357b:	48 8b 05 be de 00 00 	mov    rax,QWORD PTR [rip+0xdebe]        # 11440 <rax>
    3582:	48 83 ea 18          	sub    rdx,0x18
    3586:	48 89 10             	mov    QWORD PTR [rax],rdx
    3589:	48 8b 15 b0 de 00 00 	mov    rdx,QWORD PTR [rip+0xdeb0]        # 11440 <rax>
    3590:	48 8b 05 21 df 00 00 	mov    rax,QWORD PTR [rip+0xdf21]        # 114b8 <rdx>
    3597:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    359a:	48 89 10             	mov    QWORD PTR [rax],rdx
    359d:	48 8b 15 cc e0 00 00 	mov    rdx,QWORD PTR [rip+0xe0cc]        # 11670 <s_bss>
    35a4:	48 8b 05 95 de 00 00 	mov    rax,QWORD PTR [rip+0xde95]        # 11440 <rax>
    35ab:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    35af:	48 89 10             	mov    QWORD PTR [rax],rdx
    35b2:	48 8b 05 ff de 00 00 	mov    rax,QWORD PTR [rip+0xdeff]        # 114b8 <rdx>
    35b9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    35bc:	48 89 c2             	mov    rdx,rax
    35bf:	48 8b 05 f2 de 00 00 	mov    rax,QWORD PTR [rip+0xdef2]        # 114b8 <rdx>
    35c6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    35c9:	48 89 10             	mov    QWORD PTR [rax],rdx
    35cc:	48 8b 05 e5 de 00 00 	mov    rax,QWORD PTR [rip+0xdee5]        # 114b8 <rdx>
    35d3:	48 8b 15 66 de 00 00 	mov    rdx,QWORD PTR [rip+0xde66]        # 11440 <rax>
    35da:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    35dd:	48 8b 00             	mov    rax,QWORD PTR [rax]
    35e0:	48 89 02             	mov    QWORD PTR [rdx],rax
    35e3:	48 8b 15 86 e0 00 00 	mov    rdx,QWORD PTR [rip+0xe086]        # 11670 <s_bss>
    35ea:	48 8b 05 4f de 00 00 	mov    rax,QWORD PTR [rip+0xde4f]        # 11440 <rax>
    35f1:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    35f5:	48 89 10             	mov    QWORD PTR [rax],rdx
    35f8:	48 8b 05 41 de 00 00 	mov    rax,QWORD PTR [rip+0xde41]        # 11440 <rax>
    35ff:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3602:	48 89 c2             	mov    rdx,rax
    3605:	48 8b 05 ac de 00 00 	mov    rax,QWORD PTR [rip+0xdeac]        # 114b8 <rdx>
    360c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    360f:	48 89 10             	mov    QWORD PTR [rax],rdx
    3612:	48 8b 15 57 e0 00 00 	mov    rdx,QWORD PTR [rip+0xe057]        # 11670 <s_bss>
    3619:	48 8b 05 20 de 00 00 	mov    rax,QWORD PTR [rip+0xde20]        # 11440 <rax>
    3620:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    3627:	48 89 10             	mov    QWORD PTR [rax],rdx
    362a:	48 8b 05 87 de 00 00 	mov    rax,QWORD PTR [rip+0xde87]        # 114b8 <rdx>
    3631:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    3634:	48 8b 05 7d de 00 00 	mov    rax,QWORD PTR [rip+0xde7d]        # 114b8 <rdx>
    363b:	48 c1 e2 03          	shl    rdx,0x3
    363f:	48 89 10             	mov    QWORD PTR [rax],rdx
    3642:	48 8b 05 6f de 00 00 	mov    rax,QWORD PTR [rip+0xde6f]        # 114b8 <rdx>
    3649:	48 8b 15 f0 dd 00 00 	mov    rdx,QWORD PTR [rip+0xddf0]        # 11440 <rax>
    3650:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3653:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3656:	48 89 02             	mov    QWORD PTR [rdx],rax
    3659:	48 8b 15 10 e0 00 00 	mov    rdx,QWORD PTR [rip+0xe010]        # 11670 <s_bss>
    3660:	48 8b 05 d9 dd 00 00 	mov    rax,QWORD PTR [rip+0xddd9]        # 11440 <rax>
    3667:	48 8b 92 50 02 00 00 	mov    rdx,QWORD PTR [rdx+0x250]
    366e:	48 89 10             	mov    QWORD PTR [rax],rdx
    3671:	48 8b 05 c8 dd 00 00 	mov    rax,QWORD PTR [rip+0xddc8]        # 11440 <rax>
    3678:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    367b:	48 8b 05 36 de 00 00 	mov    rax,QWORD PTR [rip+0xde36]        # 114b8 <rdx>
    3682:	48 83 c2 20          	add    rdx,0x20
    3686:	48 89 10             	mov    QWORD PTR [rax],rdx
    3689:	48 8b 15 e0 df 00 00 	mov    rdx,QWORD PTR [rip+0xdfe0]        # 11670 <s_bss>
    3690:	48 8b 05 a9 dd 00 00 	mov    rax,QWORD PTR [rip+0xdda9]        # 11440 <rax>
    3697:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    369b:	48 89 10             	mov    QWORD PTR [rax],rdx
    369e:	48 8b 05 13 de 00 00 	mov    rax,QWORD PTR [rip+0xde13]        # 114b8 <rdx>
    36a5:	48 8b 15 94 dd 00 00 	mov    rdx,QWORD PTR [rip+0xdd94]        # 11440 <rax>
    36ac:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    36af:	48 8b 00             	mov    rax,QWORD PTR [rax]
    36b2:	48 89 02             	mov    QWORD PTR [rdx],rax
    36b5:	48 8b 15 b4 df 00 00 	mov    rdx,QWORD PTR [rip+0xdfb4]        # 11670 <s_bss>
    36bc:	48 8b 05 7d dd 00 00 	mov    rax,QWORD PTR [rip+0xdd7d]        # 11440 <rax>
    36c3:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    36ca:	48 89 10             	mov    QWORD PTR [rax],rdx
    36cd:	48 8b 05 6c dd 00 00 	mov    rax,QWORD PTR [rip+0xdd6c]        # 11440 <rax>
    36d4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    36d7:	48 89 c2             	mov    rdx,rax
    36da:	48 8b 05 d7 dd 00 00 	mov    rax,QWORD PTR [rip+0xddd7]        # 114b8 <rdx>
    36e1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    36e4:	48 89 10             	mov    QWORD PTR [rax],rdx
    36e7:	48 8b 15 82 df 00 00 	mov    rdx,QWORD PTR [rip+0xdf82]        # 11670 <s_bss>
    36ee:	48 8b 05 4b dd 00 00 	mov    rax,QWORD PTR [rip+0xdd4b]        # 11440 <rax>
    36f5:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    36f9:	48 89 10             	mov    QWORD PTR [rax],rdx
    36fc:	48 8b 05 3d dd 00 00 	mov    rax,QWORD PTR [rip+0xdd3d]        # 11440 <rax>
    3703:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3706:	48 89 c2             	mov    rdx,rax
    3709:	48 8b 05 30 dd 00 00 	mov    rax,QWORD PTR [rip+0xdd30]        # 11440 <rax>
    3710:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3713:	48 89 10             	mov    QWORD PTR [rax],rdx
    3716:	48 8b 05 23 dd 00 00 	mov    rax,QWORD PTR [rip+0xdd23]        # 11440 <rax>
    371d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    3720:	48 8b 05 91 dd 00 00 	mov    rax,QWORD PTR [rip+0xdd91]        # 114b8 <rdx>
    3727:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    372a:	48 8b 05 0f dd 00 00 	mov    rax,QWORD PTR [rip+0xdd0f]        # 11440 <rax>
    3731:	48 01 ca             	add    rdx,rcx
    3734:	48 89 10             	mov    QWORD PTR [rax],rdx
    3737:	48 8b 15 02 dd 00 00 	mov    rdx,QWORD PTR [rip+0xdd02]        # 11440 <rax>
    373e:	48 8b 05 73 dd 00 00 	mov    rax,QWORD PTR [rip+0xdd73]        # 114b8 <rdx>
    3745:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3748:	48 89 10             	mov    QWORD PTR [rax],rdx
    374b:	48 8b 15 1e df 00 00 	mov    rdx,QWORD PTR [rip+0xdf1e]        # 11670 <s_bss>
    3752:	48 8b 05 e7 dc 00 00 	mov    rax,QWORD PTR [rip+0xdce7]        # 11440 <rax>
    3759:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    375d:	48 89 10             	mov    QWORD PTR [rax],rdx
    3760:	48 8b 05 51 dd 00 00 	mov    rax,QWORD PTR [rip+0xdd51]        # 114b8 <rdx>
    3767:	48 8b 00             	mov    rax,QWORD PTR [rax]
    376a:	48 89 c2             	mov    rdx,rax
    376d:	48 8b 05 44 dd 00 00 	mov    rax,QWORD PTR [rip+0xdd44]        # 114b8 <rdx>
    3774:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3777:	48 89 10             	mov    QWORD PTR [rax],rdx
    377a:	48 8b 05 37 dd 00 00 	mov    rax,QWORD PTR [rip+0xdd37]        # 114b8 <rdx>
    3781:	48 8b 15 b8 dc 00 00 	mov    rdx,QWORD PTR [rip+0xdcb8]        # 11440 <rax>
    3788:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    378b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    378e:	48 89 02             	mov    QWORD PTR [rdx],rax
    3791:	48 8b 15 d8 de 00 00 	mov    rdx,QWORD PTR [rip+0xded8]        # 11670 <s_bss>
    3798:	48 8b 05 a1 dc 00 00 	mov    rax,QWORD PTR [rip+0xdca1]        # 11440 <rax>
    379f:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    37a3:	48 89 10             	mov    QWORD PTR [rax],rdx
    37a6:	48 8b 05 93 dc 00 00 	mov    rax,QWORD PTR [rip+0xdc93]        # 11440 <rax>
    37ad:	48 8b 00             	mov    rax,QWORD PTR [rax]
    37b0:	48 89 c2             	mov    rdx,rax
    37b3:	48 8b 05 86 dc 00 00 	mov    rax,QWORD PTR [rip+0xdc86]        # 11440 <rax>
    37ba:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    37bd:	48 89 10             	mov    QWORD PTR [rax],rdx
    37c0:	48 8b 05 79 dc 00 00 	mov    rax,QWORD PTR [rip+0xdc79]        # 11440 <rax>
    37c7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    37ca:	48 85 c0             	test   rax,rax
    37cd:	0f 84 57 02 00 00    	je     3a2a <fib_tbl_static+0x86a>
    37d3:	48 8b 15 96 de 00 00 	mov    rdx,QWORD PTR [rip+0xde96]        # 11670 <s_bss>
    37da:	48 8b 05 5f dc 00 00 	mov    rax,QWORD PTR [rip+0xdc5f]        # 11440 <rax>
    37e1:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    37e8:	48 89 10             	mov    QWORD PTR [rax],rdx
    37eb:	48 8b 05 4e dc 00 00 	mov    rax,QWORD PTR [rip+0xdc4e]        # 11440 <rax>
    37f2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    37f5:	48 89 c2             	mov    rdx,rax
    37f8:	48 8b 05 41 dc 00 00 	mov    rax,QWORD PTR [rip+0xdc41]        # 11440 <rax>
    37ff:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3802:	48 89 10             	mov    QWORD PTR [rax],rdx
    3805:	48 8b 05 34 dc 00 00 	mov    rax,QWORD PTR [rip+0xdc34]        # 11440 <rax>
    380c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    380f:	48 8b 05 2a dc 00 00 	mov    rax,QWORD PTR [rip+0xdc2a]        # 11440 <rax>
    3816:	48 83 ea 18          	sub    rdx,0x18
    381a:	48 89 10             	mov    QWORD PTR [rax],rdx
    381d:	48 8b 15 1c dc 00 00 	mov    rdx,QWORD PTR [rip+0xdc1c]        # 11440 <rax>
    3824:	48 8b 05 8d dc 00 00 	mov    rax,QWORD PTR [rip+0xdc8d]        # 114b8 <rdx>
    382b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    382e:	48 89 10             	mov    QWORD PTR [rax],rdx
    3831:	48 8b 15 38 de 00 00 	mov    rdx,QWORD PTR [rip+0xde38]        # 11670 <s_bss>
    3838:	48 8b 05 01 dc 00 00 	mov    rax,QWORD PTR [rip+0xdc01]        # 11440 <rax>
    383f:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3843:	48 89 10             	mov    QWORD PTR [rax],rdx
    3846:	48 8b 05 6b dc 00 00 	mov    rax,QWORD PTR [rip+0xdc6b]        # 114b8 <rdx>
    384d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3850:	48 89 c2             	mov    rdx,rax
    3853:	48 8b 05 5e dc 00 00 	mov    rax,QWORD PTR [rip+0xdc5e]        # 114b8 <rdx>
    385a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    385d:	48 89 10             	mov    QWORD PTR [rax],rdx
    3860:	48 8b 05 51 dc 00 00 	mov    rax,QWORD PTR [rip+0xdc51]        # 114b8 <rdx>
    3867:	48 8b 15 d2 db 00 00 	mov    rdx,QWORD PTR [rip+0xdbd2]        # 11440 <rax>
    386e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3871:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3874:	48 89 02             	mov    QWORD PTR [rdx],rax
    3877:	48 8b 15 f2 dd 00 00 	mov    rdx,QWORD PTR [rip+0xddf2]        # 11670 <s_bss>
    387e:	48 8b 05 bb db 00 00 	mov    rax,QWORD PTR [rip+0xdbbb]        # 11440 <rax>
    3885:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3889:	48 89 10             	mov    QWORD PTR [rax],rdx
    388c:	48 8b 05 ad db 00 00 	mov    rax,QWORD PTR [rip+0xdbad]        # 11440 <rax>
    3893:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3896:	48 89 c2             	mov    rdx,rax
    3899:	48 8b 05 18 dc 00 00 	mov    rax,QWORD PTR [rip+0xdc18]        # 114b8 <rdx>
    38a0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    38a3:	48 89 10             	mov    QWORD PTR [rax],rdx
    38a6:	48 8b 15 c3 dd 00 00 	mov    rdx,QWORD PTR [rip+0xddc3]        # 11670 <s_bss>
    38ad:	48 8b 05 8c db 00 00 	mov    rax,QWORD PTR [rip+0xdb8c]        # 11440 <rax>
    38b4:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    38bb:	48 89 10             	mov    QWORD PTR [rax],rdx
    38be:	48 8b 05 f3 db 00 00 	mov    rax,QWORD PTR [rip+0xdbf3]        # 114b8 <rdx>
    38c5:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    38c8:	48 8b 05 e9 db 00 00 	mov    rax,QWORD PTR [rip+0xdbe9]        # 114b8 <rdx>
    38cf:	48 c1 e2 03          	shl    rdx,0x3
    38d3:	48 89 10             	mov    QWORD PTR [rax],rdx
    38d6:	48 8b 05 db db 00 00 	mov    rax,QWORD PTR [rip+0xdbdb]        # 114b8 <rdx>
    38dd:	48 8b 15 5c db 00 00 	mov    rdx,QWORD PTR [rip+0xdb5c]        # 11440 <rax>
    38e4:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    38e7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    38ea:	48 89 02             	mov    QWORD PTR [rdx],rax
    38ed:	48 8b 15 7c dd 00 00 	mov    rdx,QWORD PTR [rip+0xdd7c]        # 11670 <s_bss>
    38f4:	48 8b 05 45 db 00 00 	mov    rax,QWORD PTR [rip+0xdb45]        # 11440 <rax>
    38fb:	48 8b 92 50 02 00 00 	mov    rdx,QWORD PTR [rdx+0x250]
    3902:	48 89 10             	mov    QWORD PTR [rax],rdx
    3905:	48 8b 05 34 db 00 00 	mov    rax,QWORD PTR [rip+0xdb34]        # 11440 <rax>
    390c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    390f:	48 8b 05 a2 db 00 00 	mov    rax,QWORD PTR [rip+0xdba2]        # 114b8 <rdx>
    3916:	48 83 c2 20          	add    rdx,0x20
    391a:	48 89 10             	mov    QWORD PTR [rax],rdx
    391d:	48 8b 15 4c dd 00 00 	mov    rdx,QWORD PTR [rip+0xdd4c]        # 11670 <s_bss>
    3924:	48 8b 05 15 db 00 00 	mov    rax,QWORD PTR [rip+0xdb15]        # 11440 <rax>
    392b:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    392f:	48 89 10             	mov    QWORD PTR [rax],rdx
    3932:	48 8b 05 7f db 00 00 	mov    rax,QWORD PTR [rip+0xdb7f]        # 114b8 <rdx>
    3939:	48 8b 15 00 db 00 00 	mov    rdx,QWORD PTR [rip+0xdb00]        # 11440 <rax>
    3940:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3943:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3946:	48 89 02             	mov    QWORD PTR [rdx],rax
    3949:	48 8b 15 20 dd 00 00 	mov    rdx,QWORD PTR [rip+0xdd20]        # 11670 <s_bss>
    3950:	48 8b 05 e9 da 00 00 	mov    rax,QWORD PTR [rip+0xdae9]        # 11440 <rax>
    3957:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    395e:	48 89 10             	mov    QWORD PTR [rax],rdx
    3961:	48 8b 05 d8 da 00 00 	mov    rax,QWORD PTR [rip+0xdad8]        # 11440 <rax>
    3968:	48 8b 00             	mov    rax,QWORD PTR [rax]
    396b:	48 89 c2             	mov    rdx,rax
    396e:	48 8b 05 43 db 00 00 	mov    rax,QWORD PTR [rip+0xdb43]        # 114b8 <rdx>
    3975:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3978:	48 89 10             	mov    QWORD PTR [rax],rdx
    397b:	48 8b 15 ee dc 00 00 	mov    rdx,QWORD PTR [rip+0xdcee]        # 11670 <s_bss>
    3982:	48 8b 05 b7 da 00 00 	mov    rax,QWORD PTR [rip+0xdab7]        # 11440 <rax>
    3989:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    398d:	48 89 10             	mov    QWORD PTR [rax],rdx
    3990:	48 8b 05 a9 da 00 00 	mov    rax,QWORD PTR [rip+0xdaa9]        # 11440 <rax>
    3997:	48 8b 00             	mov    rax,QWORD PTR [rax]
    399a:	48 89 c2             	mov    rdx,rax
    399d:	48 8b 05 9c da 00 00 	mov    rax,QWORD PTR [rip+0xda9c]        # 11440 <rax>
    39a4:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    39a7:	48 89 10             	mov    QWORD PTR [rax],rdx
    39aa:	48 8b 05 8f da 00 00 	mov    rax,QWORD PTR [rip+0xda8f]        # 11440 <rax>
    39b1:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    39b4:	48 8b 05 fd da 00 00 	mov    rax,QWORD PTR [rip+0xdafd]        # 114b8 <rdx>
    39bb:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    39be:	48 8b 05 7b da 00 00 	mov    rax,QWORD PTR [rip+0xda7b]        # 11440 <rax>
    39c5:	48 01 ca             	add    rdx,rcx
    39c8:	48 89 10             	mov    QWORD PTR [rax],rdx
    39cb:	48 8b 15 6e da 00 00 	mov    rdx,QWORD PTR [rip+0xda6e]        # 11440 <rax>
    39d2:	48 8b 05 df da 00 00 	mov    rax,QWORD PTR [rip+0xdadf]        # 114b8 <rdx>
    39d9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    39dc:	48 89 10             	mov    QWORD PTR [rax],rdx
    39df:	48 8b 15 8a dc 00 00 	mov    rdx,QWORD PTR [rip+0xdc8a]        # 11670 <s_bss>
    39e6:	48 8b 05 53 da 00 00 	mov    rax,QWORD PTR [rip+0xda53]        # 11440 <rax>
    39ed:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    39f1:	48 89 10             	mov    QWORD PTR [rax],rdx
    39f4:	48 8b 05 bd da 00 00 	mov    rax,QWORD PTR [rip+0xdabd]        # 114b8 <rdx>
    39fb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    39fe:	48 89 c2             	mov    rdx,rax
    3a01:	48 8b 05 b0 da 00 00 	mov    rax,QWORD PTR [rip+0xdab0]        # 114b8 <rdx>
    3a08:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3a0b:	48 89 10             	mov    QWORD PTR [rax],rdx
    3a0e:	48 8b 05 a3 da 00 00 	mov    rax,QWORD PTR [rip+0xdaa3]        # 114b8 <rdx>
    3a15:	48 8b 15 24 da 00 00 	mov    rdx,QWORD PTR [rip+0xda24]        # 11440 <rax>
    3a1c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3a1f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3a22:	48 89 02             	mov    QWORD PTR [rdx],rax
    3a25:	e9 8b 08 00 00       	jmp    42b5 <fib_tbl_static+0x10f5>
    3a2a:	90                   	nop
    3a2b:	48 8b 15 3e dc 00 00 	mov    rdx,QWORD PTR [rip+0xdc3e]        # 11670 <s_bss>
    3a32:	48 8b 05 07 da 00 00 	mov    rax,QWORD PTR [rip+0xda07]        # 11440 <rax>
    3a39:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    3a40:	48 89 10             	mov    QWORD PTR [rax],rdx
    3a43:	48 8b 05 f6 d9 00 00 	mov    rax,QWORD PTR [rip+0xd9f6]        # 11440 <rax>
    3a4a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3a4d:	48 89 c2             	mov    rdx,rax
    3a50:	48 8b 05 e9 d9 00 00 	mov    rax,QWORD PTR [rip+0xd9e9]        # 11440 <rax>
    3a57:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3a5a:	48 89 10             	mov    QWORD PTR [rax],rdx
    3a5d:	48 8b 05 dc d9 00 00 	mov    rax,QWORD PTR [rip+0xd9dc]        # 11440 <rax>
    3a64:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    3a67:	48 8b 05 d2 d9 00 00 	mov    rax,QWORD PTR [rip+0xd9d2]        # 11440 <rax>
    3a6e:	48 83 ea 18          	sub    rdx,0x18
    3a72:	48 89 10             	mov    QWORD PTR [rax],rdx
    3a75:	48 8b 15 c4 d9 00 00 	mov    rdx,QWORD PTR [rip+0xd9c4]        # 11440 <rax>
    3a7c:	48 8b 05 35 da 00 00 	mov    rax,QWORD PTR [rip+0xda35]        # 114b8 <rdx>
    3a83:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3a86:	48 89 10             	mov    QWORD PTR [rax],rdx
    3a89:	48 8b 15 e0 db 00 00 	mov    rdx,QWORD PTR [rip+0xdbe0]        # 11670 <s_bss>
    3a90:	48 8b 05 a9 d9 00 00 	mov    rax,QWORD PTR [rip+0xd9a9]        # 11440 <rax>
    3a97:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3a9b:	48 89 10             	mov    QWORD PTR [rax],rdx
    3a9e:	48 8b 05 13 da 00 00 	mov    rax,QWORD PTR [rip+0xda13]        # 114b8 <rdx>
    3aa5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3aa8:	48 89 c2             	mov    rdx,rax
    3aab:	48 8b 05 06 da 00 00 	mov    rax,QWORD PTR [rip+0xda06]        # 114b8 <rdx>
    3ab2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3ab5:	48 89 10             	mov    QWORD PTR [rax],rdx
    3ab8:	48 8b 05 f9 d9 00 00 	mov    rax,QWORD PTR [rip+0xd9f9]        # 114b8 <rdx>
    3abf:	48 8b 15 7a d9 00 00 	mov    rdx,QWORD PTR [rip+0xd97a]        # 11440 <rax>
    3ac6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3ac9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3acc:	48 89 02             	mov    QWORD PTR [rdx],rax
    3acf:	48 8b 15 9a db 00 00 	mov    rdx,QWORD PTR [rip+0xdb9a]        # 11670 <s_bss>
    3ad6:	48 8b 05 63 d9 00 00 	mov    rax,QWORD PTR [rip+0xd963]        # 11440 <rax>
    3add:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3ae1:	48 89 10             	mov    QWORD PTR [rax],rdx
    3ae4:	48 8b 05 55 d9 00 00 	mov    rax,QWORD PTR [rip+0xd955]        # 11440 <rax>
    3aeb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3aee:	48 89 c2             	mov    rdx,rax
    3af1:	48 8b 05 c0 d9 00 00 	mov    rax,QWORD PTR [rip+0xd9c0]        # 114b8 <rdx>
    3af8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3afb:	48 89 10             	mov    QWORD PTR [rax],rdx
    3afe:	48 8b 15 6b db 00 00 	mov    rdx,QWORD PTR [rip+0xdb6b]        # 11670 <s_bss>
    3b05:	48 8b 05 34 d9 00 00 	mov    rax,QWORD PTR [rip+0xd934]        # 11440 <rax>
    3b0c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3b10:	48 89 10             	mov    QWORD PTR [rax],rdx
    3b13:	48 8b 05 9e d9 00 00 	mov    rax,QWORD PTR [rip+0xd99e]        # 114b8 <rdx>
    3b1a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    3b1d:	48 8b 05 94 d9 00 00 	mov    rax,QWORD PTR [rip+0xd994]        # 114b8 <rdx>
    3b24:	48 83 ea 01          	sub    rdx,0x1
    3b28:	48 89 10             	mov    QWORD PTR [rax],rdx
    3b2b:	48 8b 05 86 d9 00 00 	mov    rax,QWORD PTR [rip+0xd986]        # 114b8 <rdx>
    3b32:	48 8b 15 07 d9 00 00 	mov    rdx,QWORD PTR [rip+0xd907]        # 11440 <rax>
    3b39:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3b3c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3b3f:	48 89 02             	mov    QWORD PTR [rdx],rax
    3b42:	48 8b 15 27 db 00 00 	mov    rdx,QWORD PTR [rip+0xdb27]        # 11670 <s_bss>
    3b49:	48 8b 05 68 d9 00 00 	mov    rax,QWORD PTR [rip+0xd968]        # 114b8 <rdx>
    3b50:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3b54:	48 89 10             	mov    QWORD PTR [rax],rdx
    3b57:	48 8b 15 12 db 00 00 	mov    rdx,QWORD PTR [rip+0xdb12]        # 11670 <s_bss>
    3b5e:	48 8b 05 db d8 00 00 	mov    rax,QWORD PTR [rip+0xd8db]        # 11440 <rax>
    3b65:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    3b6c:	48 89 10             	mov    QWORD PTR [rax],rdx
    3b6f:	48 8b 05 42 d9 00 00 	mov    rax,QWORD PTR [rip+0xd942]        # 114b8 <rdx>
    3b76:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3b79:	48 89 c2             	mov    rdx,rax
    3b7c:	48 8b 05 35 d9 00 00 	mov    rax,QWORD PTR [rip+0xd935]        # 114b8 <rdx>
    3b83:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3b86:	48 89 10             	mov    QWORD PTR [rax],rdx
    3b89:	48 8b 05 28 d9 00 00 	mov    rax,QWORD PTR [rip+0xd928]        # 114b8 <rdx>
    3b90:	48 8b 15 a9 d8 00 00 	mov    rdx,QWORD PTR [rip+0xd8a9]        # 11440 <rax>
    3b97:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3b9a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3b9d:	48 89 02             	mov    QWORD PTR [rdx],rax
    3ba0:	e8 1b f6 ff ff       	call   31c0 <fib_tbl_static>
    3ba5:	48 8b 15 c4 da 00 00 	mov    rdx,QWORD PTR [rip+0xdac4]        # 11670 <s_bss>
    3bac:	48 8b 05 05 d9 00 00 	mov    rax,QWORD PTR [rip+0xd905]        # 114b8 <rdx>
    3bb3:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3bb7:	48 89 10             	mov    QWORD PTR [rax],rdx
    3bba:	48 8b 15 af da 00 00 	mov    rdx,QWORD PTR [rip+0xdaaf]        # 11670 <s_bss>
    3bc1:	48 8b 05 78 d8 00 00 	mov    rax,QWORD PTR [rip+0xd878]        # 11440 <rax>
    3bc8:	48 8b 52 48          	mov    rdx,QWORD PTR [rdx+0x48]
    3bcc:	48 89 10             	mov    QWORD PTR [rax],rdx
    3bcf:	48 8b 05 e2 d8 00 00 	mov    rax,QWORD PTR [rip+0xd8e2]        # 114b8 <rdx>
    3bd6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3bd9:	48 89 c2             	mov    rdx,rax
    3bdc:	48 8b 05 d5 d8 00 00 	mov    rax,QWORD PTR [rip+0xd8d5]        # 114b8 <rdx>
    3be3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3be6:	48 89 10             	mov    QWORD PTR [rax],rdx
    3be9:	48 8b 05 c8 d8 00 00 	mov    rax,QWORD PTR [rip+0xd8c8]        # 114b8 <rdx>
    3bf0:	48 8b 15 49 d8 00 00 	mov    rdx,QWORD PTR [rip+0xd849]        # 11440 <rax>
    3bf7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3bfa:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3bfd:	48 89 02             	mov    QWORD PTR [rdx],rax
    3c00:	48 8b 15 69 da 00 00 	mov    rdx,QWORD PTR [rip+0xda69]        # 11670 <s_bss>
    3c07:	48 8b 05 32 d8 00 00 	mov    rax,QWORD PTR [rip+0xd832]        # 11440 <rax>
    3c0e:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    3c15:	48 89 10             	mov    QWORD PTR [rax],rdx
    3c18:	48 8b 05 21 d8 00 00 	mov    rax,QWORD PTR [rip+0xd821]        # 11440 <rax>
    3c1f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3c22:	48 89 c2             	mov    rdx,rax
    3c25:	48 8b 05 14 d8 00 00 	mov    rax,QWORD PTR [rip+0xd814]        # 11440 <rax>
    3c2c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3c2f:	48 89 10             	mov    QWORD PTR [rax],rdx
    3c32:	48 8b 05 07 d8 00 00 	mov    rax,QWORD PTR [rip+0xd807]        # 11440 <rax>
    3c39:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    3c3c:	48 8b 05 fd d7 00 00 	mov    rax,QWORD PTR [rip+0xd7fd]        # 11440 <rax>
    3c43:	48 83 ea 18          	sub    rdx,0x18
    3c47:	48 89 10             	mov    QWORD PTR [rax],rdx
    3c4a:	48 8b 15 ef d7 00 00 	mov    rdx,QWORD PTR [rip+0xd7ef]        # 11440 <rax>
    3c51:	48 8b 05 60 d8 00 00 	mov    rax,QWORD PTR [rip+0xd860]        # 114b8 <rdx>
    3c58:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3c5b:	48 89 10             	mov    QWORD PTR [rax],rdx
    3c5e:	48 8b 15 0b da 00 00 	mov    rdx,QWORD PTR [rip+0xda0b]        # 11670 <s_bss>
    3c65:	48 8b 05 d4 d7 00 00 	mov    rax,QWORD PTR [rip+0xd7d4]        # 11440 <rax>
    3c6c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3c70:	48 89 10             	mov    QWORD PTR [rax],rdx
    3c73:	48 8b 05 3e d8 00 00 	mov    rax,QWORD PTR [rip+0xd83e]        # 114b8 <rdx>
    3c7a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3c7d:	48 89 c2             	mov    rdx,rax
    3c80:	48 8b 05 31 d8 00 00 	mov    rax,QWORD PTR [rip+0xd831]        # 114b8 <rdx>
    3c87:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3c8a:	48 89 10             	mov    QWORD PTR [rax],rdx
    3c8d:	48 8b 05 24 d8 00 00 	mov    rax,QWORD PTR [rip+0xd824]        # 114b8 <rdx>
    3c94:	48 8b 15 a5 d7 00 00 	mov    rdx,QWORD PTR [rip+0xd7a5]        # 11440 <rax>
    3c9b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3c9e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3ca1:	48 89 02             	mov    QWORD PTR [rdx],rax
    3ca4:	48 8b 15 c5 d9 00 00 	mov    rdx,QWORD PTR [rip+0xd9c5]        # 11670 <s_bss>
    3cab:	48 8b 05 8e d7 00 00 	mov    rax,QWORD PTR [rip+0xd78e]        # 11440 <rax>
    3cb2:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3cb6:	48 89 10             	mov    QWORD PTR [rax],rdx
    3cb9:	48 8b 05 80 d7 00 00 	mov    rax,QWORD PTR [rip+0xd780]        # 11440 <rax>
    3cc0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3cc3:	48 89 c2             	mov    rdx,rax
    3cc6:	48 8b 05 eb d7 00 00 	mov    rax,QWORD PTR [rip+0xd7eb]        # 114b8 <rdx>
    3ccd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3cd0:	48 89 10             	mov    QWORD PTR [rax],rdx
    3cd3:	48 8b 15 96 d9 00 00 	mov    rdx,QWORD PTR [rip+0xd996]        # 11670 <s_bss>
    3cda:	48 8b 05 5f d7 00 00 	mov    rax,QWORD PTR [rip+0xd75f]        # 11440 <rax>
    3ce1:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3ce5:	48 89 10             	mov    QWORD PTR [rax],rdx
    3ce8:	48 8b 05 c9 d7 00 00 	mov    rax,QWORD PTR [rip+0xd7c9]        # 114b8 <rdx>
    3cef:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    3cf2:	48 8b 05 bf d7 00 00 	mov    rax,QWORD PTR [rip+0xd7bf]        # 114b8 <rdx>
    3cf9:	48 83 ea 02          	sub    rdx,0x2
    3cfd:	48 89 10             	mov    QWORD PTR [rax],rdx
    3d00:	48 8b 05 b1 d7 00 00 	mov    rax,QWORD PTR [rip+0xd7b1]        # 114b8 <rdx>
    3d07:	48 8b 15 32 d7 00 00 	mov    rdx,QWORD PTR [rip+0xd732]        # 11440 <rax>
    3d0e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3d11:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3d14:	48 89 02             	mov    QWORD PTR [rdx],rax
    3d17:	48 8b 15 52 d9 00 00 	mov    rdx,QWORD PTR [rip+0xd952]        # 11670 <s_bss>
    3d1e:	48 8b 05 93 d7 00 00 	mov    rax,QWORD PTR [rip+0xd793]        # 114b8 <rdx>
    3d25:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3d29:	48 89 10             	mov    QWORD PTR [rax],rdx
    3d2c:	48 8b 15 3d d9 00 00 	mov    rdx,QWORD PTR [rip+0xd93d]        # 11670 <s_bss>
    3d33:	48 8b 05 06 d7 00 00 	mov    rax,QWORD PTR [rip+0xd706]        # 11440 <rax>
    3d3a:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    3d41:	48 89 10             	mov    QWORD PTR [rax],rdx
    3d44:	48 8b 05 6d d7 00 00 	mov    rax,QWORD PTR [rip+0xd76d]        # 114b8 <rdx>
    3d4b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3d4e:	48 89 c2             	mov    rdx,rax
    3d51:	48 8b 05 60 d7 00 00 	mov    rax,QWORD PTR [rip+0xd760]        # 114b8 <rdx>
    3d58:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3d5b:	48 89 10             	mov    QWORD PTR [rax],rdx
    3d5e:	48 8b 05 53 d7 00 00 	mov    rax,QWORD PTR [rip+0xd753]        # 114b8 <rdx>
    3d65:	48 8b 15 d4 d6 00 00 	mov    rdx,QWORD PTR [rip+0xd6d4]        # 11440 <rax>
    3d6c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3d6f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3d72:	48 89 02             	mov    QWORD PTR [rdx],rax
    3d75:	e8 46 f4 ff ff       	call   31c0 <fib_tbl_static>
    3d7a:	48 8b 15 ef d8 00 00 	mov    rdx,QWORD PTR [rip+0xd8ef]        # 11670 <s_bss>
    3d81:	48 8b 05 b8 d6 00 00 	mov    rax,QWORD PTR [rip+0xd6b8]        # 11440 <rax>
    3d88:	48 8b 52 48          	mov    rdx,QWORD PTR [rdx+0x48]
    3d8c:	48 89 10             	mov    QWORD PTR [rax],rdx
    3d8f:	48 8b 05 aa d6 00 00 	mov    rax,QWORD PTR [rip+0xd6aa]        # 11440 <rax>
    3d96:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3d99:	48 89 c2             	mov    rdx,rax
    3d9c:	48 8b 05 ed d6 00 00 	mov    rax,QWORD PTR [rip+0xd6ed]        # 11490 <rcx>
    3da3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3da6:	48 89 10             	mov    QWORD PTR [rax],rdx
    3da9:	48 8b 15 c0 d8 00 00 	mov    rdx,QWORD PTR [rip+0xd8c0]        # 11670 <s_bss>
    3db0:	48 8b 05 89 d6 00 00 	mov    rax,QWORD PTR [rip+0xd689]        # 11440 <rax>
    3db7:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3dbb:	48 89 10             	mov    QWORD PTR [rax],rdx
    3dbe:	48 8b 05 7b d6 00 00 	mov    rax,QWORD PTR [rip+0xd67b]        # 11440 <rax>
    3dc5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3dc8:	48 89 c2             	mov    rdx,rax
    3dcb:	48 8b 05 e6 d6 00 00 	mov    rax,QWORD PTR [rip+0xd6e6]        # 114b8 <rdx>
    3dd2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3dd5:	48 89 10             	mov    QWORD PTR [rax],rdx
    3dd8:	48 8b 15 91 d8 00 00 	mov    rdx,QWORD PTR [rip+0xd891]        # 11670 <s_bss>
    3ddf:	48 8b 05 5a d6 00 00 	mov    rax,QWORD PTR [rip+0xd65a]        # 11440 <rax>
    3de6:	48 8b 52 70          	mov    rdx,QWORD PTR [rdx+0x70]
    3dea:	48 89 10             	mov    QWORD PTR [rax],rdx
    3ded:	48 8b 05 c4 d6 00 00 	mov    rax,QWORD PTR [rip+0xd6c4]        # 114b8 <rdx>
    3df4:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    3df7:	48 8b 05 92 d6 00 00 	mov    rax,QWORD PTR [rip+0xd692]        # 11490 <rcx>
    3dfe:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    3e01:	48 8b 05 b0 d6 00 00 	mov    rax,QWORD PTR [rip+0xd6b0]        # 114b8 <rdx>
    3e08:	48 01 ca             	add    rdx,rcx
    3e0b:	48 89 10             	mov    QWORD PTR [rax],rdx
    3e0e:	48 8b 05 a3 d6 00 00 	mov    rax,QWORD PTR [rip+0xd6a3]        # 114b8 <rdx>
    3e15:	48 8b 15 24 d6 00 00 	mov    rdx,QWORD PTR [rip+0xd624]        # 11440 <rax>
    3e1c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3e1f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3e22:	48 89 02             	mov    QWORD PTR [rdx],rax
    3e25:	48 8b 15 44 d8 00 00 	mov    rdx,QWORD PTR [rip+0xd844]        # 11670 <s_bss>
    3e2c:	48 8b 05 0d d6 00 00 	mov    rax,QWORD PTR [rip+0xd60d]        # 11440 <rax>
    3e33:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    3e3a:	48 89 10             	mov    QWORD PTR [rax],rdx
    3e3d:	48 8b 05 fc d5 00 00 	mov    rax,QWORD PTR [rip+0xd5fc]        # 11440 <rax>
    3e44:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3e47:	48 89 c2             	mov    rdx,rax
    3e4a:	48 8b 05 ef d5 00 00 	mov    rax,QWORD PTR [rip+0xd5ef]        # 11440 <rax>
    3e51:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3e54:	48 89 10             	mov    QWORD PTR [rax],rdx
    3e57:	48 8b 05 e2 d5 00 00 	mov    rax,QWORD PTR [rip+0xd5e2]        # 11440 <rax>
    3e5e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    3e61:	48 8b 05 d8 d5 00 00 	mov    rax,QWORD PTR [rip+0xd5d8]        # 11440 <rax>
    3e68:	48 83 ea 18          	sub    rdx,0x18
    3e6c:	48 89 10             	mov    QWORD PTR [rax],rdx
    3e6f:	48 8b 15 ca d5 00 00 	mov    rdx,QWORD PTR [rip+0xd5ca]        # 11440 <rax>
    3e76:	48 8b 05 3b d6 00 00 	mov    rax,QWORD PTR [rip+0xd63b]        # 114b8 <rdx>
    3e7d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3e80:	48 89 10             	mov    QWORD PTR [rax],rdx
    3e83:	48 8b 15 e6 d7 00 00 	mov    rdx,QWORD PTR [rip+0xd7e6]        # 11670 <s_bss>
    3e8a:	48 8b 05 af d5 00 00 	mov    rax,QWORD PTR [rip+0xd5af]        # 11440 <rax>
    3e91:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3e95:	48 89 10             	mov    QWORD PTR [rax],rdx
    3e98:	48 8b 05 19 d6 00 00 	mov    rax,QWORD PTR [rip+0xd619]        # 114b8 <rdx>
    3e9f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3ea2:	48 89 c2             	mov    rdx,rax
    3ea5:	48 8b 05 0c d6 00 00 	mov    rax,QWORD PTR [rip+0xd60c]        # 114b8 <rdx>
    3eac:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3eaf:	48 89 10             	mov    QWORD PTR [rax],rdx
    3eb2:	48 8b 05 ff d5 00 00 	mov    rax,QWORD PTR [rip+0xd5ff]        # 114b8 <rdx>
    3eb9:	48 8b 15 80 d5 00 00 	mov    rdx,QWORD PTR [rip+0xd580]        # 11440 <rax>
    3ec0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3ec3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3ec6:	48 89 02             	mov    QWORD PTR [rdx],rax
    3ec9:	48 8b 15 a0 d7 00 00 	mov    rdx,QWORD PTR [rip+0xd7a0]        # 11670 <s_bss>
    3ed0:	48 8b 05 69 d5 00 00 	mov    rax,QWORD PTR [rip+0xd569]        # 11440 <rax>
    3ed7:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3edb:	48 89 10             	mov    QWORD PTR [rax],rdx
    3ede:	48 8b 05 5b d5 00 00 	mov    rax,QWORD PTR [rip+0xd55b]        # 11440 <rax>
    3ee5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3ee8:	48 89 c2             	mov    rdx,rax
    3eeb:	48 8b 05 c6 d5 00 00 	mov    rax,QWORD PTR [rip+0xd5c6]        # 114b8 <rdx>
    3ef2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3ef5:	48 89 10             	mov    QWORD PTR [rax],rdx
    3ef8:	48 8b 15 71 d7 00 00 	mov    rdx,QWORD PTR [rip+0xd771]        # 11670 <s_bss>
    3eff:	48 8b 05 3a d5 00 00 	mov    rax,QWORD PTR [rip+0xd53a]        # 11440 <rax>
    3f06:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    3f0d:	48 89 10             	mov    QWORD PTR [rax],rdx
    3f10:	48 8b 05 a1 d5 00 00 	mov    rax,QWORD PTR [rip+0xd5a1]        # 114b8 <rdx>
    3f17:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    3f1a:	48 8b 05 97 d5 00 00 	mov    rax,QWORD PTR [rip+0xd597]        # 114b8 <rdx>
    3f21:	48 c1 e2 03          	shl    rdx,0x3
    3f25:	48 89 10             	mov    QWORD PTR [rax],rdx
    3f28:	48 8b 05 89 d5 00 00 	mov    rax,QWORD PTR [rip+0xd589]        # 114b8 <rdx>
    3f2f:	48 8b 15 0a d5 00 00 	mov    rdx,QWORD PTR [rip+0xd50a]        # 11440 <rax>
    3f36:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3f39:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3f3c:	48 89 02             	mov    QWORD PTR [rdx],rax
    3f3f:	48 8b 15 2a d7 00 00 	mov    rdx,QWORD PTR [rip+0xd72a]        # 11670 <s_bss>
    3f46:	48 8b 05 f3 d4 00 00 	mov    rax,QWORD PTR [rip+0xd4f3]        # 11440 <rax>
    3f4d:	48 8b 92 50 02 00 00 	mov    rdx,QWORD PTR [rdx+0x250]
    3f54:	48 89 10             	mov    QWORD PTR [rax],rdx
    3f57:	48 8b 05 e2 d4 00 00 	mov    rax,QWORD PTR [rip+0xd4e2]        # 11440 <rax>
    3f5e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    3f61:	48 8b 05 50 d5 00 00 	mov    rax,QWORD PTR [rip+0xd550]        # 114b8 <rdx>
    3f68:	48 83 c2 20          	add    rdx,0x20
    3f6c:	48 89 10             	mov    QWORD PTR [rax],rdx
    3f6f:	48 8b 15 fa d6 00 00 	mov    rdx,QWORD PTR [rip+0xd6fa]        # 11670 <s_bss>
    3f76:	48 8b 05 c3 d4 00 00 	mov    rax,QWORD PTR [rip+0xd4c3]        # 11440 <rax>
    3f7d:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3f81:	48 89 10             	mov    QWORD PTR [rax],rdx
    3f84:	48 8b 05 2d d5 00 00 	mov    rax,QWORD PTR [rip+0xd52d]        # 114b8 <rdx>
    3f8b:	48 8b 15 ae d4 00 00 	mov    rdx,QWORD PTR [rip+0xd4ae]        # 11440 <rax>
    3f92:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3f95:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3f98:	48 89 02             	mov    QWORD PTR [rdx],rax
    3f9b:	48 8b 15 ce d6 00 00 	mov    rdx,QWORD PTR [rip+0xd6ce]        # 11670 <s_bss>
    3fa2:	48 8b 05 97 d4 00 00 	mov    rax,QWORD PTR [rip+0xd497]        # 11440 <rax>
    3fa9:	48 8b 52 70          	mov    rdx,QWORD PTR [rdx+0x70]
    3fad:	48 89 10             	mov    QWORD PTR [rax],rdx
    3fb0:	48 8b 15 b9 d6 00 00 	mov    rdx,QWORD PTR [rip+0xd6b9]        # 11670 <s_bss>
    3fb7:	48 8b 05 fa d4 00 00 	mov    rax,QWORD PTR [rip+0xd4fa]        # 114b8 <rdx>
    3fbe:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    3fc5:	48 89 10             	mov    QWORD PTR [rax],rdx
    3fc8:	48 8b 05 e9 d4 00 00 	mov    rax,QWORD PTR [rip+0xd4e9]        # 114b8 <rdx>
    3fcf:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3fd2:	48 89 c2             	mov    rdx,rax
    3fd5:	48 8b 05 b4 d4 00 00 	mov    rax,QWORD PTR [rip+0xd4b4]        # 11490 <rcx>
    3fdc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3fdf:	48 89 10             	mov    QWORD PTR [rax],rdx
    3fe2:	48 8b 15 87 d6 00 00 	mov    rdx,QWORD PTR [rip+0xd687]        # 11670 <s_bss>
    3fe9:	48 8b 05 c8 d4 00 00 	mov    rax,QWORD PTR [rip+0xd4c8]        # 114b8 <rdx>
    3ff0:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    3ff4:	48 89 10             	mov    QWORD PTR [rax],rdx
    3ff7:	48 8b 05 ba d4 00 00 	mov    rax,QWORD PTR [rip+0xd4ba]        # 114b8 <rdx>
    3ffe:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4001:	48 89 c2             	mov    rdx,rax
    4004:	48 8b 05 ad d4 00 00 	mov    rax,QWORD PTR [rip+0xd4ad]        # 114b8 <rdx>
    400b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    400e:	48 89 10             	mov    QWORD PTR [rax],rdx
    4011:	48 8b 05 a0 d4 00 00 	mov    rax,QWORD PTR [rip+0xd4a0]        # 114b8 <rdx>
    4018:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    401b:	48 8b 05 6e d4 00 00 	mov    rax,QWORD PTR [rip+0xd46e]        # 11490 <rcx>
    4022:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    4025:	48 8b 05 8c d4 00 00 	mov    rax,QWORD PTR [rip+0xd48c]        # 114b8 <rdx>
    402c:	48 01 ca             	add    rdx,rcx
    402f:	48 89 10             	mov    QWORD PTR [rax],rdx
    4032:	48 8b 05 07 d4 00 00 	mov    rax,QWORD PTR [rip+0xd407]        # 11440 <rax>
    4039:	48 8b 00             	mov    rax,QWORD PTR [rax]
    403c:	48 89 c2             	mov    rdx,rax
    403f:	48 8b 05 fa d3 00 00 	mov    rax,QWORD PTR [rip+0xd3fa]        # 11440 <rax>
    4046:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4049:	48 89 10             	mov    QWORD PTR [rax],rdx
    404c:	48 8b 05 ed d3 00 00 	mov    rax,QWORD PTR [rip+0xd3ed]        # 11440 <rax>
    4053:	48 8b 15 5e d4 00 00 	mov    rdx,QWORD PTR [rip+0xd45e]        # 114b8 <rdx>
    405a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    405d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4060:	48 89 02             	mov    QWORD PTR [rdx],rax
    4063:	48 8b 15 06 d6 00 00 	mov    rdx,QWORD PTR [rip+0xd606]        # 11670 <s_bss>
    406a:	48 8b 05 cf d3 00 00 	mov    rax,QWORD PTR [rip+0xd3cf]        # 11440 <rax>
    4071:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    4078:	48 89 10             	mov    QWORD PTR [rax],rdx
    407b:	48 8b 05 be d3 00 00 	mov    rax,QWORD PTR [rip+0xd3be]        # 11440 <rax>
    4082:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4085:	48 89 c2             	mov    rdx,rax
    4088:	48 8b 05 b1 d3 00 00 	mov    rax,QWORD PTR [rip+0xd3b1]        # 11440 <rax>
    408f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4092:	48 89 10             	mov    QWORD PTR [rax],rdx
    4095:	48 8b 05 a4 d3 00 00 	mov    rax,QWORD PTR [rip+0xd3a4]        # 11440 <rax>
    409c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    409f:	48 8b 05 9a d3 00 00 	mov    rax,QWORD PTR [rip+0xd39a]        # 11440 <rax>
    40a6:	48 83 ea 18          	sub    rdx,0x18
    40aa:	48 89 10             	mov    QWORD PTR [rax],rdx
    40ad:	48 8b 15 8c d3 00 00 	mov    rdx,QWORD PTR [rip+0xd38c]        # 11440 <rax>
    40b4:	48 8b 05 fd d3 00 00 	mov    rax,QWORD PTR [rip+0xd3fd]        # 114b8 <rdx>
    40bb:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    40be:	48 89 10             	mov    QWORD PTR [rax],rdx
    40c1:	48 8b 15 a8 d5 00 00 	mov    rdx,QWORD PTR [rip+0xd5a8]        # 11670 <s_bss>
    40c8:	48 8b 05 71 d3 00 00 	mov    rax,QWORD PTR [rip+0xd371]        # 11440 <rax>
    40cf:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    40d3:	48 89 10             	mov    QWORD PTR [rax],rdx
    40d6:	48 8b 05 db d3 00 00 	mov    rax,QWORD PTR [rip+0xd3db]        # 114b8 <rdx>
    40dd:	48 8b 00             	mov    rax,QWORD PTR [rax]
    40e0:	48 89 c2             	mov    rdx,rax
    40e3:	48 8b 05 ce d3 00 00 	mov    rax,QWORD PTR [rip+0xd3ce]        # 114b8 <rdx>
    40ea:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    40ed:	48 89 10             	mov    QWORD PTR [rax],rdx
    40f0:	48 8b 05 c1 d3 00 00 	mov    rax,QWORD PTR [rip+0xd3c1]        # 114b8 <rdx>
    40f7:	48 8b 15 42 d3 00 00 	mov    rdx,QWORD PTR [rip+0xd342]        # 11440 <rax>
    40fe:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4101:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4104:	48 89 02             	mov    QWORD PTR [rdx],rax
    4107:	48 8b 15 62 d5 00 00 	mov    rdx,QWORD PTR [rip+0xd562]        # 11670 <s_bss>
    410e:	48 8b 05 2b d3 00 00 	mov    rax,QWORD PTR [rip+0xd32b]        # 11440 <rax>
    4115:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    4119:	48 89 10             	mov    QWORD PTR [rax],rdx
    411c:	48 8b 05 1d d3 00 00 	mov    rax,QWORD PTR [rip+0xd31d]        # 11440 <rax>
    4123:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4126:	48 89 c2             	mov    rdx,rax
    4129:	48 8b 05 88 d3 00 00 	mov    rax,QWORD PTR [rip+0xd388]        # 114b8 <rdx>
    4130:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4133:	48 89 10             	mov    QWORD PTR [rax],rdx
    4136:	48 8b 15 33 d5 00 00 	mov    rdx,QWORD PTR [rip+0xd533]        # 11670 <s_bss>
    413d:	48 8b 05 fc d2 00 00 	mov    rax,QWORD PTR [rip+0xd2fc]        # 11440 <rax>
    4144:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    414b:	48 89 10             	mov    QWORD PTR [rax],rdx
    414e:	48 8b 05 63 d3 00 00 	mov    rax,QWORD PTR [rip+0xd363]        # 114b8 <rdx>
    4155:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    4158:	48 8b 05 59 d3 00 00 	mov    rax,QWORD PTR [rip+0xd359]        # 114b8 <rdx>
    415f:	48 c1 e2 03          	shl    rdx,0x3
    4163:	48 89 10             	mov    QWORD PTR [rax],rdx
    4166:	48 8b 05 4b d3 00 00 	mov    rax,QWORD PTR [rip+0xd34b]        # 114b8 <rdx>
    416d:	48 8b 15 cc d2 00 00 	mov    rdx,QWORD PTR [rip+0xd2cc]        # 11440 <rax>
    4174:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4177:	48 8b 00             	mov    rax,QWORD PTR [rax]
    417a:	48 89 02             	mov    QWORD PTR [rdx],rax
    417d:	48 8b 15 ec d4 00 00 	mov    rdx,QWORD PTR [rip+0xd4ec]        # 11670 <s_bss>
    4184:	48 8b 05 b5 d2 00 00 	mov    rax,QWORD PTR [rip+0xd2b5]        # 11440 <rax>
    418b:	48 8b 92 50 02 00 00 	mov    rdx,QWORD PTR [rdx+0x250]
    4192:	48 89 10             	mov    QWORD PTR [rax],rdx
    4195:	48 8b 05 a4 d2 00 00 	mov    rax,QWORD PTR [rip+0xd2a4]        # 11440 <rax>
    419c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    419f:	48 8b 05 12 d3 00 00 	mov    rax,QWORD PTR [rip+0xd312]        # 114b8 <rdx>
    41a6:	48 83 c2 20          	add    rdx,0x20
    41aa:	48 89 10             	mov    QWORD PTR [rax],rdx
    41ad:	48 8b 15 bc d4 00 00 	mov    rdx,QWORD PTR [rip+0xd4bc]        # 11670 <s_bss>
    41b4:	48 8b 05 85 d2 00 00 	mov    rax,QWORD PTR [rip+0xd285]        # 11440 <rax>
    41bb:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    41bf:	48 89 10             	mov    QWORD PTR [rax],rdx
    41c2:	48 8b 05 ef d2 00 00 	mov    rax,QWORD PTR [rip+0xd2ef]        # 114b8 <rdx>
    41c9:	48 8b 15 70 d2 00 00 	mov    rdx,QWORD PTR [rip+0xd270]        # 11440 <rax>
    41d0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    41d3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    41d6:	48 89 02             	mov    QWORD PTR [rdx],rax
    41d9:	48 8b 15 90 d4 00 00 	mov    rdx,QWORD PTR [rip+0xd490]        # 11670 <s_bss>
    41e0:	48 8b 05 59 d2 00 00 	mov    rax,QWORD PTR [rip+0xd259]        # 11440 <rax>
    41e7:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    41ee:	48 89 10             	mov    QWORD PTR [rax],rdx
    41f1:	48 8b 05 48 d2 00 00 	mov    rax,QWORD PTR [rip+0xd248]        # 11440 <rax>
    41f8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    41fb:	48 89 c2             	mov    rdx,rax
    41fe:	48 8b 05 b3 d2 00 00 	mov    rax,QWORD PTR [rip+0xd2b3]        # 114b8 <rdx>
    4205:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4208:	48 89 10             	mov    QWORD PTR [rax],rdx
    420b:	48 8b 15 5e d4 00 00 	mov    rdx,QWORD PTR [rip+0xd45e]        # 11670 <s_bss>
    4212:	48 8b 05 27 d2 00 00 	mov    rax,QWORD PTR [rip+0xd227]        # 11440 <rax>
    4219:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    421d:	48 89 10             	mov    QWORD PTR [rax],rdx
    4220:	48 8b 05 19 d2 00 00 	mov    rax,QWORD PTR [rip+0xd219]        # 11440 <rax>
    4227:	48 8b 00             	mov    rax,QWORD PTR [rax]
    422a:	48 89 c2             	mov    rdx,rax
    422d:	48 8b 05 0c d2 00 00 	mov    rax,QWORD PTR [rip+0xd20c]        # 11440 <rax>
    4234:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4237:	48 89 10             	mov    QWORD PTR [rax],rdx
    423a:	48 8b 05 ff d1 00 00 	mov    rax,QWORD PTR [rip+0xd1ff]        # 11440 <rax>
    4241:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    4244:	48 8b 05 6d d2 00 00 	mov    rax,QWORD PTR [rip+0xd26d]        # 114b8 <rdx>
    424b:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    424e:	48 8b 05 eb d1 00 00 	mov    rax,QWORD PTR [rip+0xd1eb]        # 11440 <rax>
    4255:	48 01 ca             	add    rdx,rcx
    4258:	48 89 10             	mov    QWORD PTR [rax],rdx
    425b:	48 8b 15 de d1 00 00 	mov    rdx,QWORD PTR [rip+0xd1de]        # 11440 <rax>
    4262:	48 8b 05 4f d2 00 00 	mov    rax,QWORD PTR [rip+0xd24f]        # 114b8 <rdx>
    4269:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    426c:	48 89 10             	mov    QWORD PTR [rax],rdx
    426f:	48 8b 15 fa d3 00 00 	mov    rdx,QWORD PTR [rip+0xd3fa]        # 11670 <s_bss>
    4276:	48 8b 05 c3 d1 00 00 	mov    rax,QWORD PTR [rip+0xd1c3]        # 11440 <rax>
    427d:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    4281:	48 89 10             	mov    QWORD PTR [rax],rdx
    4284:	48 8b 05 2d d2 00 00 	mov    rax,QWORD PTR [rip+0xd22d]        # 114b8 <rdx>
    428b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    428e:	48 89 c2             	mov    rdx,rax
    4291:	48 8b 05 20 d2 00 00 	mov    rax,QWORD PTR [rip+0xd220]        # 114b8 <rdx>
    4298:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    429b:	48 89 10             	mov    QWORD PTR [rax],rdx
    429e:	48 8b 05 13 d2 00 00 	mov    rax,QWORD PTR [rip+0xd213]        # 114b8 <rdx>
    42a5:	48 8b 15 94 d1 00 00 	mov    rdx,QWORD PTR [rip+0xd194]        # 11440 <rax>
    42ac:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    42af:	48 8b 00             	mov    rax,QWORD PTR [rax]
    42b2:	48 89 02             	mov    QWORD PTR [rdx],rax
    42b5:	48 8b 15 b4 d3 00 00 	mov    rdx,QWORD PTR [rip+0xd3b4]        # 11670 <s_bss>
    42bc:	48 8b 05 7d d1 00 00 	mov    rax,QWORD PTR [rip+0xd17d]        # 11440 <rax>
    42c3:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    42ca:	48 89 10             	mov    QWORD PTR [rax],rdx
    42cd:	48 8b 05 6c d1 00 00 	mov    rax,QWORD PTR [rip+0xd16c]        # 11440 <rax>
    42d4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    42d7:	48 89 c2             	mov    rdx,rax
    42da:	48 8b 05 5f d1 00 00 	mov    rax,QWORD PTR [rip+0xd15f]        # 11440 <rax>
    42e1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    42e4:	48 89 10             	mov    QWORD PTR [rax],rdx
    42e7:	48 8b 05 52 d1 00 00 	mov    rax,QWORD PTR [rip+0xd152]        # 11440 <rax>
    42ee:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    42f1:	48 8b 05 48 d1 00 00 	mov    rax,QWORD PTR [rip+0xd148]        # 11440 <rax>
    42f8:	48 83 ea 08          	sub    rdx,0x8
    42fc:	48 89 10             	mov    QWORD PTR [rax],rdx
    42ff:	48 8b 15 3a d1 00 00 	mov    rdx,QWORD PTR [rip+0xd13a]        # 11440 <rax>
    4306:	48 8b 05 ab d1 00 00 	mov    rax,QWORD PTR [rip+0xd1ab]        # 114b8 <rdx>
    430d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4310:	48 89 10             	mov    QWORD PTR [rax],rdx
    4313:	48 8b 15 56 d3 00 00 	mov    rdx,QWORD PTR [rip+0xd356]        # 11670 <s_bss>
    431a:	48 8b 05 1f d1 00 00 	mov    rax,QWORD PTR [rip+0xd11f]        # 11440 <rax>
    4321:	48 8b 52 48          	mov    rdx,QWORD PTR [rdx+0x48]
    4325:	48 89 10             	mov    QWORD PTR [rax],rdx
    4328:	48 8b 05 89 d1 00 00 	mov    rax,QWORD PTR [rip+0xd189]        # 114b8 <rdx>
    432f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4332:	48 89 c2             	mov    rdx,rax
    4335:	48 8b 05 7c d1 00 00 	mov    rax,QWORD PTR [rip+0xd17c]        # 114b8 <rdx>
    433c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    433f:	48 89 10             	mov    QWORD PTR [rax],rdx
    4342:	48 8b 05 6f d1 00 00 	mov    rax,QWORD PTR [rip+0xd16f]        # 114b8 <rdx>
    4349:	48 8b 15 f0 d0 00 00 	mov    rdx,QWORD PTR [rip+0xd0f0]        # 11440 <rax>
    4350:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4353:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4356:	48 89 02             	mov    QWORD PTR [rdx],rax
    4359:	48 8b 15 10 d3 00 00 	mov    rdx,QWORD PTR [rip+0xd310]        # 11670 <s_bss>
    4360:	48 8b 05 51 d1 00 00 	mov    rax,QWORD PTR [rip+0xd151]        # 114b8 <rdx>
    4367:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    436e:	48 89 10             	mov    QWORD PTR [rax],rdx
    4371:	48 8b 15 f8 d2 00 00 	mov    rdx,QWORD PTR [rip+0xd2f8]        # 11670 <s_bss>
    4378:	48 8b 05 c1 d0 00 00 	mov    rax,QWORD PTR [rip+0xd0c1]        # 11440 <rax>
    437f:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    4386:	48 89 10             	mov    QWORD PTR [rax],rdx
    4389:	48 8b 05 28 d1 00 00 	mov    rax,QWORD PTR [rip+0xd128]        # 114b8 <rdx>
    4390:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4393:	48 89 c2             	mov    rdx,rax
    4396:	48 8b 05 1b d1 00 00 	mov    rax,QWORD PTR [rip+0xd11b]        # 114b8 <rdx>
    439d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    43a0:	48 89 10             	mov    QWORD PTR [rax],rdx
    43a3:	48 8b 05 0e d1 00 00 	mov    rax,QWORD PTR [rip+0xd10e]        # 114b8 <rdx>
    43aa:	48 8b 15 8f d0 00 00 	mov    rdx,QWORD PTR [rip+0xd08f]        # 11440 <rax>
    43b1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    43b4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    43b7:	48 89 02             	mov    QWORD PTR [rdx],rax
    43ba:	48 8b 15 af d2 00 00 	mov    rdx,QWORD PTR [rip+0xd2af]        # 11670 <s_bss>
    43c1:	48 8b 05 a0 d0 00 00 	mov    rax,QWORD PTR [rip+0xd0a0]        # 11468 <rbx>
    43c8:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    43cf:	48 89 10             	mov    QWORD PTR [rax],rdx
    43d2:	e8 d1 e2 ff ff       	call   26a8 <pop_u64_>
    43d7:	48 8b 05 62 d0 00 00 	mov    rax,QWORD PTR [rip+0xd062]        # 11440 <rax>
    43de:	48 8b 15 83 d0 00 00 	mov    rdx,QWORD PTR [rip+0xd083]        # 11468 <rbx>
    43e5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    43e8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    43eb:	48 89 02             	mov    QWORD PTR [rdx],rax
    43ee:	48 8b 05 2b d1 00 00 	mov    rax,QWORD PTR [rip+0xd12b]        # 11520 <rbp>
    43f5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    43f8:	48 83 e8 08          	sub    rax,0x8
    43fc:	48 89 c2             	mov    rdx,rax
    43ff:	48 8b 05 62 d0 00 00 	mov    rax,QWORD PTR [rip+0xd062]        # 11468 <rbx>
    4406:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4409:	48 89 10             	mov    QWORD PTR [rax],rdx
    440c:	48 8b 15 0d d1 00 00 	mov    rdx,QWORD PTR [rip+0xd10d]        # 11520 <rbp>
    4413:	48 8b 05 26 d1 00 00 	mov    rax,QWORD PTR [rip+0xd126]        # 11540 <rsp>
    441a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    441d:	48 89 10             	mov    QWORD PTR [rax],rdx
    4420:	48 8b 1d f9 d0 00 00 	mov    rbx,QWORD PTR [rip+0xd0f9]        # 11520 <rbp>
    4427:	e8 0e d2 ff ff       	call   163a <pop_u64>
    442c:	48 89 03             	mov    QWORD PTR [rbx],rax
    442f:	90                   	nop
    4430:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    4434:	c9                   	leave  
    4435:	c3                   	ret    

0000000000004436 <fib_tbl_dyn_>:
    4436:	f3 0f 1e fa          	endbr64 
    443a:	55                   	push   rbp
    443b:	48 89 e5             	mov    rbp,rsp
    443e:	53                   	push   rbx
    443f:	48 83 ec 08          	sub    rsp,0x8
    4443:	48 8b 05 d6 d0 00 00 	mov    rax,QWORD PTR [rip+0xd0d6]        # 11520 <rbp>
    444a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    444d:	48 89 c7             	mov    rdi,rax
    4450:	e8 ae d1 ff ff       	call   1603 <push_u64>
    4455:	48 8b 15 e4 d0 00 00 	mov    rdx,QWORD PTR [rip+0xd0e4]        # 11540 <rsp>
    445c:	48 8b 05 bd d0 00 00 	mov    rax,QWORD PTR [rip+0xd0bd]        # 11520 <rbp>
    4463:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4466:	48 89 10             	mov    QWORD PTR [rax],rdx
    4469:	48 8b 05 f8 cf 00 00 	mov    rax,QWORD PTR [rip+0xcff8]        # 11468 <rbx>
    4470:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4473:	48 89 c7             	mov    rdi,rax
    4476:	e8 88 d1 ff ff       	call   1603 <push_u64>
    447b:	48 8b 05 be d0 00 00 	mov    rax,QWORD PTR [rip+0xd0be]        # 11540 <rsp>
    4482:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    4485:	48 8b 05 b4 d0 00 00 	mov    rax,QWORD PTR [rip+0xd0b4]        # 11540 <rsp>
    448c:	48 83 ea 08          	sub    rdx,0x8
    4490:	48 89 10             	mov    QWORD PTR [rax],rdx
    4493:	48 8b 15 d6 d1 00 00 	mov    rdx,QWORD PTR [rip+0xd1d6]        # 11670 <s_bss>
    449a:	48 8b 05 9f cf 00 00 	mov    rax,QWORD PTR [rip+0xcf9f]        # 11440 <rax>
    44a1:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    44a8:	48 89 10             	mov    QWORD PTR [rax],rdx
    44ab:	48 8b 05 8e cf 00 00 	mov    rax,QWORD PTR [rip+0xcf8e]        # 11440 <rax>
    44b2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    44b5:	48 89 c2             	mov    rdx,rax
    44b8:	48 8b 05 81 cf 00 00 	mov    rax,QWORD PTR [rip+0xcf81]        # 11440 <rax>
    44bf:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    44c2:	48 89 10             	mov    QWORD PTR [rax],rdx
    44c5:	48 8b 15 74 cf 00 00 	mov    rdx,QWORD PTR [rip+0xcf74]        # 11440 <rax>
    44cc:	48 8b 05 2d d0 00 00 	mov    rax,QWORD PTR [rip+0xd02d]        # 11500 <rdi>
    44d3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    44d6:	48 89 10             	mov    QWORD PTR [rax],rdx
    44d9:	e8 76 e0 ff ff       	call   2554 <push_u64_>
    44de:	48 8b 15 8b d1 00 00 	mov    rdx,QWORD PTR [rip+0xd18b]        # 11670 <s_bss>
    44e5:	48 8b 05 cc cf 00 00 	mov    rax,QWORD PTR [rip+0xcfcc]        # 114b8 <rdx>
    44ec:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    44f3:	48 89 10             	mov    QWORD PTR [rax],rdx
    44f6:	48 8b 15 73 d1 00 00 	mov    rdx,QWORD PTR [rip+0xd173]        # 11670 <s_bss>
    44fd:	48 8b 05 3c cf 00 00 	mov    rax,QWORD PTR [rip+0xcf3c]        # 11440 <rax>
    4504:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    450b:	48 89 10             	mov    QWORD PTR [rax],rdx
    450e:	48 8b 05 a3 cf 00 00 	mov    rax,QWORD PTR [rip+0xcfa3]        # 114b8 <rdx>
    4515:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4518:	48 89 c2             	mov    rdx,rax
    451b:	48 8b 05 96 cf 00 00 	mov    rax,QWORD PTR [rip+0xcf96]        # 114b8 <rdx>
    4522:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4525:	48 89 10             	mov    QWORD PTR [rax],rdx
    4528:	48 8b 05 89 cf 00 00 	mov    rax,QWORD PTR [rip+0xcf89]        # 114b8 <rdx>
    452f:	48 8b 15 0a cf 00 00 	mov    rdx,QWORD PTR [rip+0xcf0a]        # 11440 <rax>
    4536:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4539:	48 8b 00             	mov    rax,QWORD PTR [rax]
    453c:	48 89 02             	mov    QWORD PTR [rdx],rax
    453f:	48 8b 15 2a d1 00 00 	mov    rdx,QWORD PTR [rip+0xd12a]        # 11670 <s_bss>
    4546:	48 8b 05 f3 ce 00 00 	mov    rax,QWORD PTR [rip+0xcef3]        # 11440 <rax>
    454d:	48 8b 52 48          	mov    rdx,QWORD PTR [rdx+0x48]
    4551:	48 89 10             	mov    QWORD PTR [rax],rdx
    4554:	48 8b 05 e5 ce 00 00 	mov    rax,QWORD PTR [rip+0xcee5]        # 11440 <rax>
    455b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    455e:	48 89 c2             	mov    rdx,rax
    4561:	48 8b 05 d8 ce 00 00 	mov    rax,QWORD PTR [rip+0xced8]        # 11440 <rax>
    4568:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    456b:	48 89 10             	mov    QWORD PTR [rax],rdx
    456e:	48 8b 15 cb ce 00 00 	mov    rdx,QWORD PTR [rip+0xcecb]        # 11440 <rax>
    4575:	48 8b 05 84 cf 00 00 	mov    rax,QWORD PTR [rip+0xcf84]        # 11500 <rdi>
    457c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    457f:	48 89 10             	mov    QWORD PTR [rax],rdx
    4582:	e8 cd df ff ff       	call   2554 <push_u64_>
    4587:	48 8b 15 e2 d0 00 00 	mov    rdx,QWORD PTR [rip+0xd0e2]        # 11670 <s_bss>
    458e:	48 8b 05 ab ce 00 00 	mov    rax,QWORD PTR [rip+0xceab]        # 11440 <rax>
    4595:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    459c:	48 89 10             	mov    QWORD PTR [rax],rdx
    459f:	48 8b 05 9a ce 00 00 	mov    rax,QWORD PTR [rip+0xce9a]        # 11440 <rax>
    45a6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    45a9:	48 89 c2             	mov    rdx,rax
    45ac:	48 8b 05 05 cf 00 00 	mov    rax,QWORD PTR [rip+0xcf05]        # 114b8 <rdx>
    45b3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    45b6:	48 89 10             	mov    QWORD PTR [rax],rdx
    45b9:	48 8b 15 b0 d0 00 00 	mov    rdx,QWORD PTR [rip+0xd0b0]        # 11670 <s_bss>
    45c0:	48 8b 05 79 ce 00 00 	mov    rax,QWORD PTR [rip+0xce79]        # 11440 <rax>
    45c7:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    45ce:	48 89 10             	mov    QWORD PTR [rax],rdx
    45d1:	48 8b 05 e0 ce 00 00 	mov    rax,QWORD PTR [rip+0xcee0]        # 114b8 <rdx>
    45d8:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    45db:	48 8b 05 d6 ce 00 00 	mov    rax,QWORD PTR [rip+0xced6]        # 114b8 <rdx>
    45e2:	48 83 ea 18          	sub    rdx,0x18
    45e6:	48 89 10             	mov    QWORD PTR [rax],rdx
    45e9:	48 8b 05 c8 ce 00 00 	mov    rax,QWORD PTR [rip+0xcec8]        # 114b8 <rdx>
    45f0:	48 8b 15 49 ce 00 00 	mov    rdx,QWORD PTR [rip+0xce49]        # 11440 <rax>
    45f7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    45fa:	48 8b 00             	mov    rax,QWORD PTR [rax]
    45fd:	48 89 02             	mov    QWORD PTR [rdx],rax
    4600:	48 8b 15 69 d0 00 00 	mov    rdx,QWORD PTR [rip+0xd069]        # 11670 <s_bss>
    4607:	48 8b 05 32 ce 00 00 	mov    rax,QWORD PTR [rip+0xce32]        # 11440 <rax>
    460e:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    4615:	48 89 10             	mov    QWORD PTR [rax],rdx
    4618:	48 8b 15 51 d0 00 00 	mov    rdx,QWORD PTR [rip+0xd051]        # 11670 <s_bss>
    461f:	48 8b 05 92 ce 00 00 	mov    rax,QWORD PTR [rip+0xce92]        # 114b8 <rdx>
    4626:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    462d:	48 89 10             	mov    QWORD PTR [rax],rdx
    4630:	48 8b 05 81 ce 00 00 	mov    rax,QWORD PTR [rip+0xce81]        # 114b8 <rdx>
    4637:	48 8b 00             	mov    rax,QWORD PTR [rax]
    463a:	48 89 c2             	mov    rdx,rax
    463d:	48 8b 05 74 ce 00 00 	mov    rax,QWORD PTR [rip+0xce74]        # 114b8 <rdx>
    4644:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4647:	48 89 10             	mov    QWORD PTR [rax],rdx
    464a:	48 8b 05 67 ce 00 00 	mov    rax,QWORD PTR [rip+0xce67]        # 114b8 <rdx>
    4651:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    4654:	48 8b 05 5d ce 00 00 	mov    rax,QWORD PTR [rip+0xce5d]        # 114b8 <rdx>
    465b:	48 83 ea 18          	sub    rdx,0x18
    465f:	48 89 10             	mov    QWORD PTR [rax],rdx
    4662:	48 8b 05 d7 cd 00 00 	mov    rax,QWORD PTR [rip+0xcdd7]        # 11440 <rax>
    4669:	48 8b 00             	mov    rax,QWORD PTR [rax]
    466c:	48 89 c2             	mov    rdx,rax
    466f:	48 8b 05 ca cd 00 00 	mov    rax,QWORD PTR [rip+0xcdca]        # 11440 <rax>
    4676:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4679:	48 89 10             	mov    QWORD PTR [rax],rdx
    467c:	48 8b 05 bd cd 00 00 	mov    rax,QWORD PTR [rip+0xcdbd]        # 11440 <rax>
    4683:	48 8b 15 2e ce 00 00 	mov    rdx,QWORD PTR [rip+0xce2e]        # 114b8 <rdx>
    468a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    468d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4690:	48 89 02             	mov    QWORD PTR [rdx],rax
    4693:	48 8b 15 d6 cf 00 00 	mov    rdx,QWORD PTR [rip+0xcfd6]        # 11670 <s_bss>
    469a:	48 8b 05 9f cd 00 00 	mov    rax,QWORD PTR [rip+0xcd9f]        # 11440 <rax>
    46a1:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    46a8:	48 89 10             	mov    QWORD PTR [rax],rdx
    46ab:	48 8b 15 be cf 00 00 	mov    rdx,QWORD PTR [rip+0xcfbe]        # 11670 <s_bss>
    46b2:	48 8b 05 ff cd 00 00 	mov    rax,QWORD PTR [rip+0xcdff]        # 114b8 <rdx>
    46b9:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    46c0:	48 89 10             	mov    QWORD PTR [rax],rdx
    46c3:	48 8b 05 ee cd 00 00 	mov    rax,QWORD PTR [rip+0xcdee]        # 114b8 <rdx>
    46ca:	48 8b 00             	mov    rax,QWORD PTR [rax]
    46cd:	48 89 c2             	mov    rdx,rax
    46d0:	48 8b 05 e1 cd 00 00 	mov    rax,QWORD PTR [rip+0xcde1]        # 114b8 <rdx>
    46d7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    46da:	48 89 10             	mov    QWORD PTR [rax],rdx
    46dd:	48 8b 05 d4 cd 00 00 	mov    rax,QWORD PTR [rip+0xcdd4]        # 114b8 <rdx>
    46e4:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    46e7:	48 8b 05 ca cd 00 00 	mov    rax,QWORD PTR [rip+0xcdca]        # 114b8 <rdx>
    46ee:	48 83 ea 20          	sub    rdx,0x20
    46f2:	48 89 10             	mov    QWORD PTR [rax],rdx
    46f5:	48 8b 05 44 cd 00 00 	mov    rax,QWORD PTR [rip+0xcd44]        # 11440 <rax>
    46fc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    46ff:	48 89 c2             	mov    rdx,rax
    4702:	48 8b 05 37 cd 00 00 	mov    rax,QWORD PTR [rip+0xcd37]        # 11440 <rax>
    4709:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    470c:	48 89 10             	mov    QWORD PTR [rax],rdx
    470f:	48 8b 05 2a cd 00 00 	mov    rax,QWORD PTR [rip+0xcd2a]        # 11440 <rax>
    4716:	48 8b 15 9b cd 00 00 	mov    rdx,QWORD PTR [rip+0xcd9b]        # 114b8 <rdx>
    471d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4720:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4723:	48 89 02             	mov    QWORD PTR [rdx],rax
    4726:	48 8b 15 43 cf 00 00 	mov    rdx,QWORD PTR [rip+0xcf43]        # 11670 <s_bss>
    472d:	48 8b 05 0c cd 00 00 	mov    rax,QWORD PTR [rip+0xcd0c]        # 11440 <rax>
    4734:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    473b:	48 89 10             	mov    QWORD PTR [rax],rdx
    473e:	48 8b 05 fb cc 00 00 	mov    rax,QWORD PTR [rip+0xccfb]        # 11440 <rax>
    4745:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4748:	48 89 c2             	mov    rdx,rax
    474b:	48 8b 05 ee cc 00 00 	mov    rax,QWORD PTR [rip+0xccee]        # 11440 <rax>
    4752:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4755:	48 89 10             	mov    QWORD PTR [rax],rdx
    4758:	48 8b 05 e1 cc 00 00 	mov    rax,QWORD PTR [rip+0xcce1]        # 11440 <rax>
    475f:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    4762:	48 8b 05 d7 cc 00 00 	mov    rax,QWORD PTR [rip+0xccd7]        # 11440 <rax>
    4769:	48 83 ea 18          	sub    rdx,0x18
    476d:	48 89 10             	mov    QWORD PTR [rax],rdx
    4770:	48 8b 05 c9 cc 00 00 	mov    rax,QWORD PTR [rip+0xccc9]        # 11440 <rax>
    4777:	48 8b 00             	mov    rax,QWORD PTR [rax]
    477a:	48 89 c2             	mov    rdx,rax
    477d:	48 8b 05 bc cc 00 00 	mov    rax,QWORD PTR [rip+0xccbc]        # 11440 <rax>
    4784:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4787:	48 89 10             	mov    QWORD PTR [rax],rdx
    478a:	48 8b 05 af cc 00 00 	mov    rax,QWORD PTR [rip+0xccaf]        # 11440 <rax>
    4791:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4794:	48 83 f8 01          	cmp    rax,0x1
    4798:	0f 87 a9 00 00 00    	ja     4847 <fib_tbl_dyn_+0x411>
    479e:	48 8b 15 cb ce 00 00 	mov    rdx,QWORD PTR [rip+0xcecb]        # 11670 <s_bss>
    47a5:	48 8b 05 94 cc 00 00 	mov    rax,QWORD PTR [rip+0xcc94]        # 11440 <rax>
    47ac:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    47b3:	48 89 10             	mov    QWORD PTR [rax],rdx
    47b6:	48 8b 05 83 cc 00 00 	mov    rax,QWORD PTR [rip+0xcc83]        # 11440 <rax>
    47bd:	48 8b 00             	mov    rax,QWORD PTR [rax]
    47c0:	48 89 c2             	mov    rdx,rax
    47c3:	48 8b 05 76 cc 00 00 	mov    rax,QWORD PTR [rip+0xcc76]        # 11440 <rax>
    47ca:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    47cd:	48 89 10             	mov    QWORD PTR [rax],rdx
    47d0:	48 8b 05 69 cc 00 00 	mov    rax,QWORD PTR [rip+0xcc69]        # 11440 <rax>
    47d7:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    47da:	48 8b 05 5f cc 00 00 	mov    rax,QWORD PTR [rip+0xcc5f]        # 11440 <rax>
    47e1:	48 83 ea 18          	sub    rdx,0x18
    47e5:	48 89 10             	mov    QWORD PTR [rax],rdx
    47e8:	48 8b 15 51 cc 00 00 	mov    rdx,QWORD PTR [rip+0xcc51]        # 11440 <rax>
    47ef:	48 8b 05 c2 cc 00 00 	mov    rax,QWORD PTR [rip+0xccc2]        # 114b8 <rdx>
    47f6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    47f9:	48 89 10             	mov    QWORD PTR [rax],rdx
    47fc:	48 8b 15 6d ce 00 00 	mov    rdx,QWORD PTR [rip+0xce6d]        # 11670 <s_bss>
    4803:	48 8b 05 36 cc 00 00 	mov    rax,QWORD PTR [rip+0xcc36]        # 11440 <rax>
    480a:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    480e:	48 89 10             	mov    QWORD PTR [rax],rdx
    4811:	48 8b 05 a0 cc 00 00 	mov    rax,QWORD PTR [rip+0xcca0]        # 114b8 <rdx>
    4818:	48 8b 00             	mov    rax,QWORD PTR [rax]
    481b:	48 89 c2             	mov    rdx,rax
    481e:	48 8b 05 93 cc 00 00 	mov    rax,QWORD PTR [rip+0xcc93]        # 114b8 <rdx>
    4825:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4828:	48 89 10             	mov    QWORD PTR [rax],rdx
    482b:	48 8b 05 86 cc 00 00 	mov    rax,QWORD PTR [rip+0xcc86]        # 114b8 <rdx>
    4832:	48 8b 15 07 cc 00 00 	mov    rdx,QWORD PTR [rip+0xcc07]        # 11440 <rax>
    4839:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    483c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    483f:	48 89 02             	mov    QWORD PTR [rdx],rax
    4842:	e9 08 10 00 00       	jmp    584f <fib_tbl_dyn_+0x1419>
    4847:	90                   	nop
    4848:	48 8b 15 21 ce 00 00 	mov    rdx,QWORD PTR [rip+0xce21]        # 11670 <s_bss>
    484f:	48 8b 05 ea cb 00 00 	mov    rax,QWORD PTR [rip+0xcbea]        # 11440 <rax>
    4856:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    485d:	48 89 10             	mov    QWORD PTR [rax],rdx
    4860:	48 8b 05 d9 cb 00 00 	mov    rax,QWORD PTR [rip+0xcbd9]        # 11440 <rax>
    4867:	48 8b 00             	mov    rax,QWORD PTR [rax]
    486a:	48 89 c2             	mov    rdx,rax
    486d:	48 8b 05 cc cb 00 00 	mov    rax,QWORD PTR [rip+0xcbcc]        # 11440 <rax>
    4874:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4877:	48 89 10             	mov    QWORD PTR [rax],rdx
    487a:	48 8b 05 bf cb 00 00 	mov    rax,QWORD PTR [rip+0xcbbf]        # 11440 <rax>
    4881:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    4884:	48 8b 05 b5 cb 00 00 	mov    rax,QWORD PTR [rip+0xcbb5]        # 11440 <rax>
    488b:	48 83 ea 18          	sub    rdx,0x18
    488f:	48 89 10             	mov    QWORD PTR [rax],rdx
    4892:	48 8b 15 a7 cb 00 00 	mov    rdx,QWORD PTR [rip+0xcba7]        # 11440 <rax>
    4899:	48 8b 05 18 cc 00 00 	mov    rax,QWORD PTR [rip+0xcc18]        # 114b8 <rdx>
    48a0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    48a3:	48 89 10             	mov    QWORD PTR [rax],rdx
    48a6:	48 8b 15 c3 cd 00 00 	mov    rdx,QWORD PTR [rip+0xcdc3]        # 11670 <s_bss>
    48ad:	48 8b 05 8c cb 00 00 	mov    rax,QWORD PTR [rip+0xcb8c]        # 11440 <rax>
    48b4:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    48b8:	48 89 10             	mov    QWORD PTR [rax],rdx
    48bb:	48 8b 05 f6 cb 00 00 	mov    rax,QWORD PTR [rip+0xcbf6]        # 114b8 <rdx>
    48c2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    48c5:	48 89 c2             	mov    rdx,rax
    48c8:	48 8b 05 e9 cb 00 00 	mov    rax,QWORD PTR [rip+0xcbe9]        # 114b8 <rdx>
    48cf:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    48d2:	48 89 10             	mov    QWORD PTR [rax],rdx
    48d5:	48 8b 05 dc cb 00 00 	mov    rax,QWORD PTR [rip+0xcbdc]        # 114b8 <rdx>
    48dc:	48 8b 15 5d cb 00 00 	mov    rdx,QWORD PTR [rip+0xcb5d]        # 11440 <rax>
    48e3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    48e6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    48e9:	48 89 02             	mov    QWORD PTR [rdx],rax
    48ec:	48 8b 15 7d cd 00 00 	mov    rdx,QWORD PTR [rip+0xcd7d]        # 11670 <s_bss>
    48f3:	48 8b 05 46 cb 00 00 	mov    rax,QWORD PTR [rip+0xcb46]        # 11440 <rax>
    48fa:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    48fe:	48 89 10             	mov    QWORD PTR [rax],rdx
    4901:	48 8b 05 38 cb 00 00 	mov    rax,QWORD PTR [rip+0xcb38]        # 11440 <rax>
    4908:	48 8b 00             	mov    rax,QWORD PTR [rax]
    490b:	48 89 c2             	mov    rdx,rax
    490e:	48 8b 05 a3 cb 00 00 	mov    rax,QWORD PTR [rip+0xcba3]        # 114b8 <rdx>
    4915:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4918:	48 89 10             	mov    QWORD PTR [rax],rdx
    491b:	48 8b 15 4e cd 00 00 	mov    rdx,QWORD PTR [rip+0xcd4e]        # 11670 <s_bss>
    4922:	48 8b 05 17 cb 00 00 	mov    rax,QWORD PTR [rip+0xcb17]        # 11440 <rax>
    4929:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    4930:	48 89 10             	mov    QWORD PTR [rax],rdx
    4933:	48 8b 05 7e cb 00 00 	mov    rax,QWORD PTR [rip+0xcb7e]        # 114b8 <rdx>
    493a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    493d:	48 8b 05 74 cb 00 00 	mov    rax,QWORD PTR [rip+0xcb74]        # 114b8 <rdx>
    4944:	48 c1 e2 03          	shl    rdx,0x3
    4948:	48 89 10             	mov    QWORD PTR [rax],rdx
    494b:	48 8b 05 66 cb 00 00 	mov    rax,QWORD PTR [rip+0xcb66]        # 114b8 <rdx>
    4952:	48 8b 15 e7 ca 00 00 	mov    rdx,QWORD PTR [rip+0xcae7]        # 11440 <rax>
    4959:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    495c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    495f:	48 89 02             	mov    QWORD PTR [rdx],rax
    4962:	48 8b 15 07 cd 00 00 	mov    rdx,QWORD PTR [rip+0xcd07]        # 11670 <s_bss>
    4969:	48 8b 05 d0 ca 00 00 	mov    rax,QWORD PTR [rip+0xcad0]        # 11440 <rax>
    4970:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    4977:	48 89 10             	mov    QWORD PTR [rax],rdx
    497a:	48 8b 05 bf ca 00 00 	mov    rax,QWORD PTR [rip+0xcabf]        # 11440 <rax>
    4981:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4984:	48 89 c2             	mov    rdx,rax
    4987:	48 8b 05 b2 ca 00 00 	mov    rax,QWORD PTR [rip+0xcab2]        # 11440 <rax>
    498e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4991:	48 89 10             	mov    QWORD PTR [rax],rdx
    4994:	48 8b 05 a5 ca 00 00 	mov    rax,QWORD PTR [rip+0xcaa5]        # 11440 <rax>
    499b:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    499e:	48 8b 05 9b ca 00 00 	mov    rax,QWORD PTR [rip+0xca9b]        # 11440 <rax>
    49a5:	48 83 ea 20          	sub    rdx,0x20
    49a9:	48 89 10             	mov    QWORD PTR [rax],rdx
    49ac:	48 8b 15 8d ca 00 00 	mov    rdx,QWORD PTR [rip+0xca8d]        # 11440 <rax>
    49b3:	48 8b 05 fe ca 00 00 	mov    rax,QWORD PTR [rip+0xcafe]        # 114b8 <rdx>
    49ba:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    49bd:	48 89 10             	mov    QWORD PTR [rax],rdx
    49c0:	48 8b 15 a9 cc 00 00 	mov    rdx,QWORD PTR [rip+0xcca9]        # 11670 <s_bss>
    49c7:	48 8b 05 72 ca 00 00 	mov    rax,QWORD PTR [rip+0xca72]        # 11440 <rax>
    49ce:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    49d2:	48 89 10             	mov    QWORD PTR [rax],rdx
    49d5:	48 8b 05 dc ca 00 00 	mov    rax,QWORD PTR [rip+0xcadc]        # 114b8 <rdx>
    49dc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    49df:	48 89 c2             	mov    rdx,rax
    49e2:	48 8b 05 cf ca 00 00 	mov    rax,QWORD PTR [rip+0xcacf]        # 114b8 <rdx>
    49e9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    49ec:	48 89 10             	mov    QWORD PTR [rax],rdx
    49ef:	48 8b 05 c2 ca 00 00 	mov    rax,QWORD PTR [rip+0xcac2]        # 114b8 <rdx>
    49f6:	48 8b 15 43 ca 00 00 	mov    rdx,QWORD PTR [rip+0xca43]        # 11440 <rax>
    49fd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4a00:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4a03:	48 89 02             	mov    QWORD PTR [rdx],rax
    4a06:	48 8b 15 63 cc 00 00 	mov    rdx,QWORD PTR [rip+0xcc63]        # 11670 <s_bss>
    4a0d:	48 8b 05 2c ca 00 00 	mov    rax,QWORD PTR [rip+0xca2c]        # 11440 <rax>
    4a14:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    4a18:	48 89 10             	mov    QWORD PTR [rax],rdx
    4a1b:	48 8b 05 1e ca 00 00 	mov    rax,QWORD PTR [rip+0xca1e]        # 11440 <rax>
    4a22:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4a25:	48 89 c2             	mov    rdx,rax
    4a28:	48 8b 05 61 ca 00 00 	mov    rax,QWORD PTR [rip+0xca61]        # 11490 <rcx>
    4a2f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4a32:	48 89 10             	mov    QWORD PTR [rax],rdx
    4a35:	48 8b 15 34 cc 00 00 	mov    rdx,QWORD PTR [rip+0xcc34]        # 11670 <s_bss>
    4a3c:	48 8b 05 fd c9 00 00 	mov    rax,QWORD PTR [rip+0xc9fd]        # 11440 <rax>
    4a43:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    4a4a:	48 89 10             	mov    QWORD PTR [rax],rdx
    4a4d:	48 8b 05 ec c9 00 00 	mov    rax,QWORD PTR [rip+0xc9ec]        # 11440 <rax>
    4a54:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4a57:	48 89 c2             	mov    rdx,rax
    4a5a:	48 8b 05 57 ca 00 00 	mov    rax,QWORD PTR [rip+0xca57]        # 114b8 <rdx>
    4a61:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4a64:	48 89 10             	mov    QWORD PTR [rax],rdx
    4a67:	48 8b 15 02 cc 00 00 	mov    rdx,QWORD PTR [rip+0xcc02]        # 11670 <s_bss>
    4a6e:	48 8b 05 cb c9 00 00 	mov    rax,QWORD PTR [rip+0xc9cb]        # 11440 <rax>
    4a75:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    4a79:	48 89 10             	mov    QWORD PTR [rax],rdx
    4a7c:	48 8b 05 35 ca 00 00 	mov    rax,QWORD PTR [rip+0xca35]        # 114b8 <rdx>
    4a83:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    4a86:	48 8b 05 03 ca 00 00 	mov    rax,QWORD PTR [rip+0xca03]        # 11490 <rcx>
    4a8d:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    4a90:	48 8b 05 21 ca 00 00 	mov    rax,QWORD PTR [rip+0xca21]        # 114b8 <rdx>
    4a97:	48 01 ca             	add    rdx,rcx
    4a9a:	48 89 10             	mov    QWORD PTR [rax],rdx
    4a9d:	48 8b 05 14 ca 00 00 	mov    rax,QWORD PTR [rip+0xca14]        # 114b8 <rdx>
    4aa4:	48 8b 15 95 c9 00 00 	mov    rdx,QWORD PTR [rip+0xc995]        # 11440 <rax>
    4aab:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4aae:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4ab1:	48 89 02             	mov    QWORD PTR [rdx],rax
    4ab4:	48 8b 15 b5 cb 00 00 	mov    rdx,QWORD PTR [rip+0xcbb5]        # 11670 <s_bss>
    4abb:	48 8b 05 7e c9 00 00 	mov    rax,QWORD PTR [rip+0xc97e]        # 11440 <rax>
    4ac2:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    4ac6:	48 89 10             	mov    QWORD PTR [rax],rdx
    4ac9:	48 8b 05 70 c9 00 00 	mov    rax,QWORD PTR [rip+0xc970]        # 11440 <rax>
    4ad0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4ad3:	48 89 c2             	mov    rdx,rax
    4ad6:	48 8b 05 63 c9 00 00 	mov    rax,QWORD PTR [rip+0xc963]        # 11440 <rax>
    4add:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4ae0:	48 89 10             	mov    QWORD PTR [rax],rdx
    4ae3:	48 8b 15 56 c9 00 00 	mov    rdx,QWORD PTR [rip+0xc956]        # 11440 <rax>
    4aea:	48 8b 05 c7 c9 00 00 	mov    rax,QWORD PTR [rip+0xc9c7]        # 114b8 <rdx>
    4af1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4af4:	48 89 10             	mov    QWORD PTR [rax],rdx
    4af7:	48 8b 15 72 cb 00 00 	mov    rdx,QWORD PTR [rip+0xcb72]        # 11670 <s_bss>
    4afe:	48 8b 05 3b c9 00 00 	mov    rax,QWORD PTR [rip+0xc93b]        # 11440 <rax>
    4b05:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    4b09:	48 89 10             	mov    QWORD PTR [rax],rdx
    4b0c:	48 8b 05 a5 c9 00 00 	mov    rax,QWORD PTR [rip+0xc9a5]        # 114b8 <rdx>
    4b13:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4b16:	48 89 c2             	mov    rdx,rax
    4b19:	48 8b 05 98 c9 00 00 	mov    rax,QWORD PTR [rip+0xc998]        # 114b8 <rdx>
    4b20:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4b23:	48 89 10             	mov    QWORD PTR [rax],rdx
    4b26:	48 8b 05 8b c9 00 00 	mov    rax,QWORD PTR [rip+0xc98b]        # 114b8 <rdx>
    4b2d:	48 8b 15 0c c9 00 00 	mov    rdx,QWORD PTR [rip+0xc90c]        # 11440 <rax>
    4b34:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4b37:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4b3a:	48 89 02             	mov    QWORD PTR [rdx],rax
    4b3d:	48 8b 15 2c cb 00 00 	mov    rdx,QWORD PTR [rip+0xcb2c]        # 11670 <s_bss>
    4b44:	48 8b 05 f5 c8 00 00 	mov    rax,QWORD PTR [rip+0xc8f5]        # 11440 <rax>
    4b4b:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    4b4f:	48 89 10             	mov    QWORD PTR [rax],rdx
    4b52:	48 8b 05 e7 c8 00 00 	mov    rax,QWORD PTR [rip+0xc8e7]        # 11440 <rax>
    4b59:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4b5c:	48 89 c2             	mov    rdx,rax
    4b5f:	48 8b 05 da c8 00 00 	mov    rax,QWORD PTR [rip+0xc8da]        # 11440 <rax>
    4b66:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4b69:	48 89 10             	mov    QWORD PTR [rax],rdx
    4b6c:	48 8b 05 cd c8 00 00 	mov    rax,QWORD PTR [rip+0xc8cd]        # 11440 <rax>
    4b73:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4b76:	48 85 c0             	test   rax,rax
    4b79:	0f 84 fa 02 00 00    	je     4e79 <fib_tbl_dyn_+0xa43>
    4b7f:	48 8b 15 ea ca 00 00 	mov    rdx,QWORD PTR [rip+0xcaea]        # 11670 <s_bss>
    4b86:	48 8b 05 b3 c8 00 00 	mov    rax,QWORD PTR [rip+0xc8b3]        # 11440 <rax>
    4b8d:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    4b94:	48 89 10             	mov    QWORD PTR [rax],rdx
    4b97:	48 8b 05 a2 c8 00 00 	mov    rax,QWORD PTR [rip+0xc8a2]        # 11440 <rax>
    4b9e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4ba1:	48 89 c2             	mov    rdx,rax
    4ba4:	48 8b 05 95 c8 00 00 	mov    rax,QWORD PTR [rip+0xc895]        # 11440 <rax>
    4bab:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4bae:	48 89 10             	mov    QWORD PTR [rax],rdx
    4bb1:	48 8b 05 88 c8 00 00 	mov    rax,QWORD PTR [rip+0xc888]        # 11440 <rax>
    4bb8:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    4bbb:	48 8b 05 7e c8 00 00 	mov    rax,QWORD PTR [rip+0xc87e]        # 11440 <rax>
    4bc2:	48 83 ea 18          	sub    rdx,0x18
    4bc6:	48 89 10             	mov    QWORD PTR [rax],rdx
    4bc9:	48 8b 15 70 c8 00 00 	mov    rdx,QWORD PTR [rip+0xc870]        # 11440 <rax>
    4bd0:	48 8b 05 e1 c8 00 00 	mov    rax,QWORD PTR [rip+0xc8e1]        # 114b8 <rdx>
    4bd7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4bda:	48 89 10             	mov    QWORD PTR [rax],rdx
    4bdd:	48 8b 15 8c ca 00 00 	mov    rdx,QWORD PTR [rip+0xca8c]        # 11670 <s_bss>
    4be4:	48 8b 05 55 c8 00 00 	mov    rax,QWORD PTR [rip+0xc855]        # 11440 <rax>
    4beb:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    4bef:	48 89 10             	mov    QWORD PTR [rax],rdx
    4bf2:	48 8b 05 bf c8 00 00 	mov    rax,QWORD PTR [rip+0xc8bf]        # 114b8 <rdx>
    4bf9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4bfc:	48 89 c2             	mov    rdx,rax
    4bff:	48 8b 05 b2 c8 00 00 	mov    rax,QWORD PTR [rip+0xc8b2]        # 114b8 <rdx>
    4c06:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4c09:	48 89 10             	mov    QWORD PTR [rax],rdx
    4c0c:	48 8b 05 a5 c8 00 00 	mov    rax,QWORD PTR [rip+0xc8a5]        # 114b8 <rdx>
    4c13:	48 8b 15 26 c8 00 00 	mov    rdx,QWORD PTR [rip+0xc826]        # 11440 <rax>
    4c1a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4c1d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4c20:	48 89 02             	mov    QWORD PTR [rdx],rax
    4c23:	48 8b 15 46 ca 00 00 	mov    rdx,QWORD PTR [rip+0xca46]        # 11670 <s_bss>
    4c2a:	48 8b 05 0f c8 00 00 	mov    rax,QWORD PTR [rip+0xc80f]        # 11440 <rax>
    4c31:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    4c35:	48 89 10             	mov    QWORD PTR [rax],rdx
    4c38:	48 8b 05 01 c8 00 00 	mov    rax,QWORD PTR [rip+0xc801]        # 11440 <rax>
    4c3f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4c42:	48 89 c2             	mov    rdx,rax
    4c45:	48 8b 05 6c c8 00 00 	mov    rax,QWORD PTR [rip+0xc86c]        # 114b8 <rdx>
    4c4c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4c4f:	48 89 10             	mov    QWORD PTR [rax],rdx
    4c52:	48 8b 15 17 ca 00 00 	mov    rdx,QWORD PTR [rip+0xca17]        # 11670 <s_bss>
    4c59:	48 8b 05 e0 c7 00 00 	mov    rax,QWORD PTR [rip+0xc7e0]        # 11440 <rax>
    4c60:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    4c67:	48 89 10             	mov    QWORD PTR [rax],rdx
    4c6a:	48 8b 05 47 c8 00 00 	mov    rax,QWORD PTR [rip+0xc847]        # 114b8 <rdx>
    4c71:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    4c74:	48 8b 05 3d c8 00 00 	mov    rax,QWORD PTR [rip+0xc83d]        # 114b8 <rdx>
    4c7b:	48 c1 e2 03          	shl    rdx,0x3
    4c7f:	48 89 10             	mov    QWORD PTR [rax],rdx
    4c82:	48 8b 05 2f c8 00 00 	mov    rax,QWORD PTR [rip+0xc82f]        # 114b8 <rdx>
    4c89:	48 8b 15 b0 c7 00 00 	mov    rdx,QWORD PTR [rip+0xc7b0]        # 11440 <rax>
    4c90:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4c93:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4c96:	48 89 02             	mov    QWORD PTR [rdx],rax
    4c99:	48 8b 15 d0 c9 00 00 	mov    rdx,QWORD PTR [rip+0xc9d0]        # 11670 <s_bss>
    4ca0:	48 8b 05 99 c7 00 00 	mov    rax,QWORD PTR [rip+0xc799]        # 11440 <rax>
    4ca7:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    4cae:	48 89 10             	mov    QWORD PTR [rax],rdx
    4cb1:	48 8b 05 88 c7 00 00 	mov    rax,QWORD PTR [rip+0xc788]        # 11440 <rax>
    4cb8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4cbb:	48 89 c2             	mov    rdx,rax
    4cbe:	48 8b 05 7b c7 00 00 	mov    rax,QWORD PTR [rip+0xc77b]        # 11440 <rax>
    4cc5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4cc8:	48 89 10             	mov    QWORD PTR [rax],rdx
    4ccb:	48 8b 05 6e c7 00 00 	mov    rax,QWORD PTR [rip+0xc76e]        # 11440 <rax>
    4cd2:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    4cd5:	48 8b 05 64 c7 00 00 	mov    rax,QWORD PTR [rip+0xc764]        # 11440 <rax>
    4cdc:	48 83 ea 20          	sub    rdx,0x20
    4ce0:	48 89 10             	mov    QWORD PTR [rax],rdx
    4ce3:	48 8b 15 56 c7 00 00 	mov    rdx,QWORD PTR [rip+0xc756]        # 11440 <rax>
    4cea:	48 8b 05 c7 c7 00 00 	mov    rax,QWORD PTR [rip+0xc7c7]        # 114b8 <rdx>
    4cf1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4cf4:	48 89 10             	mov    QWORD PTR [rax],rdx
    4cf7:	48 8b 15 72 c9 00 00 	mov    rdx,QWORD PTR [rip+0xc972]        # 11670 <s_bss>
    4cfe:	48 8b 05 3b c7 00 00 	mov    rax,QWORD PTR [rip+0xc73b]        # 11440 <rax>
    4d05:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    4d09:	48 89 10             	mov    QWORD PTR [rax],rdx
    4d0c:	48 8b 05 a5 c7 00 00 	mov    rax,QWORD PTR [rip+0xc7a5]        # 114b8 <rdx>
    4d13:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4d16:	48 89 c2             	mov    rdx,rax
    4d19:	48 8b 05 98 c7 00 00 	mov    rax,QWORD PTR [rip+0xc798]        # 114b8 <rdx>
    4d20:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4d23:	48 89 10             	mov    QWORD PTR [rax],rdx
    4d26:	48 8b 05 8b c7 00 00 	mov    rax,QWORD PTR [rip+0xc78b]        # 114b8 <rdx>
    4d2d:	48 8b 15 0c c7 00 00 	mov    rdx,QWORD PTR [rip+0xc70c]        # 11440 <rax>
    4d34:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4d37:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4d3a:	48 89 02             	mov    QWORD PTR [rdx],rax
    4d3d:	48 8b 15 2c c9 00 00 	mov    rdx,QWORD PTR [rip+0xc92c]        # 11670 <s_bss>
    4d44:	48 8b 05 f5 c6 00 00 	mov    rax,QWORD PTR [rip+0xc6f5]        # 11440 <rax>
    4d4b:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    4d4f:	48 89 10             	mov    QWORD PTR [rax],rdx
    4d52:	48 8b 05 e7 c6 00 00 	mov    rax,QWORD PTR [rip+0xc6e7]        # 11440 <rax>
    4d59:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4d5c:	48 89 c2             	mov    rdx,rax
    4d5f:	48 8b 05 2a c7 00 00 	mov    rax,QWORD PTR [rip+0xc72a]        # 11490 <rcx>
    4d66:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4d69:	48 89 10             	mov    QWORD PTR [rax],rdx
    4d6c:	48 8b 15 fd c8 00 00 	mov    rdx,QWORD PTR [rip+0xc8fd]        # 11670 <s_bss>
    4d73:	48 8b 05 c6 c6 00 00 	mov    rax,QWORD PTR [rip+0xc6c6]        # 11440 <rax>
    4d7a:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    4d81:	48 89 10             	mov    QWORD PTR [rax],rdx
    4d84:	48 8b 05 b5 c6 00 00 	mov    rax,QWORD PTR [rip+0xc6b5]        # 11440 <rax>
    4d8b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4d8e:	48 89 c2             	mov    rdx,rax
    4d91:	48 8b 05 20 c7 00 00 	mov    rax,QWORD PTR [rip+0xc720]        # 114b8 <rdx>
    4d98:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4d9b:	48 89 10             	mov    QWORD PTR [rax],rdx
    4d9e:	48 8b 15 cb c8 00 00 	mov    rdx,QWORD PTR [rip+0xc8cb]        # 11670 <s_bss>
    4da5:	48 8b 05 94 c6 00 00 	mov    rax,QWORD PTR [rip+0xc694]        # 11440 <rax>
    4dac:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    4db0:	48 89 10             	mov    QWORD PTR [rax],rdx
    4db3:	48 8b 05 fe c6 00 00 	mov    rax,QWORD PTR [rip+0xc6fe]        # 114b8 <rdx>
    4dba:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    4dbd:	48 8b 05 cc c6 00 00 	mov    rax,QWORD PTR [rip+0xc6cc]        # 11490 <rcx>
    4dc4:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    4dc7:	48 8b 05 ea c6 00 00 	mov    rax,QWORD PTR [rip+0xc6ea]        # 114b8 <rdx>
    4dce:	48 01 ca             	add    rdx,rcx
    4dd1:	48 89 10             	mov    QWORD PTR [rax],rdx
    4dd4:	48 8b 05 dd c6 00 00 	mov    rax,QWORD PTR [rip+0xc6dd]        # 114b8 <rdx>
    4ddb:	48 8b 15 5e c6 00 00 	mov    rdx,QWORD PTR [rip+0xc65e]        # 11440 <rax>
    4de2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4de5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4de8:	48 89 02             	mov    QWORD PTR [rdx],rax
    4deb:	48 8b 15 7e c8 00 00 	mov    rdx,QWORD PTR [rip+0xc87e]        # 11670 <s_bss>
    4df2:	48 8b 05 47 c6 00 00 	mov    rax,QWORD PTR [rip+0xc647]        # 11440 <rax>
    4df9:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    4dfd:	48 89 10             	mov    QWORD PTR [rax],rdx
    4e00:	48 8b 05 39 c6 00 00 	mov    rax,QWORD PTR [rip+0xc639]        # 11440 <rax>
    4e07:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4e0a:	48 89 c2             	mov    rdx,rax
    4e0d:	48 8b 05 2c c6 00 00 	mov    rax,QWORD PTR [rip+0xc62c]        # 11440 <rax>
    4e14:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4e17:	48 89 10             	mov    QWORD PTR [rax],rdx
    4e1a:	48 8b 15 1f c6 00 00 	mov    rdx,QWORD PTR [rip+0xc61f]        # 11440 <rax>
    4e21:	48 8b 05 90 c6 00 00 	mov    rax,QWORD PTR [rip+0xc690]        # 114b8 <rdx>
    4e28:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4e2b:	48 89 10             	mov    QWORD PTR [rax],rdx
    4e2e:	48 8b 15 3b c8 00 00 	mov    rdx,QWORD PTR [rip+0xc83b]        # 11670 <s_bss>
    4e35:	48 8b 05 04 c6 00 00 	mov    rax,QWORD PTR [rip+0xc604]        # 11440 <rax>
    4e3c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    4e40:	48 89 10             	mov    QWORD PTR [rax],rdx
    4e43:	48 8b 05 6e c6 00 00 	mov    rax,QWORD PTR [rip+0xc66e]        # 114b8 <rdx>
    4e4a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4e4d:	48 89 c2             	mov    rdx,rax
    4e50:	48 8b 05 61 c6 00 00 	mov    rax,QWORD PTR [rip+0xc661]        # 114b8 <rdx>
    4e57:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4e5a:	48 89 10             	mov    QWORD PTR [rax],rdx
    4e5d:	48 8b 05 54 c6 00 00 	mov    rax,QWORD PTR [rip+0xc654]        # 114b8 <rdx>
    4e64:	48 8b 15 d5 c5 00 00 	mov    rdx,QWORD PTR [rip+0xc5d5]        # 11440 <rax>
    4e6b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4e6e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4e71:	48 89 02             	mov    QWORD PTR [rdx],rax
    4e74:	e9 d6 09 00 00       	jmp    584f <fib_tbl_dyn_+0x1419>
    4e79:	90                   	nop
    4e7a:	48 8b 15 ef c7 00 00 	mov    rdx,QWORD PTR [rip+0xc7ef]        # 11670 <s_bss>
    4e81:	48 8b 05 b8 c5 00 00 	mov    rax,QWORD PTR [rip+0xc5b8]        # 11440 <rax>
    4e88:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    4e8f:	48 89 10             	mov    QWORD PTR [rax],rdx
    4e92:	48 8b 05 a7 c5 00 00 	mov    rax,QWORD PTR [rip+0xc5a7]        # 11440 <rax>
    4e99:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4e9c:	48 89 c2             	mov    rdx,rax
    4e9f:	48 8b 05 9a c5 00 00 	mov    rax,QWORD PTR [rip+0xc59a]        # 11440 <rax>
    4ea6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4ea9:	48 89 10             	mov    QWORD PTR [rax],rdx
    4eac:	48 8b 05 8d c5 00 00 	mov    rax,QWORD PTR [rip+0xc58d]        # 11440 <rax>
    4eb3:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    4eb6:	48 8b 05 83 c5 00 00 	mov    rax,QWORD PTR [rip+0xc583]        # 11440 <rax>
    4ebd:	48 83 ea 18          	sub    rdx,0x18
    4ec1:	48 89 10             	mov    QWORD PTR [rax],rdx
    4ec4:	48 8b 15 75 c5 00 00 	mov    rdx,QWORD PTR [rip+0xc575]        # 11440 <rax>
    4ecb:	48 8b 05 e6 c5 00 00 	mov    rax,QWORD PTR [rip+0xc5e6]        # 114b8 <rdx>
    4ed2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4ed5:	48 89 10             	mov    QWORD PTR [rax],rdx
    4ed8:	48 8b 15 91 c7 00 00 	mov    rdx,QWORD PTR [rip+0xc791]        # 11670 <s_bss>
    4edf:	48 8b 05 5a c5 00 00 	mov    rax,QWORD PTR [rip+0xc55a]        # 11440 <rax>
    4ee6:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    4eea:	48 89 10             	mov    QWORD PTR [rax],rdx
    4eed:	48 8b 05 c4 c5 00 00 	mov    rax,QWORD PTR [rip+0xc5c4]        # 114b8 <rdx>
    4ef4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4ef7:	48 89 c2             	mov    rdx,rax
    4efa:	48 8b 05 b7 c5 00 00 	mov    rax,QWORD PTR [rip+0xc5b7]        # 114b8 <rdx>
    4f01:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4f04:	48 89 10             	mov    QWORD PTR [rax],rdx
    4f07:	48 8b 05 aa c5 00 00 	mov    rax,QWORD PTR [rip+0xc5aa]        # 114b8 <rdx>
    4f0e:	48 8b 15 2b c5 00 00 	mov    rdx,QWORD PTR [rip+0xc52b]        # 11440 <rax>
    4f15:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4f18:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4f1b:	48 89 02             	mov    QWORD PTR [rdx],rax
    4f1e:	48 8b 15 4b c7 00 00 	mov    rdx,QWORD PTR [rip+0xc74b]        # 11670 <s_bss>
    4f25:	48 8b 05 14 c5 00 00 	mov    rax,QWORD PTR [rip+0xc514]        # 11440 <rax>
    4f2c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    4f30:	48 89 10             	mov    QWORD PTR [rax],rdx
    4f33:	48 8b 05 06 c5 00 00 	mov    rax,QWORD PTR [rip+0xc506]        # 11440 <rax>
    4f3a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4f3d:	48 89 c2             	mov    rdx,rax
    4f40:	48 8b 05 71 c5 00 00 	mov    rax,QWORD PTR [rip+0xc571]        # 114b8 <rdx>
    4f47:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4f4a:	48 89 10             	mov    QWORD PTR [rax],rdx
    4f4d:	48 8b 15 1c c7 00 00 	mov    rdx,QWORD PTR [rip+0xc71c]        # 11670 <s_bss>
    4f54:	48 8b 05 e5 c4 00 00 	mov    rax,QWORD PTR [rip+0xc4e5]        # 11440 <rax>
    4f5b:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    4f62:	48 89 10             	mov    QWORD PTR [rax],rdx
    4f65:	48 8b 05 4c c5 00 00 	mov    rax,QWORD PTR [rip+0xc54c]        # 114b8 <rdx>
    4f6c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    4f6f:	48 8b 05 42 c5 00 00 	mov    rax,QWORD PTR [rip+0xc542]        # 114b8 <rdx>
    4f76:	48 83 ea 01          	sub    rdx,0x1
    4f7a:	48 89 10             	mov    QWORD PTR [rax],rdx
    4f7d:	48 8b 05 34 c5 00 00 	mov    rax,QWORD PTR [rip+0xc534]        # 114b8 <rdx>
    4f84:	48 8b 15 b5 c4 00 00 	mov    rdx,QWORD PTR [rip+0xc4b5]        # 11440 <rax>
    4f8b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4f8e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4f91:	48 89 02             	mov    QWORD PTR [rdx],rax
    4f94:	48 8b 15 d5 c6 00 00 	mov    rdx,QWORD PTR [rip+0xc6d5]        # 11670 <s_bss>
    4f9b:	48 8b 05 9e c4 00 00 	mov    rax,QWORD PTR [rip+0xc49e]        # 11440 <rax>
    4fa2:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    4fa9:	48 89 10             	mov    QWORD PTR [rax],rdx
    4fac:	48 8b 05 8d c4 00 00 	mov    rax,QWORD PTR [rip+0xc48d]        # 11440 <rax>
    4fb3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    4fb6:	48 89 c2             	mov    rdx,rax
    4fb9:	48 8b 05 80 c4 00 00 	mov    rax,QWORD PTR [rip+0xc480]        # 11440 <rax>
    4fc0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4fc3:	48 89 10             	mov    QWORD PTR [rax],rdx
    4fc6:	48 8b 05 73 c4 00 00 	mov    rax,QWORD PTR [rip+0xc473]        # 11440 <rax>
    4fcd:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    4fd0:	48 8b 05 69 c4 00 00 	mov    rax,QWORD PTR [rip+0xc469]        # 11440 <rax>
    4fd7:	48 83 ea 20          	sub    rdx,0x20
    4fdb:	48 89 10             	mov    QWORD PTR [rax],rdx
    4fde:	48 8b 15 5b c4 00 00 	mov    rdx,QWORD PTR [rip+0xc45b]        # 11440 <rax>
    4fe5:	48 8b 05 cc c4 00 00 	mov    rax,QWORD PTR [rip+0xc4cc]        # 114b8 <rdx>
    4fec:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    4fef:	48 89 10             	mov    QWORD PTR [rax],rdx
    4ff2:	48 8b 15 77 c6 00 00 	mov    rdx,QWORD PTR [rip+0xc677]        # 11670 <s_bss>
    4ff9:	48 8b 05 40 c4 00 00 	mov    rax,QWORD PTR [rip+0xc440]        # 11440 <rax>
    5000:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    5004:	48 89 10             	mov    QWORD PTR [rax],rdx
    5007:	48 8b 05 aa c4 00 00 	mov    rax,QWORD PTR [rip+0xc4aa]        # 114b8 <rdx>
    500e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5011:	48 89 c2             	mov    rdx,rax
    5014:	48 8b 05 9d c4 00 00 	mov    rax,QWORD PTR [rip+0xc49d]        # 114b8 <rdx>
    501b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    501e:	48 89 10             	mov    QWORD PTR [rax],rdx
    5021:	48 8b 05 90 c4 00 00 	mov    rax,QWORD PTR [rip+0xc490]        # 114b8 <rdx>
    5028:	48 8b 15 11 c4 00 00 	mov    rdx,QWORD PTR [rip+0xc411]        # 11440 <rax>
    502f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5032:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5035:	48 89 02             	mov    QWORD PTR [rdx],rax
    5038:	48 8b 15 31 c6 00 00 	mov    rdx,QWORD PTR [rip+0xc631]        # 11670 <s_bss>
    503f:	48 8b 05 72 c4 00 00 	mov    rax,QWORD PTR [rip+0xc472]        # 114b8 <rdx>
    5046:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    504a:	48 89 10             	mov    QWORD PTR [rax],rdx
    504d:	48 8b 15 1c c6 00 00 	mov    rdx,QWORD PTR [rip+0xc61c]        # 11670 <s_bss>
    5054:	48 8b 05 e5 c3 00 00 	mov    rax,QWORD PTR [rip+0xc3e5]        # 11440 <rax>
    505b:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    5062:	48 89 10             	mov    QWORD PTR [rax],rdx
    5065:	48 8b 05 4c c4 00 00 	mov    rax,QWORD PTR [rip+0xc44c]        # 114b8 <rdx>
    506c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    506f:	48 89 c2             	mov    rdx,rax
    5072:	48 8b 05 3f c4 00 00 	mov    rax,QWORD PTR [rip+0xc43f]        # 114b8 <rdx>
    5079:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    507c:	48 89 10             	mov    QWORD PTR [rax],rdx
    507f:	48 8b 05 32 c4 00 00 	mov    rax,QWORD PTR [rip+0xc432]        # 114b8 <rdx>
    5086:	48 8b 15 b3 c3 00 00 	mov    rdx,QWORD PTR [rip+0xc3b3]        # 11440 <rax>
    508d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5090:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5093:	48 89 02             	mov    QWORD PTR [rdx],rax
    5096:	48 8b 15 d3 c5 00 00 	mov    rdx,QWORD PTR [rip+0xc5d3]        # 11670 <s_bss>
    509d:	48 8b 05 14 c4 00 00 	mov    rax,QWORD PTR [rip+0xc414]        # 114b8 <rdx>
    50a4:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    50ab:	48 89 10             	mov    QWORD PTR [rax],rdx
    50ae:	48 8b 15 bb c5 00 00 	mov    rdx,QWORD PTR [rip+0xc5bb]        # 11670 <s_bss>
    50b5:	48 8b 05 84 c3 00 00 	mov    rax,QWORD PTR [rip+0xc384]        # 11440 <rax>
    50bc:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    50c3:	48 89 10             	mov    QWORD PTR [rax],rdx
    50c6:	48 8b 05 eb c3 00 00 	mov    rax,QWORD PTR [rip+0xc3eb]        # 114b8 <rdx>
    50cd:	48 8b 00             	mov    rax,QWORD PTR [rax]
    50d0:	48 89 c2             	mov    rdx,rax
    50d3:	48 8b 05 de c3 00 00 	mov    rax,QWORD PTR [rip+0xc3de]        # 114b8 <rdx>
    50da:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    50dd:	48 89 10             	mov    QWORD PTR [rax],rdx
    50e0:	48 8b 05 d1 c3 00 00 	mov    rax,QWORD PTR [rip+0xc3d1]        # 114b8 <rdx>
    50e7:	48 8b 15 52 c3 00 00 	mov    rdx,QWORD PTR [rip+0xc352]        # 11440 <rax>
    50ee:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    50f1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    50f4:	48 89 02             	mov    QWORD PTR [rdx],rax
    50f7:	e8 3a f3 ff ff       	call   4436 <fib_tbl_dyn_>
    50fc:	48 8b 15 6d c5 00 00 	mov    rdx,QWORD PTR [rip+0xc56d]        # 11670 <s_bss>
    5103:	48 8b 05 ae c3 00 00 	mov    rax,QWORD PTR [rip+0xc3ae]        # 114b8 <rdx>
    510a:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    510e:	48 89 10             	mov    QWORD PTR [rax],rdx
    5111:	48 8b 15 58 c5 00 00 	mov    rdx,QWORD PTR [rip+0xc558]        # 11670 <s_bss>
    5118:	48 8b 05 21 c3 00 00 	mov    rax,QWORD PTR [rip+0xc321]        # 11440 <rax>
    511f:	48 8b 52 48          	mov    rdx,QWORD PTR [rdx+0x48]
    5123:	48 89 10             	mov    QWORD PTR [rax],rdx
    5126:	48 8b 05 8b c3 00 00 	mov    rax,QWORD PTR [rip+0xc38b]        # 114b8 <rdx>
    512d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5130:	48 89 c2             	mov    rdx,rax
    5133:	48 8b 05 7e c3 00 00 	mov    rax,QWORD PTR [rip+0xc37e]        # 114b8 <rdx>
    513a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    513d:	48 89 10             	mov    QWORD PTR [rax],rdx
    5140:	48 8b 05 71 c3 00 00 	mov    rax,QWORD PTR [rip+0xc371]        # 114b8 <rdx>
    5147:	48 8b 15 f2 c2 00 00 	mov    rdx,QWORD PTR [rip+0xc2f2]        # 11440 <rax>
    514e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5151:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5154:	48 89 02             	mov    QWORD PTR [rdx],rax
    5157:	48 8b 15 12 c5 00 00 	mov    rdx,QWORD PTR [rip+0xc512]        # 11670 <s_bss>
    515e:	48 8b 05 db c2 00 00 	mov    rax,QWORD PTR [rip+0xc2db]        # 11440 <rax>
    5165:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    516c:	48 89 10             	mov    QWORD PTR [rax],rdx
    516f:	48 8b 05 ca c2 00 00 	mov    rax,QWORD PTR [rip+0xc2ca]        # 11440 <rax>
    5176:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5179:	48 89 c2             	mov    rdx,rax
    517c:	48 8b 05 bd c2 00 00 	mov    rax,QWORD PTR [rip+0xc2bd]        # 11440 <rax>
    5183:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5186:	48 89 10             	mov    QWORD PTR [rax],rdx
    5189:	48 8b 05 b0 c2 00 00 	mov    rax,QWORD PTR [rip+0xc2b0]        # 11440 <rax>
    5190:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    5193:	48 8b 05 a6 c2 00 00 	mov    rax,QWORD PTR [rip+0xc2a6]        # 11440 <rax>
    519a:	48 83 ea 18          	sub    rdx,0x18
    519e:	48 89 10             	mov    QWORD PTR [rax],rdx
    51a1:	48 8b 15 98 c2 00 00 	mov    rdx,QWORD PTR [rip+0xc298]        # 11440 <rax>
    51a8:	48 8b 05 09 c3 00 00 	mov    rax,QWORD PTR [rip+0xc309]        # 114b8 <rdx>
    51af:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    51b2:	48 89 10             	mov    QWORD PTR [rax],rdx
    51b5:	48 8b 15 b4 c4 00 00 	mov    rdx,QWORD PTR [rip+0xc4b4]        # 11670 <s_bss>
    51bc:	48 8b 05 7d c2 00 00 	mov    rax,QWORD PTR [rip+0xc27d]        # 11440 <rax>
    51c3:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    51c7:	48 89 10             	mov    QWORD PTR [rax],rdx
    51ca:	48 8b 05 e7 c2 00 00 	mov    rax,QWORD PTR [rip+0xc2e7]        # 114b8 <rdx>
    51d1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    51d4:	48 89 c2             	mov    rdx,rax
    51d7:	48 8b 05 da c2 00 00 	mov    rax,QWORD PTR [rip+0xc2da]        # 114b8 <rdx>
    51de:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    51e1:	48 89 10             	mov    QWORD PTR [rax],rdx
    51e4:	48 8b 05 cd c2 00 00 	mov    rax,QWORD PTR [rip+0xc2cd]        # 114b8 <rdx>
    51eb:	48 8b 15 4e c2 00 00 	mov    rdx,QWORD PTR [rip+0xc24e]        # 11440 <rax>
    51f2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    51f5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    51f8:	48 89 02             	mov    QWORD PTR [rdx],rax
    51fb:	48 8b 15 6e c4 00 00 	mov    rdx,QWORD PTR [rip+0xc46e]        # 11670 <s_bss>
    5202:	48 8b 05 37 c2 00 00 	mov    rax,QWORD PTR [rip+0xc237]        # 11440 <rax>
    5209:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    520d:	48 89 10             	mov    QWORD PTR [rax],rdx
    5210:	48 8b 05 29 c2 00 00 	mov    rax,QWORD PTR [rip+0xc229]        # 11440 <rax>
    5217:	48 8b 00             	mov    rax,QWORD PTR [rax]
    521a:	48 89 c2             	mov    rdx,rax
    521d:	48 8b 05 94 c2 00 00 	mov    rax,QWORD PTR [rip+0xc294]        # 114b8 <rdx>
    5224:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5227:	48 89 10             	mov    QWORD PTR [rax],rdx
    522a:	48 8b 15 3f c4 00 00 	mov    rdx,QWORD PTR [rip+0xc43f]        # 11670 <s_bss>
    5231:	48 8b 05 08 c2 00 00 	mov    rax,QWORD PTR [rip+0xc208]        # 11440 <rax>
    5238:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    523f:	48 89 10             	mov    QWORD PTR [rax],rdx
    5242:	48 8b 05 6f c2 00 00 	mov    rax,QWORD PTR [rip+0xc26f]        # 114b8 <rdx>
    5249:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    524c:	48 8b 05 65 c2 00 00 	mov    rax,QWORD PTR [rip+0xc265]        # 114b8 <rdx>
    5253:	48 83 ea 02          	sub    rdx,0x2
    5257:	48 89 10             	mov    QWORD PTR [rax],rdx
    525a:	48 8b 05 57 c2 00 00 	mov    rax,QWORD PTR [rip+0xc257]        # 114b8 <rdx>
    5261:	48 8b 15 d8 c1 00 00 	mov    rdx,QWORD PTR [rip+0xc1d8]        # 11440 <rax>
    5268:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    526b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    526e:	48 89 02             	mov    QWORD PTR [rdx],rax
    5271:	48 8b 15 f8 c3 00 00 	mov    rdx,QWORD PTR [rip+0xc3f8]        # 11670 <s_bss>
    5278:	48 8b 05 c1 c1 00 00 	mov    rax,QWORD PTR [rip+0xc1c1]        # 11440 <rax>
    527f:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    5286:	48 89 10             	mov    QWORD PTR [rax],rdx
    5289:	48 8b 05 b0 c1 00 00 	mov    rax,QWORD PTR [rip+0xc1b0]        # 11440 <rax>
    5290:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5293:	48 89 c2             	mov    rdx,rax
    5296:	48 8b 05 a3 c1 00 00 	mov    rax,QWORD PTR [rip+0xc1a3]        # 11440 <rax>
    529d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    52a0:	48 89 10             	mov    QWORD PTR [rax],rdx
    52a3:	48 8b 05 96 c1 00 00 	mov    rax,QWORD PTR [rip+0xc196]        # 11440 <rax>
    52aa:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    52ad:	48 8b 05 8c c1 00 00 	mov    rax,QWORD PTR [rip+0xc18c]        # 11440 <rax>
    52b4:	48 83 ea 20          	sub    rdx,0x20
    52b8:	48 89 10             	mov    QWORD PTR [rax],rdx
    52bb:	48 8b 15 7e c1 00 00 	mov    rdx,QWORD PTR [rip+0xc17e]        # 11440 <rax>
    52c2:	48 8b 05 ef c1 00 00 	mov    rax,QWORD PTR [rip+0xc1ef]        # 114b8 <rdx>
    52c9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    52cc:	48 89 10             	mov    QWORD PTR [rax],rdx
    52cf:	48 8b 15 9a c3 00 00 	mov    rdx,QWORD PTR [rip+0xc39a]        # 11670 <s_bss>
    52d6:	48 8b 05 63 c1 00 00 	mov    rax,QWORD PTR [rip+0xc163]        # 11440 <rax>
    52dd:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    52e1:	48 89 10             	mov    QWORD PTR [rax],rdx
    52e4:	48 8b 05 cd c1 00 00 	mov    rax,QWORD PTR [rip+0xc1cd]        # 114b8 <rdx>
    52eb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    52ee:	48 89 c2             	mov    rdx,rax
    52f1:	48 8b 05 c0 c1 00 00 	mov    rax,QWORD PTR [rip+0xc1c0]        # 114b8 <rdx>
    52f8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    52fb:	48 89 10             	mov    QWORD PTR [rax],rdx
    52fe:	48 8b 05 b3 c1 00 00 	mov    rax,QWORD PTR [rip+0xc1b3]        # 114b8 <rdx>
    5305:	48 8b 15 34 c1 00 00 	mov    rdx,QWORD PTR [rip+0xc134]        # 11440 <rax>
    530c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    530f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5312:	48 89 02             	mov    QWORD PTR [rdx],rax
    5315:	48 8b 15 54 c3 00 00 	mov    rdx,QWORD PTR [rip+0xc354]        # 11670 <s_bss>
    531c:	48 8b 05 95 c1 00 00 	mov    rax,QWORD PTR [rip+0xc195]        # 114b8 <rdx>
    5323:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    5327:	48 89 10             	mov    QWORD PTR [rax],rdx
    532a:	48 8b 15 3f c3 00 00 	mov    rdx,QWORD PTR [rip+0xc33f]        # 11670 <s_bss>
    5331:	48 8b 05 08 c1 00 00 	mov    rax,QWORD PTR [rip+0xc108]        # 11440 <rax>
    5338:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    533f:	48 89 10             	mov    QWORD PTR [rax],rdx
    5342:	48 8b 05 6f c1 00 00 	mov    rax,QWORD PTR [rip+0xc16f]        # 114b8 <rdx>
    5349:	48 8b 00             	mov    rax,QWORD PTR [rax]
    534c:	48 89 c2             	mov    rdx,rax
    534f:	48 8b 05 62 c1 00 00 	mov    rax,QWORD PTR [rip+0xc162]        # 114b8 <rdx>
    5356:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5359:	48 89 10             	mov    QWORD PTR [rax],rdx
    535c:	48 8b 05 55 c1 00 00 	mov    rax,QWORD PTR [rip+0xc155]        # 114b8 <rdx>
    5363:	48 8b 15 d6 c0 00 00 	mov    rdx,QWORD PTR [rip+0xc0d6]        # 11440 <rax>
    536a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    536d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5370:	48 89 02             	mov    QWORD PTR [rdx],rax
    5373:	48 8b 15 f6 c2 00 00 	mov    rdx,QWORD PTR [rip+0xc2f6]        # 11670 <s_bss>
    537a:	48 8b 05 37 c1 00 00 	mov    rax,QWORD PTR [rip+0xc137]        # 114b8 <rdx>
    5381:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    5388:	48 89 10             	mov    QWORD PTR [rax],rdx
    538b:	48 8b 15 de c2 00 00 	mov    rdx,QWORD PTR [rip+0xc2de]        # 11670 <s_bss>
    5392:	48 8b 05 a7 c0 00 00 	mov    rax,QWORD PTR [rip+0xc0a7]        # 11440 <rax>
    5399:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    53a0:	48 89 10             	mov    QWORD PTR [rax],rdx
    53a3:	48 8b 05 0e c1 00 00 	mov    rax,QWORD PTR [rip+0xc10e]        # 114b8 <rdx>
    53aa:	48 8b 00             	mov    rax,QWORD PTR [rax]
    53ad:	48 89 c2             	mov    rdx,rax
    53b0:	48 8b 05 01 c1 00 00 	mov    rax,QWORD PTR [rip+0xc101]        # 114b8 <rdx>
    53b7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    53ba:	48 89 10             	mov    QWORD PTR [rax],rdx
    53bd:	48 8b 05 f4 c0 00 00 	mov    rax,QWORD PTR [rip+0xc0f4]        # 114b8 <rdx>
    53c4:	48 8b 15 75 c0 00 00 	mov    rdx,QWORD PTR [rip+0xc075]        # 11440 <rax>
    53cb:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    53ce:	48 8b 00             	mov    rax,QWORD PTR [rax]
    53d1:	48 89 02             	mov    QWORD PTR [rdx],rax
    53d4:	e8 5d f0 ff ff       	call   4436 <fib_tbl_dyn_>
    53d9:	48 8b 15 90 c2 00 00 	mov    rdx,QWORD PTR [rip+0xc290]        # 11670 <s_bss>
    53e0:	48 8b 05 d1 c0 00 00 	mov    rax,QWORD PTR [rip+0xc0d1]        # 114b8 <rdx>
    53e7:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    53eb:	48 89 10             	mov    QWORD PTR [rax],rdx
    53ee:	48 8b 15 7b c2 00 00 	mov    rdx,QWORD PTR [rip+0xc27b]        # 11670 <s_bss>
    53f5:	48 8b 05 44 c0 00 00 	mov    rax,QWORD PTR [rip+0xc044]        # 11440 <rax>
    53fc:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    5403:	48 89 10             	mov    QWORD PTR [rax],rdx
    5406:	48 8b 05 ab c0 00 00 	mov    rax,QWORD PTR [rip+0xc0ab]        # 114b8 <rdx>
    540d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5410:	48 89 c2             	mov    rdx,rax
    5413:	48 8b 05 9e c0 00 00 	mov    rax,QWORD PTR [rip+0xc09e]        # 114b8 <rdx>
    541a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    541d:	48 89 10             	mov    QWORD PTR [rax],rdx
    5420:	48 8b 05 91 c0 00 00 	mov    rax,QWORD PTR [rip+0xc091]        # 114b8 <rdx>
    5427:	48 8b 15 12 c0 00 00 	mov    rdx,QWORD PTR [rip+0xc012]        # 11440 <rax>
    542e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5431:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5434:	48 89 02             	mov    QWORD PTR [rdx],rax
    5437:	48 8b 15 32 c2 00 00 	mov    rdx,QWORD PTR [rip+0xc232]        # 11670 <s_bss>
    543e:	48 8b 05 fb bf 00 00 	mov    rax,QWORD PTR [rip+0xbffb]        # 11440 <rax>
    5445:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    544c:	48 89 10             	mov    QWORD PTR [rax],rdx
    544f:	48 8b 05 ea bf 00 00 	mov    rax,QWORD PTR [rip+0xbfea]        # 11440 <rax>
    5456:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5459:	48 89 c2             	mov    rdx,rax
    545c:	48 8b 05 dd bf 00 00 	mov    rax,QWORD PTR [rip+0xbfdd]        # 11440 <rax>
    5463:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5466:	48 89 10             	mov    QWORD PTR [rax],rdx
    5469:	48 8b 05 d0 bf 00 00 	mov    rax,QWORD PTR [rip+0xbfd0]        # 11440 <rax>
    5470:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    5473:	48 8b 05 c6 bf 00 00 	mov    rax,QWORD PTR [rip+0xbfc6]        # 11440 <rax>
    547a:	48 83 ea 18          	sub    rdx,0x18
    547e:	48 89 10             	mov    QWORD PTR [rax],rdx
    5481:	48 8b 15 b8 bf 00 00 	mov    rdx,QWORD PTR [rip+0xbfb8]        # 11440 <rax>
    5488:	48 8b 05 29 c0 00 00 	mov    rax,QWORD PTR [rip+0xc029]        # 114b8 <rdx>
    548f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5492:	48 89 10             	mov    QWORD PTR [rax],rdx
    5495:	48 8b 15 d4 c1 00 00 	mov    rdx,QWORD PTR [rip+0xc1d4]        # 11670 <s_bss>
    549c:	48 8b 05 9d bf 00 00 	mov    rax,QWORD PTR [rip+0xbf9d]        # 11440 <rax>
    54a3:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    54a7:	48 89 10             	mov    QWORD PTR [rax],rdx
    54aa:	48 8b 05 07 c0 00 00 	mov    rax,QWORD PTR [rip+0xc007]        # 114b8 <rdx>
    54b1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    54b4:	48 89 c2             	mov    rdx,rax
    54b7:	48 8b 05 fa bf 00 00 	mov    rax,QWORD PTR [rip+0xbffa]        # 114b8 <rdx>
    54be:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    54c1:	48 89 10             	mov    QWORD PTR [rax],rdx
    54c4:	48 8b 05 ed bf 00 00 	mov    rax,QWORD PTR [rip+0xbfed]        # 114b8 <rdx>
    54cb:	48 8b 15 6e bf 00 00 	mov    rdx,QWORD PTR [rip+0xbf6e]        # 11440 <rax>
    54d2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    54d5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    54d8:	48 89 02             	mov    QWORD PTR [rdx],rax
    54db:	48 8b 15 8e c1 00 00 	mov    rdx,QWORD PTR [rip+0xc18e]        # 11670 <s_bss>
    54e2:	48 8b 05 57 bf 00 00 	mov    rax,QWORD PTR [rip+0xbf57]        # 11440 <rax>
    54e9:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    54ed:	48 89 10             	mov    QWORD PTR [rax],rdx
    54f0:	48 8b 05 49 bf 00 00 	mov    rax,QWORD PTR [rip+0xbf49]        # 11440 <rax>
    54f7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    54fa:	48 89 c2             	mov    rdx,rax
    54fd:	48 8b 05 b4 bf 00 00 	mov    rax,QWORD PTR [rip+0xbfb4]        # 114b8 <rdx>
    5504:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5507:	48 89 10             	mov    QWORD PTR [rax],rdx
    550a:	48 8b 15 5f c1 00 00 	mov    rdx,QWORD PTR [rip+0xc15f]        # 11670 <s_bss>
    5511:	48 8b 05 28 bf 00 00 	mov    rax,QWORD PTR [rip+0xbf28]        # 11440 <rax>
    5518:	48 8b 52 70          	mov    rdx,QWORD PTR [rdx+0x70]
    551c:	48 89 10             	mov    QWORD PTR [rax],rdx
    551f:	48 8b 05 92 bf 00 00 	mov    rax,QWORD PTR [rip+0xbf92]        # 114b8 <rdx>
    5526:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    5529:	48 8b 05 88 bf 00 00 	mov    rax,QWORD PTR [rip+0xbf88]        # 114b8 <rdx>
    5530:	48 c1 e2 03          	shl    rdx,0x3
    5534:	48 89 10             	mov    QWORD PTR [rax],rdx
    5537:	48 8b 05 7a bf 00 00 	mov    rax,QWORD PTR [rip+0xbf7a]        # 114b8 <rdx>
    553e:	48 8b 15 fb be 00 00 	mov    rdx,QWORD PTR [rip+0xbefb]        # 11440 <rax>
    5545:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5548:	48 8b 00             	mov    rax,QWORD PTR [rax]
    554b:	48 89 02             	mov    QWORD PTR [rdx],rax
    554e:	48 8b 15 1b c1 00 00 	mov    rdx,QWORD PTR [rip+0xc11b]        # 11670 <s_bss>
    5555:	48 8b 05 e4 be 00 00 	mov    rax,QWORD PTR [rip+0xbee4]        # 11440 <rax>
    555c:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    5563:	48 89 10             	mov    QWORD PTR [rax],rdx
    5566:	48 8b 05 d3 be 00 00 	mov    rax,QWORD PTR [rip+0xbed3]        # 11440 <rax>
    556d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5570:	48 89 c2             	mov    rdx,rax
    5573:	48 8b 05 c6 be 00 00 	mov    rax,QWORD PTR [rip+0xbec6]        # 11440 <rax>
    557a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    557d:	48 89 10             	mov    QWORD PTR [rax],rdx
    5580:	48 8b 05 b9 be 00 00 	mov    rax,QWORD PTR [rip+0xbeb9]        # 11440 <rax>
    5587:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    558a:	48 8b 05 af be 00 00 	mov    rax,QWORD PTR [rip+0xbeaf]        # 11440 <rax>
    5591:	48 83 ea 20          	sub    rdx,0x20
    5595:	48 89 10             	mov    QWORD PTR [rax],rdx
    5598:	48 8b 15 a1 be 00 00 	mov    rdx,QWORD PTR [rip+0xbea1]        # 11440 <rax>
    559f:	48 8b 05 12 bf 00 00 	mov    rax,QWORD PTR [rip+0xbf12]        # 114b8 <rdx>
    55a6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    55a9:	48 89 10             	mov    QWORD PTR [rax],rdx
    55ac:	48 8b 15 bd c0 00 00 	mov    rdx,QWORD PTR [rip+0xc0bd]        # 11670 <s_bss>
    55b3:	48 8b 05 86 be 00 00 	mov    rax,QWORD PTR [rip+0xbe86]        # 11440 <rax>
    55ba:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    55be:	48 89 10             	mov    QWORD PTR [rax],rdx
    55c1:	48 8b 05 f0 be 00 00 	mov    rax,QWORD PTR [rip+0xbef0]        # 114b8 <rdx>
    55c8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    55cb:	48 89 c2             	mov    rdx,rax
    55ce:	48 8b 05 e3 be 00 00 	mov    rax,QWORD PTR [rip+0xbee3]        # 114b8 <rdx>
    55d5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    55d8:	48 89 10             	mov    QWORD PTR [rax],rdx
    55db:	48 8b 05 d6 be 00 00 	mov    rax,QWORD PTR [rip+0xbed6]        # 114b8 <rdx>
    55e2:	48 8b 15 57 be 00 00 	mov    rdx,QWORD PTR [rip+0xbe57]        # 11440 <rax>
    55e9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    55ec:	48 8b 00             	mov    rax,QWORD PTR [rax]
    55ef:	48 89 02             	mov    QWORD PTR [rdx],rax
    55f2:	48 8b 15 77 c0 00 00 	mov    rdx,QWORD PTR [rip+0xc077]        # 11670 <s_bss>
    55f9:	48 8b 05 40 be 00 00 	mov    rax,QWORD PTR [rip+0xbe40]        # 11440 <rax>
    5600:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    5604:	48 89 10             	mov    QWORD PTR [rax],rdx
    5607:	48 8b 05 32 be 00 00 	mov    rax,QWORD PTR [rip+0xbe32]        # 11440 <rax>
    560e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5611:	48 89 c2             	mov    rdx,rax
    5614:	48 8b 05 75 be 00 00 	mov    rax,QWORD PTR [rip+0xbe75]        # 11490 <rcx>
    561b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    561e:	48 89 10             	mov    QWORD PTR [rax],rdx
    5621:	48 8b 15 48 c0 00 00 	mov    rdx,QWORD PTR [rip+0xc048]        # 11670 <s_bss>
    5628:	48 8b 05 11 be 00 00 	mov    rax,QWORD PTR [rip+0xbe11]        # 11440 <rax>
    562f:	48 8b 52 70          	mov    rdx,QWORD PTR [rdx+0x70]
    5633:	48 89 10             	mov    QWORD PTR [rax],rdx
    5636:	48 8b 05 03 be 00 00 	mov    rax,QWORD PTR [rip+0xbe03]        # 11440 <rax>
    563d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5640:	48 89 c2             	mov    rdx,rax
    5643:	48 8b 05 6e be 00 00 	mov    rax,QWORD PTR [rip+0xbe6e]        # 114b8 <rdx>
    564a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    564d:	48 89 10             	mov    QWORD PTR [rax],rdx
    5650:	48 8b 15 19 c0 00 00 	mov    rdx,QWORD PTR [rip+0xc019]        # 11670 <s_bss>
    5657:	48 8b 05 e2 bd 00 00 	mov    rax,QWORD PTR [rip+0xbde2]        # 11440 <rax>
    565e:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    5662:	48 89 10             	mov    QWORD PTR [rax],rdx
    5665:	48 8b 05 4c be 00 00 	mov    rax,QWORD PTR [rip+0xbe4c]        # 114b8 <rdx>
    566c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    566f:	48 8b 05 1a be 00 00 	mov    rax,QWORD PTR [rip+0xbe1a]        # 11490 <rcx>
    5676:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    5679:	48 8b 05 38 be 00 00 	mov    rax,QWORD PTR [rip+0xbe38]        # 114b8 <rdx>
    5680:	48 01 ca             	add    rdx,rcx
    5683:	48 89 10             	mov    QWORD PTR [rax],rdx
    5686:	48 8b 05 2b be 00 00 	mov    rax,QWORD PTR [rip+0xbe2b]        # 114b8 <rdx>
    568d:	48 8b 15 ac bd 00 00 	mov    rdx,QWORD PTR [rip+0xbdac]        # 11440 <rax>
    5694:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5697:	48 8b 00             	mov    rax,QWORD PTR [rax]
    569a:	48 89 02             	mov    QWORD PTR [rdx],rax
    569d:	48 8b 15 cc bf 00 00 	mov    rdx,QWORD PTR [rip+0xbfcc]        # 11670 <s_bss>
    56a4:	48 8b 05 95 bd 00 00 	mov    rax,QWORD PTR [rip+0xbd95]        # 11440 <rax>
    56ab:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    56b2:	48 89 10             	mov    QWORD PTR [rax],rdx
    56b5:	48 8b 05 84 bd 00 00 	mov    rax,QWORD PTR [rip+0xbd84]        # 11440 <rax>
    56bc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    56bf:	48 89 c2             	mov    rdx,rax
    56c2:	48 8b 05 c7 bd 00 00 	mov    rax,QWORD PTR [rip+0xbdc7]        # 11490 <rcx>
    56c9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    56cc:	48 89 10             	mov    QWORD PTR [rax],rdx
    56cf:	48 8b 15 9a bf 00 00 	mov    rdx,QWORD PTR [rip+0xbf9a]        # 11670 <s_bss>
    56d6:	48 8b 05 63 bd 00 00 	mov    rax,QWORD PTR [rip+0xbd63]        # 11440 <rax>
    56dd:	48 8b 52 48          	mov    rdx,QWORD PTR [rdx+0x48]
    56e1:	48 89 10             	mov    QWORD PTR [rax],rdx
    56e4:	48 8b 05 55 bd 00 00 	mov    rax,QWORD PTR [rip+0xbd55]        # 11440 <rax>
    56eb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    56ee:	48 89 c2             	mov    rdx,rax
    56f1:	48 8b 05 c0 bd 00 00 	mov    rax,QWORD PTR [rip+0xbdc0]        # 114b8 <rdx>
    56f8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    56fb:	48 89 10             	mov    QWORD PTR [rax],rdx
    56fe:	48 8b 15 6b bf 00 00 	mov    rdx,QWORD PTR [rip+0xbf6b]        # 11670 <s_bss>
    5705:	48 8b 05 34 bd 00 00 	mov    rax,QWORD PTR [rip+0xbd34]        # 11440 <rax>
    570c:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    5713:	48 89 10             	mov    QWORD PTR [rax],rdx
    5716:	48 8b 05 9b bd 00 00 	mov    rax,QWORD PTR [rip+0xbd9b]        # 114b8 <rdx>
    571d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    5720:	48 8b 05 69 bd 00 00 	mov    rax,QWORD PTR [rip+0xbd69]        # 11490 <rcx>
    5727:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    572a:	48 8b 05 87 bd 00 00 	mov    rax,QWORD PTR [rip+0xbd87]        # 114b8 <rdx>
    5731:	48 01 ca             	add    rdx,rcx
    5734:	48 89 10             	mov    QWORD PTR [rax],rdx
    5737:	48 8b 05 7a bd 00 00 	mov    rax,QWORD PTR [rip+0xbd7a]        # 114b8 <rdx>
    573e:	48 8b 15 fb bc 00 00 	mov    rdx,QWORD PTR [rip+0xbcfb]        # 11440 <rax>
    5745:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5748:	48 8b 00             	mov    rax,QWORD PTR [rax]
    574b:	48 89 02             	mov    QWORD PTR [rdx],rax
    574e:	48 8b 15 1b bf 00 00 	mov    rdx,QWORD PTR [rip+0xbf1b]        # 11670 <s_bss>
    5755:	48 8b 05 e4 bc 00 00 	mov    rax,QWORD PTR [rip+0xbce4]        # 11440 <rax>
    575c:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    5763:	48 89 10             	mov    QWORD PTR [rax],rdx
    5766:	48 8b 15 03 bf 00 00 	mov    rdx,QWORD PTR [rip+0xbf03]        # 11670 <s_bss>
    576d:	48 8b 05 44 bd 00 00 	mov    rax,QWORD PTR [rip+0xbd44]        # 114b8 <rdx>
    5774:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    5778:	48 89 10             	mov    QWORD PTR [rax],rdx
    577b:	48 8b 05 36 bd 00 00 	mov    rax,QWORD PTR [rip+0xbd36]        # 114b8 <rdx>
    5782:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5785:	48 89 c2             	mov    rdx,rax
    5788:	48 8b 05 29 bd 00 00 	mov    rax,QWORD PTR [rip+0xbd29]        # 114b8 <rdx>
    578f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5792:	48 89 10             	mov    QWORD PTR [rax],rdx
    5795:	48 8b 05 a4 bc 00 00 	mov    rax,QWORD PTR [rip+0xbca4]        # 11440 <rax>
    579c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    579f:	48 89 c2             	mov    rdx,rax
    57a2:	48 8b 05 97 bc 00 00 	mov    rax,QWORD PTR [rip+0xbc97]        # 11440 <rax>
    57a9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    57ac:	48 89 10             	mov    QWORD PTR [rax],rdx
    57af:	48 8b 05 8a bc 00 00 	mov    rax,QWORD PTR [rip+0xbc8a]        # 11440 <rax>
    57b6:	48 8b 15 fb bc 00 00 	mov    rdx,QWORD PTR [rip+0xbcfb]        # 114b8 <rdx>
    57bd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    57c0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    57c3:	48 89 02             	mov    QWORD PTR [rdx],rax
    57c6:	48 8b 15 a3 be 00 00 	mov    rdx,QWORD PTR [rip+0xbea3]        # 11670 <s_bss>
    57cd:	48 8b 05 6c bc 00 00 	mov    rax,QWORD PTR [rip+0xbc6c]        # 11440 <rax>
    57d4:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    57d8:	48 89 10             	mov    QWORD PTR [rax],rdx
    57db:	48 8b 05 5e bc 00 00 	mov    rax,QWORD PTR [rip+0xbc5e]        # 11440 <rax>
    57e2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    57e5:	48 89 c2             	mov    rdx,rax
    57e8:	48 8b 05 51 bc 00 00 	mov    rax,QWORD PTR [rip+0xbc51]        # 11440 <rax>
    57ef:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    57f2:	48 89 10             	mov    QWORD PTR [rax],rdx
    57f5:	48 8b 15 44 bc 00 00 	mov    rdx,QWORD PTR [rip+0xbc44]        # 11440 <rax>
    57fc:	48 8b 05 b5 bc 00 00 	mov    rax,QWORD PTR [rip+0xbcb5]        # 114b8 <rdx>
    5803:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5806:	48 89 10             	mov    QWORD PTR [rax],rdx
    5809:	48 8b 15 60 be 00 00 	mov    rdx,QWORD PTR [rip+0xbe60]        # 11670 <s_bss>
    5810:	48 8b 05 29 bc 00 00 	mov    rax,QWORD PTR [rip+0xbc29]        # 11440 <rax>
    5817:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    581b:	48 89 10             	mov    QWORD PTR [rax],rdx
    581e:	48 8b 05 93 bc 00 00 	mov    rax,QWORD PTR [rip+0xbc93]        # 114b8 <rdx>
    5825:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5828:	48 89 c2             	mov    rdx,rax
    582b:	48 8b 05 86 bc 00 00 	mov    rax,QWORD PTR [rip+0xbc86]        # 114b8 <rdx>
    5832:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5835:	48 89 10             	mov    QWORD PTR [rax],rdx
    5838:	48 8b 05 79 bc 00 00 	mov    rax,QWORD PTR [rip+0xbc79]        # 114b8 <rdx>
    583f:	48 8b 15 fa bb 00 00 	mov    rdx,QWORD PTR [rip+0xbbfa]        # 11440 <rax>
    5846:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5849:	48 8b 00             	mov    rax,QWORD PTR [rax]
    584c:	48 89 02             	mov    QWORD PTR [rdx],rax
    584f:	48 8b 15 1a be 00 00 	mov    rdx,QWORD PTR [rip+0xbe1a]        # 11670 <s_bss>
    5856:	48 8b 05 e3 bb 00 00 	mov    rax,QWORD PTR [rip+0xbbe3]        # 11440 <rax>
    585d:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    5864:	48 89 10             	mov    QWORD PTR [rax],rdx
    5867:	48 8b 05 d2 bb 00 00 	mov    rax,QWORD PTR [rip+0xbbd2]        # 11440 <rax>
    586e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5871:	48 89 c2             	mov    rdx,rax
    5874:	48 8b 05 c5 bb 00 00 	mov    rax,QWORD PTR [rip+0xbbc5]        # 11440 <rax>
    587b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    587e:	48 89 10             	mov    QWORD PTR [rax],rdx
    5881:	48 8b 05 b8 bb 00 00 	mov    rax,QWORD PTR [rip+0xbbb8]        # 11440 <rax>
    5888:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    588b:	48 8b 05 ae bb 00 00 	mov    rax,QWORD PTR [rip+0xbbae]        # 11440 <rax>
    5892:	48 83 ea 08          	sub    rdx,0x8
    5896:	48 89 10             	mov    QWORD PTR [rax],rdx
    5899:	48 8b 15 a0 bb 00 00 	mov    rdx,QWORD PTR [rip+0xbba0]        # 11440 <rax>
    58a0:	48 8b 05 11 bc 00 00 	mov    rax,QWORD PTR [rip+0xbc11]        # 114b8 <rdx>
    58a7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    58aa:	48 89 10             	mov    QWORD PTR [rax],rdx
    58ad:	48 8b 15 bc bd 00 00 	mov    rdx,QWORD PTR [rip+0xbdbc]        # 11670 <s_bss>
    58b4:	48 8b 05 85 bb 00 00 	mov    rax,QWORD PTR [rip+0xbb85]        # 11440 <rax>
    58bb:	48 8b 52 48          	mov    rdx,QWORD PTR [rdx+0x48]
    58bf:	48 89 10             	mov    QWORD PTR [rax],rdx
    58c2:	48 8b 05 ef bb 00 00 	mov    rax,QWORD PTR [rip+0xbbef]        # 114b8 <rdx>
    58c9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    58cc:	48 89 c2             	mov    rdx,rax
    58cf:	48 8b 05 e2 bb 00 00 	mov    rax,QWORD PTR [rip+0xbbe2]        # 114b8 <rdx>
    58d6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    58d9:	48 89 10             	mov    QWORD PTR [rax],rdx
    58dc:	48 8b 05 d5 bb 00 00 	mov    rax,QWORD PTR [rip+0xbbd5]        # 114b8 <rdx>
    58e3:	48 8b 15 56 bb 00 00 	mov    rdx,QWORD PTR [rip+0xbb56]        # 11440 <rax>
    58ea:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    58ed:	48 8b 00             	mov    rax,QWORD PTR [rax]
    58f0:	48 89 02             	mov    QWORD PTR [rdx],rax
    58f3:	48 8b 15 76 bd 00 00 	mov    rdx,QWORD PTR [rip+0xbd76]        # 11670 <s_bss>
    58fa:	48 8b 05 b7 bb 00 00 	mov    rax,QWORD PTR [rip+0xbbb7]        # 114b8 <rdx>
    5901:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    5908:	48 89 10             	mov    QWORD PTR [rax],rdx
    590b:	48 8b 15 5e bd 00 00 	mov    rdx,QWORD PTR [rip+0xbd5e]        # 11670 <s_bss>
    5912:	48 8b 05 27 bb 00 00 	mov    rax,QWORD PTR [rip+0xbb27]        # 11440 <rax>
    5919:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    5920:	48 89 10             	mov    QWORD PTR [rax],rdx
    5923:	48 8b 05 8e bb 00 00 	mov    rax,QWORD PTR [rip+0xbb8e]        # 114b8 <rdx>
    592a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    592d:	48 89 c2             	mov    rdx,rax
    5930:	48 8b 05 81 bb 00 00 	mov    rax,QWORD PTR [rip+0xbb81]        # 114b8 <rdx>
    5937:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    593a:	48 89 10             	mov    QWORD PTR [rax],rdx
    593d:	48 8b 05 74 bb 00 00 	mov    rax,QWORD PTR [rip+0xbb74]        # 114b8 <rdx>
    5944:	48 8b 15 f5 ba 00 00 	mov    rdx,QWORD PTR [rip+0xbaf5]        # 11440 <rax>
    594b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    594e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5951:	48 89 02             	mov    QWORD PTR [rdx],rax
    5954:	48 8b 15 15 bd 00 00 	mov    rdx,QWORD PTR [rip+0xbd15]        # 11670 <s_bss>
    595b:	48 8b 05 06 bb 00 00 	mov    rax,QWORD PTR [rip+0xbb06]        # 11468 <rbx>
    5962:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    5969:	48 89 10             	mov    QWORD PTR [rax],rdx
    596c:	e8 37 cd ff ff       	call   26a8 <pop_u64_>
    5971:	48 8b 05 c8 ba 00 00 	mov    rax,QWORD PTR [rip+0xbac8]        # 11440 <rax>
    5978:	48 8b 15 e9 ba 00 00 	mov    rdx,QWORD PTR [rip+0xbae9]        # 11468 <rbx>
    597f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5982:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5985:	48 89 02             	mov    QWORD PTR [rdx],rax
    5988:	48 8b 05 91 bb 00 00 	mov    rax,QWORD PTR [rip+0xbb91]        # 11520 <rbp>
    598f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5992:	48 83 e8 08          	sub    rax,0x8
    5996:	48 89 c2             	mov    rdx,rax
    5999:	48 8b 05 c8 ba 00 00 	mov    rax,QWORD PTR [rip+0xbac8]        # 11468 <rbx>
    59a0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    59a3:	48 89 10             	mov    QWORD PTR [rax],rdx
    59a6:	48 8b 15 73 bb 00 00 	mov    rdx,QWORD PTR [rip+0xbb73]        # 11520 <rbp>
    59ad:	48 8b 05 8c bb 00 00 	mov    rax,QWORD PTR [rip+0xbb8c]        # 11540 <rsp>
    59b4:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    59b7:	48 89 10             	mov    QWORD PTR [rax],rdx
    59ba:	48 8b 1d 5f bb 00 00 	mov    rbx,QWORD PTR [rip+0xbb5f]        # 11520 <rbp>
    59c1:	e8 74 bc ff ff       	call   163a <pop_u64>
    59c6:	48 89 03             	mov    QWORD PTR [rbx],rax
    59c9:	90                   	nop
    59ca:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    59ce:	c9                   	leave  
    59cf:	c3                   	ret    

00000000000059d0 <fib_tbl_dyn>:
    59d0:	f3 0f 1e fa          	endbr64 
    59d4:	55                   	push   rbp
    59d5:	48 89 e5             	mov    rbp,rsp
    59d8:	53                   	push   rbx
    59d9:	48 83 ec 08          	sub    rsp,0x8
    59dd:	48 8b 05 3c bb 00 00 	mov    rax,QWORD PTR [rip+0xbb3c]        # 11520 <rbp>
    59e4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    59e7:	48 89 c7             	mov    rdi,rax
    59ea:	e8 14 bc ff ff       	call   1603 <push_u64>
    59ef:	48 8b 15 4a bb 00 00 	mov    rdx,QWORD PTR [rip+0xbb4a]        # 11540 <rsp>
    59f6:	48 8b 05 23 bb 00 00 	mov    rax,QWORD PTR [rip+0xbb23]        # 11520 <rbp>
    59fd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5a00:	48 89 10             	mov    QWORD PTR [rax],rdx
    5a03:	48 8b 05 5e ba 00 00 	mov    rax,QWORD PTR [rip+0xba5e]        # 11468 <rbx>
    5a0a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5a0d:	48 89 c7             	mov    rdi,rax
    5a10:	e8 ee bb ff ff       	call   1603 <push_u64>
    5a15:	48 8b 05 24 bb 00 00 	mov    rax,QWORD PTR [rip+0xbb24]        # 11540 <rsp>
    5a1c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    5a1f:	48 8b 05 1a bb 00 00 	mov    rax,QWORD PTR [rip+0xbb1a]        # 11540 <rsp>
    5a26:	48 83 ea 08          	sub    rdx,0x8
    5a2a:	48 89 10             	mov    QWORD PTR [rax],rdx
    5a2d:	48 8b 15 3c bc 00 00 	mov    rdx,QWORD PTR [rip+0xbc3c]        # 11670 <s_bss>
    5a34:	48 8b 05 05 ba 00 00 	mov    rax,QWORD PTR [rip+0xba05]        # 11440 <rax>
    5a3b:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    5a42:	48 89 10             	mov    QWORD PTR [rax],rdx
    5a45:	48 8b 05 f4 b9 00 00 	mov    rax,QWORD PTR [rip+0xb9f4]        # 11440 <rax>
    5a4c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5a4f:	48 89 c2             	mov    rdx,rax
    5a52:	48 8b 05 e7 b9 00 00 	mov    rax,QWORD PTR [rip+0xb9e7]        # 11440 <rax>
    5a59:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5a5c:	48 89 10             	mov    QWORD PTR [rax],rdx
    5a5f:	48 8b 15 da b9 00 00 	mov    rdx,QWORD PTR [rip+0xb9da]        # 11440 <rax>
    5a66:	48 8b 05 93 ba 00 00 	mov    rax,QWORD PTR [rip+0xba93]        # 11500 <rdi>
    5a6d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5a70:	48 89 10             	mov    QWORD PTR [rax],rdx
    5a73:	e8 dc ca ff ff       	call   2554 <push_u64_>
    5a78:	48 8b 15 f1 bb 00 00 	mov    rdx,QWORD PTR [rip+0xbbf1]        # 11670 <s_bss>
    5a7f:	48 8b 05 32 ba 00 00 	mov    rax,QWORD PTR [rip+0xba32]        # 114b8 <rdx>
    5a86:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    5a8d:	48 89 10             	mov    QWORD PTR [rax],rdx
    5a90:	48 8b 15 d9 bb 00 00 	mov    rdx,QWORD PTR [rip+0xbbd9]        # 11670 <s_bss>
    5a97:	48 8b 05 a2 b9 00 00 	mov    rax,QWORD PTR [rip+0xb9a2]        # 11440 <rax>
    5a9e:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    5aa5:	48 89 10             	mov    QWORD PTR [rax],rdx
    5aa8:	48 8b 05 09 ba 00 00 	mov    rax,QWORD PTR [rip+0xba09]        # 114b8 <rdx>
    5aaf:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5ab2:	48 89 c2             	mov    rdx,rax
    5ab5:	48 8b 05 fc b9 00 00 	mov    rax,QWORD PTR [rip+0xb9fc]        # 114b8 <rdx>
    5abc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5abf:	48 89 10             	mov    QWORD PTR [rax],rdx
    5ac2:	48 8b 05 ef b9 00 00 	mov    rax,QWORD PTR [rip+0xb9ef]        # 114b8 <rdx>
    5ac9:	48 8b 15 70 b9 00 00 	mov    rdx,QWORD PTR [rip+0xb970]        # 11440 <rax>
    5ad0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5ad3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5ad6:	48 89 02             	mov    QWORD PTR [rdx],rax
    5ad9:	48 8b 15 90 bb 00 00 	mov    rdx,QWORD PTR [rip+0xbb90]        # 11670 <s_bss>
    5ae0:	48 8b 05 59 b9 00 00 	mov    rax,QWORD PTR [rip+0xb959]        # 11440 <rax>
    5ae7:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    5aee:	48 89 10             	mov    QWORD PTR [rax],rdx
    5af1:	48 8b 05 48 b9 00 00 	mov    rax,QWORD PTR [rip+0xb948]        # 11440 <rax>
    5af8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5afb:	48 89 c2             	mov    rdx,rax
    5afe:	48 8b 05 b3 b9 00 00 	mov    rax,QWORD PTR [rip+0xb9b3]        # 114b8 <rdx>
    5b05:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5b08:	48 89 10             	mov    QWORD PTR [rax],rdx
    5b0b:	48 8b 15 5e bb 00 00 	mov    rdx,QWORD PTR [rip+0xbb5e]        # 11670 <s_bss>
    5b12:	48 8b 05 27 b9 00 00 	mov    rax,QWORD PTR [rip+0xb927]        # 11440 <rax>
    5b19:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    5b20:	48 89 10             	mov    QWORD PTR [rax],rdx
    5b23:	48 8b 05 8e b9 00 00 	mov    rax,QWORD PTR [rip+0xb98e]        # 114b8 <rdx>
    5b2a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    5b2d:	48 8b 05 84 b9 00 00 	mov    rax,QWORD PTR [rip+0xb984]        # 114b8 <rdx>
    5b34:	48 83 ea 20          	sub    rdx,0x20
    5b38:	48 89 10             	mov    QWORD PTR [rax],rdx
    5b3b:	48 8b 05 76 b9 00 00 	mov    rax,QWORD PTR [rip+0xb976]        # 114b8 <rdx>
    5b42:	48 8b 15 f7 b8 00 00 	mov    rdx,QWORD PTR [rip+0xb8f7]        # 11440 <rax>
    5b49:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5b4c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5b4f:	48 89 02             	mov    QWORD PTR [rdx],rax
    5b52:	48 8b 15 17 bb 00 00 	mov    rdx,QWORD PTR [rip+0xbb17]        # 11670 <s_bss>
    5b59:	48 8b 05 e0 b8 00 00 	mov    rax,QWORD PTR [rip+0xb8e0]        # 11440 <rax>
    5b60:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    5b67:	48 89 10             	mov    QWORD PTR [rax],rdx
    5b6a:	48 8b 15 ff ba 00 00 	mov    rdx,QWORD PTR [rip+0xbaff]        # 11670 <s_bss>
    5b71:	48 8b 05 40 b9 00 00 	mov    rax,QWORD PTR [rip+0xb940]        # 114b8 <rdx>
    5b78:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    5b7f:	48 89 10             	mov    QWORD PTR [rax],rdx
    5b82:	48 8b 05 2f b9 00 00 	mov    rax,QWORD PTR [rip+0xb92f]        # 114b8 <rdx>
    5b89:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5b8c:	48 89 c2             	mov    rdx,rax
    5b8f:	48 8b 05 22 b9 00 00 	mov    rax,QWORD PTR [rip+0xb922]        # 114b8 <rdx>
    5b96:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5b99:	48 89 10             	mov    QWORD PTR [rax],rdx
    5b9c:	48 8b 05 15 b9 00 00 	mov    rax,QWORD PTR [rip+0xb915]        # 114b8 <rdx>
    5ba3:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    5ba6:	48 8b 05 0b b9 00 00 	mov    rax,QWORD PTR [rip+0xb90b]        # 114b8 <rdx>
    5bad:	48 83 ea 18          	sub    rdx,0x18
    5bb1:	48 89 10             	mov    QWORD PTR [rax],rdx
    5bb4:	48 8b 05 85 b8 00 00 	mov    rax,QWORD PTR [rip+0xb885]        # 11440 <rax>
    5bbb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5bbe:	48 89 c2             	mov    rdx,rax
    5bc1:	48 8b 05 78 b8 00 00 	mov    rax,QWORD PTR [rip+0xb878]        # 11440 <rax>
    5bc8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5bcb:	48 89 10             	mov    QWORD PTR [rax],rdx
    5bce:	48 8b 05 6b b8 00 00 	mov    rax,QWORD PTR [rip+0xb86b]        # 11440 <rax>
    5bd5:	48 8b 15 dc b8 00 00 	mov    rdx,QWORD PTR [rip+0xb8dc]        # 114b8 <rdx>
    5bdc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5bdf:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5be2:	48 89 02             	mov    QWORD PTR [rdx],rax
    5be5:	48 8b 15 84 ba 00 00 	mov    rdx,QWORD PTR [rip+0xba84]        # 11670 <s_bss>
    5bec:	48 8b 05 4d b8 00 00 	mov    rax,QWORD PTR [rip+0xb84d]        # 11440 <rax>
    5bf3:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    5bfa:	48 89 10             	mov    QWORD PTR [rax],rdx
    5bfd:	48 8b 05 3c b8 00 00 	mov    rax,QWORD PTR [rip+0xb83c]        # 11440 <rax>
    5c04:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5c07:	48 89 c2             	mov    rdx,rax
    5c0a:	48 8b 05 2f b8 00 00 	mov    rax,QWORD PTR [rip+0xb82f]        # 11440 <rax>
    5c11:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5c14:	48 89 10             	mov    QWORD PTR [rax],rdx
    5c17:	48 8b 05 22 b8 00 00 	mov    rax,QWORD PTR [rip+0xb822]        # 11440 <rax>
    5c1e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    5c21:	48 8b 05 18 b8 00 00 	mov    rax,QWORD PTR [rip+0xb818]        # 11440 <rax>
    5c28:	48 83 ea 18          	sub    rdx,0x18
    5c2c:	48 89 10             	mov    QWORD PTR [rax],rdx
    5c2f:	48 8b 15 0a b8 00 00 	mov    rdx,QWORD PTR [rip+0xb80a]        # 11440 <rax>
    5c36:	48 8b 05 7b b8 00 00 	mov    rax,QWORD PTR [rip+0xb87b]        # 114b8 <rdx>
    5c3d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5c40:	48 89 10             	mov    QWORD PTR [rax],rdx
    5c43:	48 8b 15 26 ba 00 00 	mov    rdx,QWORD PTR [rip+0xba26]        # 11670 <s_bss>
    5c4a:	48 8b 05 ef b7 00 00 	mov    rax,QWORD PTR [rip+0xb7ef]        # 11440 <rax>
    5c51:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    5c55:	48 89 10             	mov    QWORD PTR [rax],rdx
    5c58:	48 8b 05 59 b8 00 00 	mov    rax,QWORD PTR [rip+0xb859]        # 114b8 <rdx>
    5c5f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5c62:	48 89 c2             	mov    rdx,rax
    5c65:	48 8b 05 4c b8 00 00 	mov    rax,QWORD PTR [rip+0xb84c]        # 114b8 <rdx>
    5c6c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5c6f:	48 89 10             	mov    QWORD PTR [rax],rdx
    5c72:	48 8b 05 3f b8 00 00 	mov    rax,QWORD PTR [rip+0xb83f]        # 114b8 <rdx>
    5c79:	48 8b 15 c0 b7 00 00 	mov    rdx,QWORD PTR [rip+0xb7c0]        # 11440 <rax>
    5c80:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5c83:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5c86:	48 89 02             	mov    QWORD PTR [rdx],rax
    5c89:	48 8b 15 e0 b9 00 00 	mov    rdx,QWORD PTR [rip+0xb9e0]        # 11670 <s_bss>
    5c90:	48 8b 05 a9 b7 00 00 	mov    rax,QWORD PTR [rip+0xb7a9]        # 11440 <rax>
    5c97:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    5c9b:	48 89 10             	mov    QWORD PTR [rax],rdx
    5c9e:	48 8b 05 9b b7 00 00 	mov    rax,QWORD PTR [rip+0xb79b]        # 11440 <rax>
    5ca5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5ca8:	48 89 c2             	mov    rdx,rax
    5cab:	48 8b 05 06 b8 00 00 	mov    rax,QWORD PTR [rip+0xb806]        # 114b8 <rdx>
    5cb2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5cb5:	48 89 10             	mov    QWORD PTR [rax],rdx
    5cb8:	48 8b 15 b1 b9 00 00 	mov    rdx,QWORD PTR [rip+0xb9b1]        # 11670 <s_bss>
    5cbf:	48 8b 05 7a b7 00 00 	mov    rax,QWORD PTR [rip+0xb77a]        # 11440 <rax>
    5cc6:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    5cca:	48 89 10             	mov    QWORD PTR [rax],rdx
    5ccd:	48 8b 05 e4 b7 00 00 	mov    rax,QWORD PTR [rip+0xb7e4]        # 114b8 <rdx>
    5cd4:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    5cd7:	48 8b 05 da b7 00 00 	mov    rax,QWORD PTR [rip+0xb7da]        # 114b8 <rdx>
    5cde:	48 83 c2 01          	add    rdx,0x1
    5ce2:	48 89 10             	mov    QWORD PTR [rax],rdx
    5ce5:	48 8b 05 cc b7 00 00 	mov    rax,QWORD PTR [rip+0xb7cc]        # 114b8 <rdx>
    5cec:	48 8b 15 4d b7 00 00 	mov    rdx,QWORD PTR [rip+0xb74d]        # 11440 <rax>
    5cf3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5cf6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5cf9:	48 89 02             	mov    QWORD PTR [rdx],rax
    5cfc:	48 8b 15 6d b9 00 00 	mov    rdx,QWORD PTR [rip+0xb96d]        # 11670 <s_bss>
    5d03:	48 8b 05 36 b7 00 00 	mov    rax,QWORD PTR [rip+0xb736]        # 11440 <rax>
    5d0a:	48 8b 92 c8 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc8]
    5d11:	48 89 10             	mov    QWORD PTR [rax],rdx
    5d14:	48 8b 05 25 b7 00 00 	mov    rax,QWORD PTR [rip+0xb725]        # 11440 <rax>
    5d1b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5d1e:	48 c7 00 08 00 00 00 	mov    QWORD PTR [rax],0x8
    5d25:	48 8b 15 44 b9 00 00 	mov    rdx,QWORD PTR [rip+0xb944]        # 11670 <s_bss>
    5d2c:	48 8b 05 85 b7 00 00 	mov    rax,QWORD PTR [rip+0xb785]        # 114b8 <rdx>
    5d33:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    5d37:	48 89 10             	mov    QWORD PTR [rax],rdx
    5d3a:	48 8b 15 2f b9 00 00 	mov    rdx,QWORD PTR [rip+0xb92f]        # 11670 <s_bss>
    5d41:	48 8b 05 f8 b6 00 00 	mov    rax,QWORD PTR [rip+0xb6f8]        # 11440 <rax>
    5d48:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    5d4f:	48 89 10             	mov    QWORD PTR [rax],rdx
    5d52:	48 8b 05 5f b7 00 00 	mov    rax,QWORD PTR [rip+0xb75f]        # 114b8 <rdx>
    5d59:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5d5c:	48 89 c2             	mov    rdx,rax
    5d5f:	48 8b 05 52 b7 00 00 	mov    rax,QWORD PTR [rip+0xb752]        # 114b8 <rdx>
    5d66:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5d69:	48 89 10             	mov    QWORD PTR [rax],rdx
    5d6c:	48 8b 05 45 b7 00 00 	mov    rax,QWORD PTR [rip+0xb745]        # 114b8 <rdx>
    5d73:	48 8b 15 c6 b6 00 00 	mov    rdx,QWORD PTR [rip+0xb6c6]        # 11440 <rax>
    5d7a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5d7d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5d80:	48 89 02             	mov    QWORD PTR [rdx],rax
    5d83:	48 8b 15 e6 b8 00 00 	mov    rdx,QWORD PTR [rip+0xb8e6]        # 11670 <s_bss>
    5d8a:	48 8b 05 af b6 00 00 	mov    rax,QWORD PTR [rip+0xb6af]        # 11440 <rax>
    5d91:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    5d98:	48 89 10             	mov    QWORD PTR [rax],rdx
    5d9b:	48 8b 05 9e b6 00 00 	mov    rax,QWORD PTR [rip+0xb69e]        # 11440 <rax>
    5da2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5da5:	48 89 c2             	mov    rdx,rax
    5da8:	48 8b 05 09 b7 00 00 	mov    rax,QWORD PTR [rip+0xb709]        # 114b8 <rdx>
    5daf:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5db2:	48 89 10             	mov    QWORD PTR [rax],rdx
    5db5:	48 8b 15 b4 b8 00 00 	mov    rdx,QWORD PTR [rip+0xb8b4]        # 11670 <s_bss>
    5dbc:	48 8b 05 7d b6 00 00 	mov    rax,QWORD PTR [rip+0xb67d]        # 11440 <rax>
    5dc3:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    5dca:	48 89 10             	mov    QWORD PTR [rax],rdx
    5dcd:	48 8b 05 6c b6 00 00 	mov    rax,QWORD PTR [rip+0xb66c]        # 11440 <rax>
    5dd4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5dd7:	48 89 c2             	mov    rdx,rax
    5dda:	48 8b 05 5f b6 00 00 	mov    rax,QWORD PTR [rip+0xb65f]        # 11440 <rax>
    5de1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5de4:	48 89 10             	mov    QWORD PTR [rax],rdx
    5de7:	48 8b 15 ca b6 00 00 	mov    rdx,QWORD PTR [rip+0xb6ca]        # 114b8 <rdx>
    5dee:	48 8b 05 eb b6 00 00 	mov    rax,QWORD PTR [rip+0xb6eb]        # 114e0 <rsi>
    5df5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5df8:	48 89 10             	mov    QWORD PTR [rax],rdx
    5dfb:	48 8b 15 3e b6 00 00 	mov    rdx,QWORD PTR [rip+0xb63e]        # 11440 <rax>
    5e02:	48 8b 05 f7 b6 00 00 	mov    rax,QWORD PTR [rip+0xb6f7]        # 11500 <rdi>
    5e09:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5e0c:	48 89 10             	mov    QWORD PTR [rax],rdx
    5e0f:	48 8b 05 ca b6 00 00 	mov    rax,QWORD PTR [rip+0xb6ca]        # 114e0 <rsi>
    5e16:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    5e19:	48 8b 05 e0 b6 00 00 	mov    rax,QWORD PTR [rip+0xb6e0]        # 11500 <rdi>
    5e20:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5e23:	48 89 d6             	mov    rsi,rdx
    5e26:	48 89 c7             	mov    rdi,rax
    5e29:	e8 a2 b2 ff ff       	call   10d0 <calloc@plt>
    5e2e:	48 89 c2             	mov    rdx,rax
    5e31:	48 8b 05 08 b6 00 00 	mov    rax,QWORD PTR [rip+0xb608]        # 11440 <rax>
    5e38:	48 89 10             	mov    QWORD PTR [rax],rdx
    5e3b:	48 8b 15 fe b5 00 00 	mov    rdx,QWORD PTR [rip+0xb5fe]        # 11440 <rax>
    5e42:	48 8b 05 6f b6 00 00 	mov    rax,QWORD PTR [rip+0xb66f]        # 114b8 <rdx>
    5e49:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5e4c:	48 89 10             	mov    QWORD PTR [rax],rdx
    5e4f:	48 8b 15 1a b8 00 00 	mov    rdx,QWORD PTR [rip+0xb81a]        # 11670 <s_bss>
    5e56:	48 8b 05 e3 b5 00 00 	mov    rax,QWORD PTR [rip+0xb5e3]        # 11440 <rax>
    5e5d:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    5e61:	48 89 10             	mov    QWORD PTR [rax],rdx
    5e64:	48 8b 05 4d b6 00 00 	mov    rax,QWORD PTR [rip+0xb64d]        # 114b8 <rdx>
    5e6b:	48 8b 15 ce b5 00 00 	mov    rdx,QWORD PTR [rip+0xb5ce]        # 11440 <rax>
    5e72:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5e75:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5e78:	48 89 02             	mov    QWORD PTR [rdx],rax
    5e7b:	48 8b 15 ee b7 00 00 	mov    rdx,QWORD PTR [rip+0xb7ee]        # 11670 <s_bss>
    5e82:	48 8b 05 b7 b5 00 00 	mov    rax,QWORD PTR [rip+0xb5b7]        # 11440 <rax>
    5e89:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    5e8d:	48 89 10             	mov    QWORD PTR [rax],rdx
    5e90:	48 8b 15 d9 b7 00 00 	mov    rdx,QWORD PTR [rip+0xb7d9]        # 11670 <s_bss>
    5e97:	48 8b 05 1a b6 00 00 	mov    rax,QWORD PTR [rip+0xb61a]        # 114b8 <rdx>
    5e9e:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    5ea5:	48 89 10             	mov    QWORD PTR [rax],rdx
    5ea8:	48 8b 05 09 b6 00 00 	mov    rax,QWORD PTR [rip+0xb609]        # 114b8 <rdx>
    5eaf:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5eb2:	48 89 c2             	mov    rdx,rax
    5eb5:	48 8b 05 fc b5 00 00 	mov    rax,QWORD PTR [rip+0xb5fc]        # 114b8 <rdx>
    5ebc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5ebf:	48 89 10             	mov    QWORD PTR [rax],rdx
    5ec2:	48 8b 05 ef b5 00 00 	mov    rax,QWORD PTR [rip+0xb5ef]        # 114b8 <rdx>
    5ec9:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    5ecc:	48 8b 05 e5 b5 00 00 	mov    rax,QWORD PTR [rip+0xb5e5]        # 114b8 <rdx>
    5ed3:	48 83 ea 10          	sub    rdx,0x10
    5ed7:	48 89 10             	mov    QWORD PTR [rax],rdx
    5eda:	48 8b 05 5f b5 00 00 	mov    rax,QWORD PTR [rip+0xb55f]        # 11440 <rax>
    5ee1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5ee4:	48 89 c2             	mov    rdx,rax
    5ee7:	48 8b 05 52 b5 00 00 	mov    rax,QWORD PTR [rip+0xb552]        # 11440 <rax>
    5eee:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5ef1:	48 89 10             	mov    QWORD PTR [rax],rdx
    5ef4:	48 8b 05 45 b5 00 00 	mov    rax,QWORD PTR [rip+0xb545]        # 11440 <rax>
    5efb:	48 8b 15 b6 b5 00 00 	mov    rdx,QWORD PTR [rip+0xb5b6]        # 114b8 <rdx>
    5f02:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5f05:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5f08:	48 89 02             	mov    QWORD PTR [rdx],rax
    5f0b:	48 8b 15 5e b7 00 00 	mov    rdx,QWORD PTR [rip+0xb75e]        # 11670 <s_bss>
    5f12:	48 8b 05 27 b5 00 00 	mov    rax,QWORD PTR [rip+0xb527]        # 11440 <rax>
    5f19:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    5f20:	48 89 10             	mov    QWORD PTR [rax],rdx
    5f23:	48 8b 05 16 b5 00 00 	mov    rax,QWORD PTR [rip+0xb516]        # 11440 <rax>
    5f2a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5f2d:	48 89 c2             	mov    rdx,rax
    5f30:	48 8b 05 09 b5 00 00 	mov    rax,QWORD PTR [rip+0xb509]        # 11440 <rax>
    5f37:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5f3a:	48 89 10             	mov    QWORD PTR [rax],rdx
    5f3d:	48 8b 05 fc b4 00 00 	mov    rax,QWORD PTR [rip+0xb4fc]        # 11440 <rax>
    5f44:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    5f47:	48 8b 05 f2 b4 00 00 	mov    rax,QWORD PTR [rip+0xb4f2]        # 11440 <rax>
    5f4e:	48 83 ea 10          	sub    rdx,0x10
    5f52:	48 89 10             	mov    QWORD PTR [rax],rdx
    5f55:	48 8b 05 e4 b4 00 00 	mov    rax,QWORD PTR [rip+0xb4e4]        # 11440 <rax>
    5f5c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5f5f:	48 89 c2             	mov    rdx,rax
    5f62:	48 8b 05 d7 b4 00 00 	mov    rax,QWORD PTR [rip+0xb4d7]        # 11440 <rax>
    5f69:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5f6c:	48 89 10             	mov    QWORD PTR [rax],rdx
    5f6f:	48 8b 05 ca b4 00 00 	mov    rax,QWORD PTR [rip+0xb4ca]        # 11440 <rax>
    5f76:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5f79:	48 85 c0             	test   rax,rax
    5f7c:	0f 85 a8 03 00 00    	jne    632a <fib_tbl_dyn+0x95a>
    5f82:	48 8b 15 97 b4 00 00 	mov    rdx,QWORD PTR [rip+0xb497]        # 11420 <stderr@GLIBC_2.2.5>
    5f89:	48 8b 05 28 b5 00 00 	mov    rax,QWORD PTR [rip+0xb528]        # 114b8 <rdx>
    5f90:	48 89 10             	mov    QWORD PTR [rax],rdx
    5f93:	48 8b 15 d6 b6 00 00 	mov    rdx,QWORD PTR [rip+0xb6d6]        # 11670 <s_bss>
    5f9a:	48 8b 05 9f b4 00 00 	mov    rax,QWORD PTR [rip+0xb49f]        # 11440 <rax>
    5fa1:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    5fa5:	48 89 10             	mov    QWORD PTR [rax],rdx
    5fa8:	48 8b 05 09 b5 00 00 	mov    rax,QWORD PTR [rip+0xb509]        # 114b8 <rdx>
    5faf:	48 8b 15 8a b4 00 00 	mov    rdx,QWORD PTR [rip+0xb48a]        # 11440 <rax>
    5fb6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    5fb9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5fbc:	48 89 02             	mov    QWORD PTR [rdx],rax
    5fbf:	48 8b 15 aa b6 00 00 	mov    rdx,QWORD PTR [rip+0xb6aa]        # 11670 <s_bss>
    5fc6:	48 8b 05 eb b4 00 00 	mov    rax,QWORD PTR [rip+0xb4eb]        # 114b8 <rdx>
    5fcd:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    5fd1:	48 89 10             	mov    QWORD PTR [rax],rdx
    5fd4:	48 8b 15 95 b6 00 00 	mov    rdx,QWORD PTR [rip+0xb695]        # 11670 <s_bss>
    5fdb:	48 8b 05 5e b4 00 00 	mov    rax,QWORD PTR [rip+0xb45e]        # 11440 <rax>
    5fe2:	48 8b 52 70          	mov    rdx,QWORD PTR [rdx+0x70]
    5fe6:	48 89 10             	mov    QWORD PTR [rax],rdx
    5fe9:	48 8b 05 c8 b4 00 00 	mov    rax,QWORD PTR [rip+0xb4c8]        # 114b8 <rdx>
    5ff0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5ff3:	48 89 c2             	mov    rdx,rax
    5ff6:	48 8b 05 bb b4 00 00 	mov    rax,QWORD PTR [rip+0xb4bb]        # 114b8 <rdx>
    5ffd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6000:	48 89 10             	mov    QWORD PTR [rax],rdx
    6003:	48 8b 05 ae b4 00 00 	mov    rax,QWORD PTR [rip+0xb4ae]        # 114b8 <rdx>
    600a:	48 8b 15 2f b4 00 00 	mov    rdx,QWORD PTR [rip+0xb42f]        # 11440 <rax>
    6011:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6014:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6017:	48 89 02             	mov    QWORD PTR [rdx],rax
    601a:	48 8b 15 4f b6 00 00 	mov    rdx,QWORD PTR [rip+0xb64f]        # 11670 <s_bss>
    6021:	48 8b 05 18 b4 00 00 	mov    rax,QWORD PTR [rip+0xb418]        # 11440 <rax>
    6028:	48 8b 92 a0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xa0]
    602f:	48 89 10             	mov    QWORD PTR [rax],rdx
    6032:	48 8b 05 07 b4 00 00 	mov    rax,QWORD PTR [rip+0xb407]        # 11440 <rax>
    6039:	48 8b 00             	mov    rax,QWORD PTR [rax]
    603c:	48 c7 00 17 00 00 00 	mov    QWORD PTR [rax],0x17
    6043:	48 8b 15 26 b6 00 00 	mov    rdx,QWORD PTR [rip+0xb626]        # 11670 <s_bss>
    604a:	48 8b 05 ef b3 00 00 	mov    rax,QWORD PTR [rip+0xb3ef]        # 11440 <rax>
    6051:	48 8b 92 c8 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc8]
    6058:	48 89 10             	mov    QWORD PTR [rax],rdx
    605b:	48 8b 05 de b3 00 00 	mov    rax,QWORD PTR [rip+0xb3de]        # 11440 <rax>
    6062:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6065:	48 c7 00 01 00 00 00 	mov    QWORD PTR [rax],0x1
    606c:	48 8b 15 fd b5 00 00 	mov    rdx,QWORD PTR [rip+0xb5fd]        # 11670 <s_bss>
    6073:	48 8b 05 c6 b3 00 00 	mov    rax,QWORD PTR [rip+0xb3c6]        # 11440 <rax>
    607a:	48 8b 92 40 02 00 00 	mov    rdx,QWORD PTR [rdx+0x240]
    6081:	48 89 10             	mov    QWORD PTR [rax],rdx
    6084:	48 8b 05 b5 b3 00 00 	mov    rax,QWORD PTR [rip+0xb3b5]        # 11440 <rax>
    608b:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    608e:	48 8b 05 23 b4 00 00 	mov    rax,QWORD PTR [rip+0xb423]        # 114b8 <rdx>
    6095:	48 83 c2 08          	add    rdx,0x8
    6099:	48 89 10             	mov    QWORD PTR [rax],rdx
    609c:	48 8b 15 cd b5 00 00 	mov    rdx,QWORD PTR [rip+0xb5cd]        # 11670 <s_bss>
    60a3:	48 8b 05 96 b3 00 00 	mov    rax,QWORD PTR [rip+0xb396]        # 11440 <rax>
    60aa:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    60ae:	48 89 10             	mov    QWORD PTR [rax],rdx
    60b1:	48 8b 05 00 b4 00 00 	mov    rax,QWORD PTR [rip+0xb400]        # 114b8 <rdx>
    60b8:	48 8b 15 81 b3 00 00 	mov    rdx,QWORD PTR [rip+0xb381]        # 11440 <rax>
    60bf:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    60c2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    60c5:	48 89 02             	mov    QWORD PTR [rdx],rax
    60c8:	48 8b 15 a1 b5 00 00 	mov    rdx,QWORD PTR [rip+0xb5a1]        # 11670 <s_bss>
    60cf:	48 8b 05 e2 b3 00 00 	mov    rax,QWORD PTR [rip+0xb3e2]        # 114b8 <rdx>
    60d6:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    60da:	48 89 10             	mov    QWORD PTR [rax],rdx
    60dd:	48 8b 15 8c b5 00 00 	mov    rdx,QWORD PTR [rip+0xb58c]        # 11670 <s_bss>
    60e4:	48 8b 05 55 b3 00 00 	mov    rax,QWORD PTR [rip+0xb355]        # 11440 <rax>
    60eb:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    60f2:	48 89 10             	mov    QWORD PTR [rax],rdx
    60f5:	48 8b 05 bc b3 00 00 	mov    rax,QWORD PTR [rip+0xb3bc]        # 114b8 <rdx>
    60fc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    60ff:	48 89 c2             	mov    rdx,rax
    6102:	48 8b 05 af b3 00 00 	mov    rax,QWORD PTR [rip+0xb3af]        # 114b8 <rdx>
    6109:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    610c:	48 89 10             	mov    QWORD PTR [rax],rdx
    610f:	48 8b 05 a2 b3 00 00 	mov    rax,QWORD PTR [rip+0xb3a2]        # 114b8 <rdx>
    6116:	48 8b 15 23 b3 00 00 	mov    rdx,QWORD PTR [rip+0xb323]        # 11440 <rax>
    611d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6120:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6123:	48 89 02             	mov    QWORD PTR [rdx],rax
    6126:	48 8b 15 43 b5 00 00 	mov    rdx,QWORD PTR [rip+0xb543]        # 11670 <s_bss>
    612d:	48 8b 05 0c b3 00 00 	mov    rax,QWORD PTR [rip+0xb30c]        # 11440 <rax>
    6134:	48 8b 52 70          	mov    rdx,QWORD PTR [rdx+0x70]
    6138:	48 89 10             	mov    QWORD PTR [rax],rdx
    613b:	48 8b 05 fe b2 00 00 	mov    rax,QWORD PTR [rip+0xb2fe]        # 11440 <rax>
    6142:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6145:	48 89 c2             	mov    rdx,rax
    6148:	48 8b 05 f1 b2 00 00 	mov    rax,QWORD PTR [rip+0xb2f1]        # 11440 <rax>
    614f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6152:	48 89 10             	mov    QWORD PTR [rax],rdx
    6155:	48 8b 15 e4 b2 00 00 	mov    rdx,QWORD PTR [rip+0xb2e4]        # 11440 <rax>
    615c:	48 8b 05 7d b3 00 00 	mov    rax,QWORD PTR [rip+0xb37d]        # 114e0 <rsi>
    6163:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6166:	48 89 10             	mov    QWORD PTR [rax],rdx
    6169:	48 8b 15 00 b5 00 00 	mov    rdx,QWORD PTR [rip+0xb500]        # 11670 <s_bss>
    6170:	48 8b 05 c9 b2 00 00 	mov    rax,QWORD PTR [rip+0xb2c9]        # 11440 <rax>
    6177:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    617e:	48 89 10             	mov    QWORD PTR [rax],rdx
    6181:	48 8b 05 b8 b2 00 00 	mov    rax,QWORD PTR [rip+0xb2b8]        # 11440 <rax>
    6188:	48 8b 00             	mov    rax,QWORD PTR [rax]
    618b:	48 89 c2             	mov    rdx,rax
    618e:	48 8b 05 23 b3 00 00 	mov    rax,QWORD PTR [rip+0xb323]        # 114b8 <rdx>
    6195:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6198:	48 89 10             	mov    QWORD PTR [rax],rdx
    619b:	48 8b 15 ce b4 00 00 	mov    rdx,QWORD PTR [rip+0xb4ce]        # 11670 <s_bss>
    61a2:	48 8b 05 97 b2 00 00 	mov    rax,QWORD PTR [rip+0xb297]        # 11440 <rax>
    61a9:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    61b0:	48 89 10             	mov    QWORD PTR [rax],rdx
    61b3:	48 8b 05 86 b2 00 00 	mov    rax,QWORD PTR [rip+0xb286]        # 11440 <rax>
    61ba:	48 8b 00             	mov    rax,QWORD PTR [rax]
    61bd:	48 89 c2             	mov    rdx,rax
    61c0:	48 8b 05 79 b2 00 00 	mov    rax,QWORD PTR [rip+0xb279]        # 11440 <rax>
    61c7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    61ca:	48 89 10             	mov    QWORD PTR [rax],rdx
    61cd:	48 8b 15 9c b4 00 00 	mov    rdx,QWORD PTR [rip+0xb49c]        # 11670 <s_bss>
    61d4:	48 8b 05 b5 b2 00 00 	mov    rax,QWORD PTR [rip+0xb2b5]        # 11490 <rcx>
    61db:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    61e2:	48 89 10             	mov    QWORD PTR [rax],rdx
    61e5:	48 8b 05 a4 b2 00 00 	mov    rax,QWORD PTR [rip+0xb2a4]        # 11490 <rcx>
    61ec:	48 8b 00             	mov    rax,QWORD PTR [rax]
    61ef:	48 89 c2             	mov    rdx,rax
    61f2:	48 8b 05 97 b2 00 00 	mov    rax,QWORD PTR [rip+0xb297]        # 11490 <rcx>
    61f9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    61fc:	48 89 10             	mov    QWORD PTR [rax],rdx
    61ff:	48 8b 15 8a b2 00 00 	mov    rdx,QWORD PTR [rip+0xb28a]        # 11490 <rcx>
    6206:	48 8b 05 f3 b2 00 00 	mov    rax,QWORD PTR [rip+0xb2f3]        # 11500 <rdi>
    620d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6210:	48 89 10             	mov    QWORD PTR [rax],rdx
    6213:	48 8b 15 56 b4 00 00 	mov    rdx,QWORD PTR [rip+0xb456]        # 11670 <s_bss>
    621a:	48 8b 05 47 b2 00 00 	mov    rax,QWORD PTR [rip+0xb247]        # 11468 <rbx>
    6221:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    6225:	48 89 10             	mov    QWORD PTR [rax],rdx
    6228:	48 8b 15 b1 b2 00 00 	mov    rdx,QWORD PTR [rip+0xb2b1]        # 114e0 <rsi>
    622f:	48 8b 05 5a b2 00 00 	mov    rax,QWORD PTR [rip+0xb25a]        # 11490 <rcx>
    6236:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6239:	48 89 10             	mov    QWORD PTR [rax],rdx
    623c:	48 8b 15 fd b1 00 00 	mov    rdx,QWORD PTR [rip+0xb1fd]        # 11440 <rax>
    6243:	48 8b 05 96 b2 00 00 	mov    rax,QWORD PTR [rip+0xb296]        # 114e0 <rsi>
    624a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    624d:	48 89 10             	mov    QWORD PTR [rax],rdx
    6250:	48 8b 05 39 b2 00 00 	mov    rax,QWORD PTR [rip+0xb239]        # 11490 <rcx>
    6257:	48 8b 00             	mov    rax,QWORD PTR [rax]
    625a:	48 89 c6             	mov    rsi,rax
    625d:	48 8b 05 54 b2 00 00 	mov    rax,QWORD PTR [rip+0xb254]        # 114b8 <rdx>
    6264:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    6267:	48 8b 05 72 b2 00 00 	mov    rax,QWORD PTR [rip+0xb272]        # 114e0 <rsi>
    626e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6271:	48 8b 0d 88 b2 00 00 	mov    rcx,QWORD PTR [rip+0xb288]        # 11500 <rdi>
    6278:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
    627b:	48 89 cf             	mov    rdi,rcx
    627e:	48 8b 1d bb b1 00 00 	mov    rbx,QWORD PTR [rip+0xb1bb]        # 11440 <rax>
    6285:	48 89 f1             	mov    rcx,rsi
    6288:	48 89 c6             	mov    rsi,rax
    628b:	e8 80 ae ff ff       	call   1110 <fwrite@plt>
    6290:	48 89 03             	mov    QWORD PTR [rbx],rax
    6293:	48 8b 05 a6 b1 00 00 	mov    rax,QWORD PTR [rip+0xb1a6]        # 11440 <rax>
    629a:	48 8b 15 c7 b1 00 00 	mov    rdx,QWORD PTR [rip+0xb1c7]        # 11468 <rbx>
    62a1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    62a4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    62a7:	48 89 02             	mov    QWORD PTR [rdx],rax
    62aa:	48 8b 15 bf b3 00 00 	mov    rdx,QWORD PTR [rip+0xb3bf]        # 11670 <s_bss>
    62b1:	48 8b 05 88 b1 00 00 	mov    rax,QWORD PTR [rip+0xb188]        # 11440 <rax>
    62b8:	48 8b 92 e8 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe8]
    62bf:	48 89 10             	mov    QWORD PTR [rax],rdx
    62c2:	48 8b 05 77 b1 00 00 	mov    rax,QWORD PTR [rip+0xb177]        # 11440 <rax>
    62c9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    62cc:	48 c7 00 01 00 00 00 	mov    QWORD PTR [rax],0x1
    62d3:	48 8b 15 96 b3 00 00 	mov    rdx,QWORD PTR [rip+0xb396]        # 11670 <s_bss>
    62da:	48 8b 05 5f b1 00 00 	mov    rax,QWORD PTR [rip+0xb15f]        # 11440 <rax>
    62e1:	48 8b 92 e8 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe8]
    62e8:	48 89 10             	mov    QWORD PTR [rax],rdx
    62eb:	48 8b 05 4e b1 00 00 	mov    rax,QWORD PTR [rip+0xb14e]        # 11440 <rax>
    62f2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    62f5:	48 89 c2             	mov    rdx,rax
    62f8:	48 8b 05 41 b1 00 00 	mov    rax,QWORD PTR [rip+0xb141]        # 11440 <rax>
    62ff:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6302:	48 89 10             	mov    QWORD PTR [rax],rdx
    6305:	48 8b 15 3c b1 00 00 	mov    rdx,QWORD PTR [rip+0xb13c]        # 11448 <eax>
    630c:	48 8b 05 f5 b1 00 00 	mov    rax,QWORD PTR [rip+0xb1f5]        # 11508 <edi>
    6313:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6316:	48 89 10             	mov    QWORD PTR [rax],rdx
    6319:	48 8b 05 e8 b1 00 00 	mov    rax,QWORD PTR [rip+0xb1e8]        # 11508 <edi>
    6320:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6323:	89 c7                	mov    edi,eax
    6325:	e8 d6 ad ff ff       	call   1100 <exit@plt>
    632a:	90                   	nop
    632b:	48 8b 15 3e b3 00 00 	mov    rdx,QWORD PTR [rip+0xb33e]        # 11670 <s_bss>
    6332:	48 8b 05 07 b1 00 00 	mov    rax,QWORD PTR [rip+0xb107]        # 11440 <rax>
    6339:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    6340:	48 89 10             	mov    QWORD PTR [rax],rdx
    6343:	48 8b 05 f6 b0 00 00 	mov    rax,QWORD PTR [rip+0xb0f6]        # 11440 <rax>
    634a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    634d:	48 89 c2             	mov    rdx,rax
    6350:	48 8b 05 e9 b0 00 00 	mov    rax,QWORD PTR [rip+0xb0e9]        # 11440 <rax>
    6357:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    635a:	48 89 10             	mov    QWORD PTR [rax],rdx
    635d:	48 8b 05 dc b0 00 00 	mov    rax,QWORD PTR [rip+0xb0dc]        # 11440 <rax>
    6364:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    6367:	48 8b 05 d2 b0 00 00 	mov    rax,QWORD PTR [rip+0xb0d2]        # 11440 <rax>
    636e:	48 83 ea 10          	sub    rdx,0x10
    6372:	48 89 10             	mov    QWORD PTR [rax],rdx
    6375:	48 8b 15 c4 b0 00 00 	mov    rdx,QWORD PTR [rip+0xb0c4]        # 11440 <rax>
    637c:	48 8b 05 35 b1 00 00 	mov    rax,QWORD PTR [rip+0xb135]        # 114b8 <rdx>
    6383:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6386:	48 89 10             	mov    QWORD PTR [rax],rdx
    6389:	48 8b 15 e0 b2 00 00 	mov    rdx,QWORD PTR [rip+0xb2e0]        # 11670 <s_bss>
    6390:	48 8b 05 a9 b0 00 00 	mov    rax,QWORD PTR [rip+0xb0a9]        # 11440 <rax>
    6397:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    639e:	48 89 10             	mov    QWORD PTR [rax],rdx
    63a1:	48 8b 05 10 b1 00 00 	mov    rax,QWORD PTR [rip+0xb110]        # 114b8 <rdx>
    63a8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    63ab:	48 89 c2             	mov    rdx,rax
    63ae:	48 8b 05 03 b1 00 00 	mov    rax,QWORD PTR [rip+0xb103]        # 114b8 <rdx>
    63b5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    63b8:	48 89 10             	mov    QWORD PTR [rax],rdx
    63bb:	48 8b 05 f6 b0 00 00 	mov    rax,QWORD PTR [rip+0xb0f6]        # 114b8 <rdx>
    63c2:	48 8b 15 77 b0 00 00 	mov    rdx,QWORD PTR [rip+0xb077]        # 11440 <rax>
    63c9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    63cc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    63cf:	48 89 02             	mov    QWORD PTR [rdx],rax
    63d2:	48 8b 15 97 b2 00 00 	mov    rdx,QWORD PTR [rip+0xb297]        # 11670 <s_bss>
    63d9:	48 8b 05 60 b0 00 00 	mov    rax,QWORD PTR [rip+0xb060]        # 11440 <rax>
    63e0:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    63e7:	48 89 10             	mov    QWORD PTR [rax],rdx
    63ea:	48 8b 05 4f b0 00 00 	mov    rax,QWORD PTR [rip+0xb04f]        # 11440 <rax>
    63f1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    63f4:	48 89 c2             	mov    rdx,rax
    63f7:	48 8b 05 42 b0 00 00 	mov    rax,QWORD PTR [rip+0xb042]        # 11440 <rax>
    63fe:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6401:	48 89 10             	mov    QWORD PTR [rax],rdx
    6404:	48 8b 05 35 b0 00 00 	mov    rax,QWORD PTR [rip+0xb035]        # 11440 <rax>
    640b:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    640e:	48 8b 05 2b b0 00 00 	mov    rax,QWORD PTR [rip+0xb02b]        # 11440 <rax>
    6415:	48 83 ea 18          	sub    rdx,0x18
    6419:	48 89 10             	mov    QWORD PTR [rax],rdx
    641c:	48 8b 15 1d b0 00 00 	mov    rdx,QWORD PTR [rip+0xb01d]        # 11440 <rax>
    6423:	48 8b 05 8e b0 00 00 	mov    rax,QWORD PTR [rip+0xb08e]        # 114b8 <rdx>
    642a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    642d:	48 89 10             	mov    QWORD PTR [rax],rdx
    6430:	48 8b 15 39 b2 00 00 	mov    rdx,QWORD PTR [rip+0xb239]        # 11670 <s_bss>
    6437:	48 8b 05 02 b0 00 00 	mov    rax,QWORD PTR [rip+0xb002]        # 11440 <rax>
    643e:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    6442:	48 89 10             	mov    QWORD PTR [rax],rdx
    6445:	48 8b 05 6c b0 00 00 	mov    rax,QWORD PTR [rip+0xb06c]        # 114b8 <rdx>
    644c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    644f:	48 89 c2             	mov    rdx,rax
    6452:	48 8b 05 5f b0 00 00 	mov    rax,QWORD PTR [rip+0xb05f]        # 114b8 <rdx>
    6459:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    645c:	48 89 10             	mov    QWORD PTR [rax],rdx
    645f:	48 8b 05 52 b0 00 00 	mov    rax,QWORD PTR [rip+0xb052]        # 114b8 <rdx>
    6466:	48 8b 15 d3 af 00 00 	mov    rdx,QWORD PTR [rip+0xafd3]        # 11440 <rax>
    646d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6470:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6473:	48 89 02             	mov    QWORD PTR [rdx],rax
    6476:	48 8b 15 f3 b1 00 00 	mov    rdx,QWORD PTR [rip+0xb1f3]        # 11670 <s_bss>
    647d:	48 8b 05 34 b0 00 00 	mov    rax,QWORD PTR [rip+0xb034]        # 114b8 <rdx>
    6484:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    648b:	48 89 10             	mov    QWORD PTR [rax],rdx
    648e:	48 8b 15 db b1 00 00 	mov    rdx,QWORD PTR [rip+0xb1db]        # 11670 <s_bss>
    6495:	48 8b 05 a4 af 00 00 	mov    rax,QWORD PTR [rip+0xafa4]        # 11440 <rax>
    649c:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    64a3:	48 89 10             	mov    QWORD PTR [rax],rdx
    64a6:	48 8b 05 0b b0 00 00 	mov    rax,QWORD PTR [rip+0xb00b]        # 114b8 <rdx>
    64ad:	48 8b 00             	mov    rax,QWORD PTR [rax]
    64b0:	48 89 c2             	mov    rdx,rax
    64b3:	48 8b 05 fe af 00 00 	mov    rax,QWORD PTR [rip+0xaffe]        # 114b8 <rdx>
    64ba:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    64bd:	48 89 10             	mov    QWORD PTR [rax],rdx
    64c0:	48 8b 05 f1 af 00 00 	mov    rax,QWORD PTR [rip+0xaff1]        # 114b8 <rdx>
    64c7:	48 8b 15 72 af 00 00 	mov    rdx,QWORD PTR [rip+0xaf72]        # 11440 <rax>
    64ce:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    64d1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    64d4:	48 89 02             	mov    QWORD PTR [rdx],rax
    64d7:	48 8b 15 92 b1 00 00 	mov    rdx,QWORD PTR [rip+0xb192]        # 11670 <s_bss>
    64de:	48 8b 05 d3 af 00 00 	mov    rax,QWORD PTR [rip+0xafd3]        # 114b8 <rdx>
    64e5:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    64e9:	48 89 10             	mov    QWORD PTR [rax],rdx
    64ec:	48 8b 15 7d b1 00 00 	mov    rdx,QWORD PTR [rip+0xb17d]        # 11670 <s_bss>
    64f3:	48 8b 05 46 af 00 00 	mov    rax,QWORD PTR [rip+0xaf46]        # 11440 <rax>
    64fa:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    6501:	48 89 10             	mov    QWORD PTR [rax],rdx
    6504:	48 8b 05 ad af 00 00 	mov    rax,QWORD PTR [rip+0xafad]        # 114b8 <rdx>
    650b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    650e:	48 89 c2             	mov    rdx,rax
    6511:	48 8b 05 a0 af 00 00 	mov    rax,QWORD PTR [rip+0xafa0]        # 114b8 <rdx>
    6518:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    651b:	48 89 10             	mov    QWORD PTR [rax],rdx
    651e:	48 8b 05 93 af 00 00 	mov    rax,QWORD PTR [rip+0xaf93]        # 114b8 <rdx>
    6525:	48 8b 15 14 af 00 00 	mov    rdx,QWORD PTR [rip+0xaf14]        # 11440 <rax>
    652c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    652f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6532:	48 89 02             	mov    QWORD PTR [rdx],rax
    6535:	e8 fc de ff ff       	call   4436 <fib_tbl_dyn_>
    653a:	48 8b 15 2f b1 00 00 	mov    rdx,QWORD PTR [rip+0xb12f]        # 11670 <s_bss>
    6541:	48 8b 05 f8 ae 00 00 	mov    rax,QWORD PTR [rip+0xaef8]        # 11440 <rax>
    6548:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    654c:	48 89 10             	mov    QWORD PTR [rax],rdx
    654f:	48 8b 15 1a b1 00 00 	mov    rdx,QWORD PTR [rip+0xb11a]        # 11670 <s_bss>
    6556:	48 8b 05 5b af 00 00 	mov    rax,QWORD PTR [rip+0xaf5b]        # 114b8 <rdx>
    655d:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    6564:	48 89 10             	mov    QWORD PTR [rax],rdx
    6567:	48 8b 05 4a af 00 00 	mov    rax,QWORD PTR [rip+0xaf4a]        # 114b8 <rdx>
    656e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6571:	48 89 c2             	mov    rdx,rax
    6574:	48 8b 05 3d af 00 00 	mov    rax,QWORD PTR [rip+0xaf3d]        # 114b8 <rdx>
    657b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    657e:	48 89 10             	mov    QWORD PTR [rax],rdx
    6581:	48 8b 05 30 af 00 00 	mov    rax,QWORD PTR [rip+0xaf30]        # 114b8 <rdx>
    6588:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    658b:	48 8b 05 26 af 00 00 	mov    rax,QWORD PTR [rip+0xaf26]        # 114b8 <rdx>
    6592:	48 83 ea 08          	sub    rdx,0x8
    6596:	48 89 10             	mov    QWORD PTR [rax],rdx
    6599:	48 8b 05 a0 ae 00 00 	mov    rax,QWORD PTR [rip+0xaea0]        # 11440 <rax>
    65a0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    65a3:	48 89 c2             	mov    rdx,rax
    65a6:	48 8b 05 93 ae 00 00 	mov    rax,QWORD PTR [rip+0xae93]        # 11440 <rax>
    65ad:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    65b0:	48 89 10             	mov    QWORD PTR [rax],rdx
    65b3:	48 8b 05 86 ae 00 00 	mov    rax,QWORD PTR [rip+0xae86]        # 11440 <rax>
    65ba:	48 8b 15 f7 ae 00 00 	mov    rdx,QWORD PTR [rip+0xaef7]        # 114b8 <rdx>
    65c1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    65c4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    65c7:	48 89 02             	mov    QWORD PTR [rdx],rax
    65ca:	48 8b 15 9f b0 00 00 	mov    rdx,QWORD PTR [rip+0xb09f]        # 11670 <s_bss>
    65d1:	48 8b 05 68 ae 00 00 	mov    rax,QWORD PTR [rip+0xae68]        # 11440 <rax>
    65d8:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    65df:	48 89 10             	mov    QWORD PTR [rax],rdx
    65e2:	48 8b 05 57 ae 00 00 	mov    rax,QWORD PTR [rip+0xae57]        # 11440 <rax>
    65e9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    65ec:	48 89 c2             	mov    rdx,rax
    65ef:	48 8b 05 4a ae 00 00 	mov    rax,QWORD PTR [rip+0xae4a]        # 11440 <rax>
    65f6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    65f9:	48 89 10             	mov    QWORD PTR [rax],rdx
    65fc:	48 8b 05 3d ae 00 00 	mov    rax,QWORD PTR [rip+0xae3d]        # 11440 <rax>
    6603:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    6606:	48 8b 05 33 ae 00 00 	mov    rax,QWORD PTR [rip+0xae33]        # 11440 <rax>
    660d:	48 83 ea 10          	sub    rdx,0x10
    6611:	48 89 10             	mov    QWORD PTR [rax],rdx
    6614:	48 8b 15 25 ae 00 00 	mov    rdx,QWORD PTR [rip+0xae25]        # 11440 <rax>
    661b:	48 8b 05 96 ae 00 00 	mov    rax,QWORD PTR [rip+0xae96]        # 114b8 <rdx>
    6622:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6625:	48 89 10             	mov    QWORD PTR [rax],rdx
    6628:	48 8b 15 41 b0 00 00 	mov    rdx,QWORD PTR [rip+0xb041]        # 11670 <s_bss>
    662f:	48 8b 05 0a ae 00 00 	mov    rax,QWORD PTR [rip+0xae0a]        # 11440 <rax>
    6636:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    663a:	48 89 10             	mov    QWORD PTR [rax],rdx
    663d:	48 8b 05 74 ae 00 00 	mov    rax,QWORD PTR [rip+0xae74]        # 114b8 <rdx>
    6644:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6647:	48 89 c2             	mov    rdx,rax
    664a:	48 8b 05 67 ae 00 00 	mov    rax,QWORD PTR [rip+0xae67]        # 114b8 <rdx>
    6651:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6654:	48 89 10             	mov    QWORD PTR [rax],rdx
    6657:	48 8b 05 5a ae 00 00 	mov    rax,QWORD PTR [rip+0xae5a]        # 114b8 <rdx>
    665e:	48 8b 15 db ad 00 00 	mov    rdx,QWORD PTR [rip+0xaddb]        # 11440 <rax>
    6665:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6668:	48 8b 00             	mov    rax,QWORD PTR [rax]
    666b:	48 89 02             	mov    QWORD PTR [rdx],rax
    666e:	48 8b 15 fb af 00 00 	mov    rdx,QWORD PTR [rip+0xaffb]        # 11670 <s_bss>
    6675:	48 8b 05 3c ae 00 00 	mov    rax,QWORD PTR [rip+0xae3c]        # 114b8 <rdx>
    667c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    6680:	48 89 10             	mov    QWORD PTR [rax],rdx
    6683:	48 8b 15 e6 af 00 00 	mov    rdx,QWORD PTR [rip+0xafe6]        # 11670 <s_bss>
    668a:	48 8b 05 af ad 00 00 	mov    rax,QWORD PTR [rip+0xadaf]        # 11440 <rax>
    6691:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    6698:	48 89 10             	mov    QWORD PTR [rax],rdx
    669b:	48 8b 05 16 ae 00 00 	mov    rax,QWORD PTR [rip+0xae16]        # 114b8 <rdx>
    66a2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    66a5:	48 89 c2             	mov    rdx,rax
    66a8:	48 8b 05 09 ae 00 00 	mov    rax,QWORD PTR [rip+0xae09]        # 114b8 <rdx>
    66af:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    66b2:	48 89 10             	mov    QWORD PTR [rax],rdx
    66b5:	48 8b 05 fc ad 00 00 	mov    rax,QWORD PTR [rip+0xadfc]        # 114b8 <rdx>
    66bc:	48 8b 15 7d ad 00 00 	mov    rdx,QWORD PTR [rip+0xad7d]        # 11440 <rax>
    66c3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    66c6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    66c9:	48 89 02             	mov    QWORD PTR [rdx],rax
    66cc:	48 8b 15 9d af 00 00 	mov    rdx,QWORD PTR [rip+0xaf9d]        # 11670 <s_bss>
    66d3:	48 8b 05 66 ad 00 00 	mov    rax,QWORD PTR [rip+0xad66]        # 11440 <rax>
    66da:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    66e1:	48 89 10             	mov    QWORD PTR [rax],rdx
    66e4:	48 8b 05 55 ad 00 00 	mov    rax,QWORD PTR [rip+0xad55]        # 11440 <rax>
    66eb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    66ee:	48 89 c2             	mov    rdx,rax
    66f1:	48 8b 05 48 ad 00 00 	mov    rax,QWORD PTR [rip+0xad48]        # 11440 <rax>
    66f8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    66fb:	48 89 10             	mov    QWORD PTR [rax],rdx
    66fe:	48 8b 15 3b ad 00 00 	mov    rdx,QWORD PTR [rip+0xad3b]        # 11440 <rax>
    6705:	48 8b 05 f4 ad 00 00 	mov    rax,QWORD PTR [rip+0xadf4]        # 11500 <rdi>
    670c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    670f:	48 89 10             	mov    QWORD PTR [rax],rdx
    6712:	48 8b 05 e7 ad 00 00 	mov    rax,QWORD PTR [rip+0xade7]        # 11500 <rdi>
    6719:	48 8b 00             	mov    rax,QWORD PTR [rax]
    671c:	48 89 c7             	mov    rdi,rax
    671f:	e8 8c a9 ff ff       	call   10b0 <free@plt>
    6724:	48 8b 15 45 af 00 00 	mov    rdx,QWORD PTR [rip+0xaf45]        # 11670 <s_bss>
    672b:	48 8b 05 0e ad 00 00 	mov    rax,QWORD PTR [rip+0xad0e]        # 11440 <rax>
    6732:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    6739:	48 89 10             	mov    QWORD PTR [rax],rdx
    673c:	48 8b 05 fd ac 00 00 	mov    rax,QWORD PTR [rip+0xacfd]        # 11440 <rax>
    6743:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6746:	48 89 c2             	mov    rdx,rax
    6749:	48 8b 05 f0 ac 00 00 	mov    rax,QWORD PTR [rip+0xacf0]        # 11440 <rax>
    6750:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6753:	48 89 10             	mov    QWORD PTR [rax],rdx
    6756:	48 8b 05 e3 ac 00 00 	mov    rax,QWORD PTR [rip+0xace3]        # 11440 <rax>
    675d:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    6760:	48 8b 05 d9 ac 00 00 	mov    rax,QWORD PTR [rip+0xacd9]        # 11440 <rax>
    6767:	48 83 ea 08          	sub    rdx,0x8
    676b:	48 89 10             	mov    QWORD PTR [rax],rdx
    676e:	48 8b 15 cb ac 00 00 	mov    rdx,QWORD PTR [rip+0xaccb]        # 11440 <rax>
    6775:	48 8b 05 3c ad 00 00 	mov    rax,QWORD PTR [rip+0xad3c]        # 114b8 <rdx>
    677c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    677f:	48 89 10             	mov    QWORD PTR [rax],rdx
    6782:	48 8b 15 e7 ae 00 00 	mov    rdx,QWORD PTR [rip+0xaee7]        # 11670 <s_bss>
    6789:	48 8b 05 b0 ac 00 00 	mov    rax,QWORD PTR [rip+0xacb0]        # 11440 <rax>
    6790:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    6794:	48 89 10             	mov    QWORD PTR [rax],rdx
    6797:	48 8b 05 1a ad 00 00 	mov    rax,QWORD PTR [rip+0xad1a]        # 114b8 <rdx>
    679e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    67a1:	48 89 c2             	mov    rdx,rax
    67a4:	48 8b 05 0d ad 00 00 	mov    rax,QWORD PTR [rip+0xad0d]        # 114b8 <rdx>
    67ab:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    67ae:	48 89 10             	mov    QWORD PTR [rax],rdx
    67b1:	48 8b 05 00 ad 00 00 	mov    rax,QWORD PTR [rip+0xad00]        # 114b8 <rdx>
    67b8:	48 8b 15 81 ac 00 00 	mov    rdx,QWORD PTR [rip+0xac81]        # 11440 <rax>
    67bf:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    67c2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    67c5:	48 89 02             	mov    QWORD PTR [rdx],rax
    67c8:	48 8b 15 a1 ae 00 00 	mov    rdx,QWORD PTR [rip+0xaea1]        # 11670 <s_bss>
    67cf:	48 8b 05 e2 ac 00 00 	mov    rax,QWORD PTR [rip+0xace2]        # 114b8 <rdx>
    67d6:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    67dd:	48 89 10             	mov    QWORD PTR [rax],rdx
    67e0:	48 8b 15 89 ae 00 00 	mov    rdx,QWORD PTR [rip+0xae89]        # 11670 <s_bss>
    67e7:	48 8b 05 52 ac 00 00 	mov    rax,QWORD PTR [rip+0xac52]        # 11440 <rax>
    67ee:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    67f5:	48 89 10             	mov    QWORD PTR [rax],rdx
    67f8:	48 8b 05 b9 ac 00 00 	mov    rax,QWORD PTR [rip+0xacb9]        # 114b8 <rdx>
    67ff:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6802:	48 89 c2             	mov    rdx,rax
    6805:	48 8b 05 ac ac 00 00 	mov    rax,QWORD PTR [rip+0xacac]        # 114b8 <rdx>
    680c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    680f:	48 89 10             	mov    QWORD PTR [rax],rdx
    6812:	48 8b 05 9f ac 00 00 	mov    rax,QWORD PTR [rip+0xac9f]        # 114b8 <rdx>
    6819:	48 8b 15 20 ac 00 00 	mov    rdx,QWORD PTR [rip+0xac20]        # 11440 <rax>
    6820:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6823:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6826:	48 89 02             	mov    QWORD PTR [rdx],rax
    6829:	48 8b 15 40 ae 00 00 	mov    rdx,QWORD PTR [rip+0xae40]        # 11670 <s_bss>
    6830:	48 8b 05 31 ac 00 00 	mov    rax,QWORD PTR [rip+0xac31]        # 11468 <rbx>
    6837:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    683e:	48 89 10             	mov    QWORD PTR [rax],rdx
    6841:	e8 62 be ff ff       	call   26a8 <pop_u64_>
    6846:	48 8b 05 f3 ab 00 00 	mov    rax,QWORD PTR [rip+0xabf3]        # 11440 <rax>
    684d:	48 8b 15 14 ac 00 00 	mov    rdx,QWORD PTR [rip+0xac14]        # 11468 <rbx>
    6854:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6857:	48 8b 00             	mov    rax,QWORD PTR [rax]
    685a:	48 89 02             	mov    QWORD PTR [rdx],rax
    685d:	48 8b 05 bc ac 00 00 	mov    rax,QWORD PTR [rip+0xacbc]        # 11520 <rbp>
    6864:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6867:	48 83 e8 08          	sub    rax,0x8
    686b:	48 89 c2             	mov    rdx,rax
    686e:	48 8b 05 f3 ab 00 00 	mov    rax,QWORD PTR [rip+0xabf3]        # 11468 <rbx>
    6875:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6878:	48 89 10             	mov    QWORD PTR [rax],rdx
    687b:	48 8b 15 9e ac 00 00 	mov    rdx,QWORD PTR [rip+0xac9e]        # 11520 <rbp>
    6882:	48 8b 05 b7 ac 00 00 	mov    rax,QWORD PTR [rip+0xacb7]        # 11540 <rsp>
    6889:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    688c:	48 89 10             	mov    QWORD PTR [rax],rdx
    688f:	48 8b 1d 8a ac 00 00 	mov    rbx,QWORD PTR [rip+0xac8a]        # 11520 <rbp>
    6896:	e8 9f ad ff ff       	call   163a <pop_u64>
    689b:	48 89 03             	mov    QWORD PTR [rbx],rax
    689e:	90                   	nop
    689f:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    68a3:	c9                   	leave  
    68a4:	c3                   	ret    

00000000000068a5 <fib_loop>:
    68a5:	f3 0f 1e fa          	endbr64 
    68a9:	55                   	push   rbp
    68aa:	48 89 e5             	mov    rbp,rsp
    68ad:	53                   	push   rbx
    68ae:	48 8b 05 6b ac 00 00 	mov    rax,QWORD PTR [rip+0xac6b]        # 11520 <rbp>
    68b5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    68b8:	48 89 c7             	mov    rdi,rax
    68bb:	e8 43 ad ff ff       	call   1603 <push_u64>
    68c0:	48 8b 15 79 ac 00 00 	mov    rdx,QWORD PTR [rip+0xac79]        # 11540 <rsp>
    68c7:	48 8b 05 52 ac 00 00 	mov    rax,QWORD PTR [rip+0xac52]        # 11520 <rbp>
    68ce:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    68d1:	48 89 10             	mov    QWORD PTR [rax],rdx
    68d4:	48 8b 05 8d ab 00 00 	mov    rax,QWORD PTR [rip+0xab8d]        # 11468 <rbx>
    68db:	48 8b 00             	mov    rax,QWORD PTR [rax]
    68de:	48 89 c7             	mov    rdi,rax
    68e1:	e8 1d ad ff ff       	call   1603 <push_u64>
    68e6:	48 8b 15 83 ad 00 00 	mov    rdx,QWORD PTR [rip+0xad83]        # 11670 <s_bss>
    68ed:	48 8b 05 4c ab 00 00 	mov    rax,QWORD PTR [rip+0xab4c]        # 11440 <rax>
    68f4:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    68fb:	48 89 10             	mov    QWORD PTR [rax],rdx
    68fe:	48 8b 05 3b ab 00 00 	mov    rax,QWORD PTR [rip+0xab3b]        # 11440 <rax>
    6905:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6908:	48 89 c2             	mov    rdx,rax
    690b:	48 8b 05 2e ab 00 00 	mov    rax,QWORD PTR [rip+0xab2e]        # 11440 <rax>
    6912:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6915:	48 89 10             	mov    QWORD PTR [rax],rdx
    6918:	48 8b 15 21 ab 00 00 	mov    rdx,QWORD PTR [rip+0xab21]        # 11440 <rax>
    691f:	48 8b 05 da ab 00 00 	mov    rax,QWORD PTR [rip+0xabda]        # 11500 <rdi>
    6926:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6929:	48 89 10             	mov    QWORD PTR [rax],rdx
    692c:	e8 23 bc ff ff       	call   2554 <push_u64_>
    6931:	48 8b 15 38 ad 00 00 	mov    rdx,QWORD PTR [rip+0xad38]        # 11670 <s_bss>
    6938:	48 8b 05 79 ab 00 00 	mov    rax,QWORD PTR [rip+0xab79]        # 114b8 <rdx>
    693f:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    6946:	48 89 10             	mov    QWORD PTR [rax],rdx
    6949:	48 8b 15 20 ad 00 00 	mov    rdx,QWORD PTR [rip+0xad20]        # 11670 <s_bss>
    6950:	48 8b 05 e9 aa 00 00 	mov    rax,QWORD PTR [rip+0xaae9]        # 11440 <rax>
    6957:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    695e:	48 89 10             	mov    QWORD PTR [rax],rdx
    6961:	48 8b 05 50 ab 00 00 	mov    rax,QWORD PTR [rip+0xab50]        # 114b8 <rdx>
    6968:	48 8b 00             	mov    rax,QWORD PTR [rax]
    696b:	48 89 c2             	mov    rdx,rax
    696e:	48 8b 05 43 ab 00 00 	mov    rax,QWORD PTR [rip+0xab43]        # 114b8 <rdx>
    6975:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6978:	48 89 10             	mov    QWORD PTR [rax],rdx
    697b:	48 8b 05 36 ab 00 00 	mov    rax,QWORD PTR [rip+0xab36]        # 114b8 <rdx>
    6982:	48 8b 15 b7 aa 00 00 	mov    rdx,QWORD PTR [rip+0xaab7]        # 11440 <rax>
    6989:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    698c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    698f:	48 89 02             	mov    QWORD PTR [rdx],rax
    6992:	48 8b 15 d7 ac 00 00 	mov    rdx,QWORD PTR [rip+0xacd7]        # 11670 <s_bss>
    6999:	48 8b 05 a0 aa 00 00 	mov    rax,QWORD PTR [rip+0xaaa0]        # 11440 <rax>
    69a0:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    69a7:	48 89 10             	mov    QWORD PTR [rax],rdx
    69aa:	48 8b 15 bf ac 00 00 	mov    rdx,QWORD PTR [rip+0xacbf]        # 11670 <s_bss>
    69b1:	48 8b 05 00 ab 00 00 	mov    rax,QWORD PTR [rip+0xab00]        # 114b8 <rdx>
    69b8:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    69bf:	48 89 10             	mov    QWORD PTR [rax],rdx
    69c2:	48 8b 05 ef aa 00 00 	mov    rax,QWORD PTR [rip+0xaaef]        # 114b8 <rdx>
    69c9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    69cc:	48 89 c2             	mov    rdx,rax
    69cf:	48 8b 05 e2 aa 00 00 	mov    rax,QWORD PTR [rip+0xaae2]        # 114b8 <rdx>
    69d6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    69d9:	48 89 10             	mov    QWORD PTR [rax],rdx
    69dc:	48 8b 05 d5 aa 00 00 	mov    rax,QWORD PTR [rip+0xaad5]        # 114b8 <rdx>
    69e3:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    69e6:	48 8b 05 cb aa 00 00 	mov    rax,QWORD PTR [rip+0xaacb]        # 114b8 <rdx>
    69ed:	48 83 ea 28          	sub    rdx,0x28
    69f1:	48 89 10             	mov    QWORD PTR [rax],rdx
    69f4:	48 8b 05 45 aa 00 00 	mov    rax,QWORD PTR [rip+0xaa45]        # 11440 <rax>
    69fb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    69fe:	48 89 c2             	mov    rdx,rax
    6a01:	48 8b 05 38 aa 00 00 	mov    rax,QWORD PTR [rip+0xaa38]        # 11440 <rax>
    6a08:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6a0b:	48 89 10             	mov    QWORD PTR [rax],rdx
    6a0e:	48 8b 05 2b aa 00 00 	mov    rax,QWORD PTR [rip+0xaa2b]        # 11440 <rax>
    6a15:	48 8b 15 9c aa 00 00 	mov    rdx,QWORD PTR [rip+0xaa9c]        # 114b8 <rdx>
    6a1c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6a1f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6a22:	48 89 02             	mov    QWORD PTR [rdx],rax
    6a25:	48 8b 15 44 ac 00 00 	mov    rdx,QWORD PTR [rip+0xac44]        # 11670 <s_bss>
    6a2c:	48 8b 05 0d aa 00 00 	mov    rax,QWORD PTR [rip+0xaa0d]        # 11440 <rax>
    6a33:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    6a3a:	48 89 10             	mov    QWORD PTR [rax],rdx
    6a3d:	48 8b 05 fc a9 00 00 	mov    rax,QWORD PTR [rip+0xa9fc]        # 11440 <rax>
    6a44:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6a47:	48 89 c2             	mov    rdx,rax
    6a4a:	48 8b 05 ef a9 00 00 	mov    rax,QWORD PTR [rip+0xa9ef]        # 11440 <rax>
    6a51:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6a54:	48 89 10             	mov    QWORD PTR [rax],rdx
    6a57:	48 8b 05 e2 a9 00 00 	mov    rax,QWORD PTR [rip+0xa9e2]        # 11440 <rax>
    6a5e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    6a61:	48 8b 05 d8 a9 00 00 	mov    rax,QWORD PTR [rip+0xa9d8]        # 11440 <rax>
    6a68:	48 83 ea 28          	sub    rdx,0x28
    6a6c:	48 89 10             	mov    QWORD PTR [rax],rdx
    6a6f:	48 8b 05 ca a9 00 00 	mov    rax,QWORD PTR [rip+0xa9ca]        # 11440 <rax>
    6a76:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6a79:	48 89 c2             	mov    rdx,rax
    6a7c:	48 8b 05 bd a9 00 00 	mov    rax,QWORD PTR [rip+0xa9bd]        # 11440 <rax>
    6a83:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6a86:	48 89 10             	mov    QWORD PTR [rax],rdx
    6a89:	48 8b 05 b0 a9 00 00 	mov    rax,QWORD PTR [rip+0xa9b0]        # 11440 <rax>
    6a90:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6a93:	48 83 f8 01          	cmp    rax,0x1
    6a97:	0f 87 a9 00 00 00    	ja     6b46 <fib_loop+0x2a1>
    6a9d:	48 8b 15 cc ab 00 00 	mov    rdx,QWORD PTR [rip+0xabcc]        # 11670 <s_bss>
    6aa4:	48 8b 05 95 a9 00 00 	mov    rax,QWORD PTR [rip+0xa995]        # 11440 <rax>
    6aab:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    6ab2:	48 89 10             	mov    QWORD PTR [rax],rdx
    6ab5:	48 8b 05 84 a9 00 00 	mov    rax,QWORD PTR [rip+0xa984]        # 11440 <rax>
    6abc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6abf:	48 89 c2             	mov    rdx,rax
    6ac2:	48 8b 05 77 a9 00 00 	mov    rax,QWORD PTR [rip+0xa977]        # 11440 <rax>
    6ac9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6acc:	48 89 10             	mov    QWORD PTR [rax],rdx
    6acf:	48 8b 05 6a a9 00 00 	mov    rax,QWORD PTR [rip+0xa96a]        # 11440 <rax>
    6ad6:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    6ad9:	48 8b 05 60 a9 00 00 	mov    rax,QWORD PTR [rip+0xa960]        # 11440 <rax>
    6ae0:	48 83 ea 28          	sub    rdx,0x28
    6ae4:	48 89 10             	mov    QWORD PTR [rax],rdx
    6ae7:	48 8b 15 52 a9 00 00 	mov    rdx,QWORD PTR [rip+0xa952]        # 11440 <rax>
    6aee:	48 8b 05 c3 a9 00 00 	mov    rax,QWORD PTR [rip+0xa9c3]        # 114b8 <rdx>
    6af5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6af8:	48 89 10             	mov    QWORD PTR [rax],rdx
    6afb:	48 8b 15 6e ab 00 00 	mov    rdx,QWORD PTR [rip+0xab6e]        # 11670 <s_bss>
    6b02:	48 8b 05 37 a9 00 00 	mov    rax,QWORD PTR [rip+0xa937]        # 11440 <rax>
    6b09:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    6b0d:	48 89 10             	mov    QWORD PTR [rax],rdx
    6b10:	48 8b 05 a1 a9 00 00 	mov    rax,QWORD PTR [rip+0xa9a1]        # 114b8 <rdx>
    6b17:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6b1a:	48 89 c2             	mov    rdx,rax
    6b1d:	48 8b 05 94 a9 00 00 	mov    rax,QWORD PTR [rip+0xa994]        # 114b8 <rdx>
    6b24:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6b27:	48 89 10             	mov    QWORD PTR [rax],rdx
    6b2a:	48 8b 05 87 a9 00 00 	mov    rax,QWORD PTR [rip+0xa987]        # 114b8 <rdx>
    6b31:	48 8b 15 08 a9 00 00 	mov    rdx,QWORD PTR [rip+0xa908]        # 11440 <rax>
    6b38:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6b3b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6b3e:	48 89 02             	mov    QWORD PTR [rdx],rax
    6b41:	e9 7b 0b 00 00       	jmp    76c1 <fib_loop+0xe1c>
    6b46:	90                   	nop
    6b47:	48 8b 15 22 ab 00 00 	mov    rdx,QWORD PTR [rip+0xab22]        # 11670 <s_bss>
    6b4e:	48 8b 05 eb a8 00 00 	mov    rax,QWORD PTR [rip+0xa8eb]        # 11440 <rax>
    6b55:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    6b5c:	48 89 10             	mov    QWORD PTR [rax],rdx
    6b5f:	48 8b 05 da a8 00 00 	mov    rax,QWORD PTR [rip+0xa8da]        # 11440 <rax>
    6b66:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6b69:	48 89 c2             	mov    rdx,rax
    6b6c:	48 8b 05 cd a8 00 00 	mov    rax,QWORD PTR [rip+0xa8cd]        # 11440 <rax>
    6b73:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6b76:	48 89 10             	mov    QWORD PTR [rax],rdx
    6b79:	48 8b 05 c0 a8 00 00 	mov    rax,QWORD PTR [rip+0xa8c0]        # 11440 <rax>
    6b80:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    6b83:	48 8b 05 b6 a8 00 00 	mov    rax,QWORD PTR [rip+0xa8b6]        # 11440 <rax>
    6b8a:	48 83 ea 08          	sub    rdx,0x8
    6b8e:	48 89 10             	mov    QWORD PTR [rax],rdx
    6b91:	48 8b 05 a8 a8 00 00 	mov    rax,QWORD PTR [rip+0xa8a8]        # 11440 <rax>
    6b98:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6b9b:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    6ba2:	48 8b 15 c7 aa 00 00 	mov    rdx,QWORD PTR [rip+0xaac7]        # 11670 <s_bss>
    6ba9:	48 8b 05 90 a8 00 00 	mov    rax,QWORD PTR [rip+0xa890]        # 11440 <rax>
    6bb0:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    6bb7:	48 89 10             	mov    QWORD PTR [rax],rdx
    6bba:	48 8b 05 7f a8 00 00 	mov    rax,QWORD PTR [rip+0xa87f]        # 11440 <rax>
    6bc1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6bc4:	48 89 c2             	mov    rdx,rax
    6bc7:	48 8b 05 72 a8 00 00 	mov    rax,QWORD PTR [rip+0xa872]        # 11440 <rax>
    6bce:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6bd1:	48 89 10             	mov    QWORD PTR [rax],rdx
    6bd4:	48 8b 05 65 a8 00 00 	mov    rax,QWORD PTR [rip+0xa865]        # 11440 <rax>
    6bdb:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    6bde:	48 8b 05 5b a8 00 00 	mov    rax,QWORD PTR [rip+0xa85b]        # 11440 <rax>
    6be5:	48 83 ea 20          	sub    rdx,0x20
    6be9:	48 89 10             	mov    QWORD PTR [rax],rdx
    6bec:	48 8b 05 4d a8 00 00 	mov    rax,QWORD PTR [rip+0xa84d]        # 11440 <rax>
    6bf3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6bf6:	48 c7 00 01 00 00 00 	mov    QWORD PTR [rax],0x1
    6bfd:	48 8b 15 6c aa 00 00 	mov    rdx,QWORD PTR [rip+0xaa6c]        # 11670 <s_bss>
    6c04:	48 8b 05 35 a8 00 00 	mov    rax,QWORD PTR [rip+0xa835]        # 11440 <rax>
    6c0b:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    6c12:	48 89 10             	mov    QWORD PTR [rax],rdx
    6c15:	48 8b 05 24 a8 00 00 	mov    rax,QWORD PTR [rip+0xa824]        # 11440 <rax>
    6c1c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6c1f:	48 89 c2             	mov    rdx,rax
    6c22:	48 8b 05 17 a8 00 00 	mov    rax,QWORD PTR [rip+0xa817]        # 11440 <rax>
    6c29:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6c2c:	48 89 10             	mov    QWORD PTR [rax],rdx
    6c2f:	48 8b 05 0a a8 00 00 	mov    rax,QWORD PTR [rip+0xa80a]        # 11440 <rax>
    6c36:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    6c39:	48 8b 05 00 a8 00 00 	mov    rax,QWORD PTR [rip+0xa800]        # 11440 <rax>
    6c40:	48 83 ea 08          	sub    rdx,0x8
    6c44:	48 89 10             	mov    QWORD PTR [rax],rdx
    6c47:	48 8b 15 f2 a7 00 00 	mov    rdx,QWORD PTR [rip+0xa7f2]        # 11440 <rax>
    6c4e:	48 8b 05 63 a8 00 00 	mov    rax,QWORD PTR [rip+0xa863]        # 114b8 <rdx>
    6c55:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6c58:	48 89 10             	mov    QWORD PTR [rax],rdx
    6c5b:	48 8b 15 0e aa 00 00 	mov    rdx,QWORD PTR [rip+0xaa0e]        # 11670 <s_bss>
    6c62:	48 8b 05 d7 a7 00 00 	mov    rax,QWORD PTR [rip+0xa7d7]        # 11440 <rax>
    6c69:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    6c70:	48 89 10             	mov    QWORD PTR [rax],rdx
    6c73:	48 8b 05 3e a8 00 00 	mov    rax,QWORD PTR [rip+0xa83e]        # 114b8 <rdx>
    6c7a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6c7d:	48 89 c2             	mov    rdx,rax
    6c80:	48 8b 05 31 a8 00 00 	mov    rax,QWORD PTR [rip+0xa831]        # 114b8 <rdx>
    6c87:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6c8a:	48 89 10             	mov    QWORD PTR [rax],rdx
    6c8d:	48 8b 05 24 a8 00 00 	mov    rax,QWORD PTR [rip+0xa824]        # 114b8 <rdx>
    6c94:	48 8b 15 a5 a7 00 00 	mov    rdx,QWORD PTR [rip+0xa7a5]        # 11440 <rax>
    6c9b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6c9e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6ca1:	48 89 02             	mov    QWORD PTR [rdx],rax
    6ca4:	48 8b 15 c5 a9 00 00 	mov    rdx,QWORD PTR [rip+0xa9c5]        # 11670 <s_bss>
    6cab:	48 8b 05 8e a7 00 00 	mov    rax,QWORD PTR [rip+0xa78e]        # 11440 <rax>
    6cb2:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    6cb9:	48 89 10             	mov    QWORD PTR [rax],rdx
    6cbc:	48 8b 05 7d a7 00 00 	mov    rax,QWORD PTR [rip+0xa77d]        # 11440 <rax>
    6cc3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6cc6:	48 89 c2             	mov    rdx,rax
    6cc9:	48 8b 05 70 a7 00 00 	mov    rax,QWORD PTR [rip+0xa770]        # 11440 <rax>
    6cd0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6cd3:	48 89 10             	mov    QWORD PTR [rax],rdx
    6cd6:	48 8b 05 63 a7 00 00 	mov    rax,QWORD PTR [rip+0xa763]        # 11440 <rax>
    6cdd:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    6ce0:	48 8b 05 59 a7 00 00 	mov    rax,QWORD PTR [rip+0xa759]        # 11440 <rax>
    6ce7:	48 83 ea 20          	sub    rdx,0x20
    6ceb:	48 89 10             	mov    QWORD PTR [rax],rdx
    6cee:	48 8b 15 4b a7 00 00 	mov    rdx,QWORD PTR [rip+0xa74b]        # 11440 <rax>
    6cf5:	48 8b 05 bc a7 00 00 	mov    rax,QWORD PTR [rip+0xa7bc]        # 114b8 <rdx>
    6cfc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6cff:	48 89 10             	mov    QWORD PTR [rax],rdx
    6d02:	48 8b 15 67 a9 00 00 	mov    rdx,QWORD PTR [rip+0xa967]        # 11670 <s_bss>
    6d09:	48 8b 05 30 a7 00 00 	mov    rax,QWORD PTR [rip+0xa730]        # 11440 <rax>
    6d10:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    6d14:	48 89 10             	mov    QWORD PTR [rax],rdx
    6d17:	48 8b 05 9a a7 00 00 	mov    rax,QWORD PTR [rip+0xa79a]        # 114b8 <rdx>
    6d1e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6d21:	48 89 c2             	mov    rdx,rax
    6d24:	48 8b 05 8d a7 00 00 	mov    rax,QWORD PTR [rip+0xa78d]        # 114b8 <rdx>
    6d2b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6d2e:	48 89 10             	mov    QWORD PTR [rax],rdx
    6d31:	48 8b 05 80 a7 00 00 	mov    rax,QWORD PTR [rip+0xa780]        # 114b8 <rdx>
    6d38:	48 8b 15 01 a7 00 00 	mov    rdx,QWORD PTR [rip+0xa701]        # 11440 <rax>
    6d3f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6d42:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6d45:	48 89 02             	mov    QWORD PTR [rdx],rax
    6d48:	48 8b 15 21 a9 00 00 	mov    rdx,QWORD PTR [rip+0xa921]        # 11670 <s_bss>
    6d4f:	48 8b 05 ea a6 00 00 	mov    rax,QWORD PTR [rip+0xa6ea]        # 11440 <rax>
    6d56:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    6d5a:	48 89 10             	mov    QWORD PTR [rax],rdx
    6d5d:	48 8b 05 dc a6 00 00 	mov    rax,QWORD PTR [rip+0xa6dc]        # 11440 <rax>
    6d64:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6d67:	48 89 c2             	mov    rdx,rax
    6d6a:	48 8b 05 1f a7 00 00 	mov    rax,QWORD PTR [rip+0xa71f]        # 11490 <rcx>
    6d71:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6d74:	48 89 10             	mov    QWORD PTR [rax],rdx
    6d77:	48 8b 15 f2 a8 00 00 	mov    rdx,QWORD PTR [rip+0xa8f2]        # 11670 <s_bss>
    6d7e:	48 8b 05 bb a6 00 00 	mov    rax,QWORD PTR [rip+0xa6bb]        # 11440 <rax>
    6d85:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    6d8c:	48 89 10             	mov    QWORD PTR [rax],rdx
    6d8f:	48 8b 05 aa a6 00 00 	mov    rax,QWORD PTR [rip+0xa6aa]        # 11440 <rax>
    6d96:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6d99:	48 89 c2             	mov    rdx,rax
    6d9c:	48 8b 05 15 a7 00 00 	mov    rax,QWORD PTR [rip+0xa715]        # 114b8 <rdx>
    6da3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6da6:	48 89 10             	mov    QWORD PTR [rax],rdx
    6da9:	48 8b 15 c0 a8 00 00 	mov    rdx,QWORD PTR [rip+0xa8c0]        # 11670 <s_bss>
    6db0:	48 8b 05 89 a6 00 00 	mov    rax,QWORD PTR [rip+0xa689]        # 11440 <rax>
    6db7:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    6dbb:	48 89 10             	mov    QWORD PTR [rax],rdx
    6dbe:	48 8b 05 f3 a6 00 00 	mov    rax,QWORD PTR [rip+0xa6f3]        # 114b8 <rdx>
    6dc5:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    6dc8:	48 8b 05 c1 a6 00 00 	mov    rax,QWORD PTR [rip+0xa6c1]        # 11490 <rcx>
    6dcf:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    6dd2:	48 8b 05 df a6 00 00 	mov    rax,QWORD PTR [rip+0xa6df]        # 114b8 <rdx>
    6dd9:	48 01 ca             	add    rdx,rcx
    6ddc:	48 89 10             	mov    QWORD PTR [rax],rdx
    6ddf:	48 8b 05 d2 a6 00 00 	mov    rax,QWORD PTR [rip+0xa6d2]        # 114b8 <rdx>
    6de6:	48 8b 15 53 a6 00 00 	mov    rdx,QWORD PTR [rip+0xa653]        # 11440 <rax>
    6ded:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6df0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6df3:	48 89 02             	mov    QWORD PTR [rdx],rax
    6df6:	48 8b 15 73 a8 00 00 	mov    rdx,QWORD PTR [rip+0xa873]        # 11670 <s_bss>
    6dfd:	48 8b 05 3c a6 00 00 	mov    rax,QWORD PTR [rip+0xa63c]        # 11440 <rax>
    6e04:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    6e08:	48 89 10             	mov    QWORD PTR [rax],rdx
    6e0b:	48 8b 15 5e a8 00 00 	mov    rdx,QWORD PTR [rip+0xa85e]        # 11670 <s_bss>
    6e12:	48 8b 05 9f a6 00 00 	mov    rax,QWORD PTR [rip+0xa69f]        # 114b8 <rdx>
    6e19:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    6e20:	48 89 10             	mov    QWORD PTR [rax],rdx
    6e23:	48 8b 05 8e a6 00 00 	mov    rax,QWORD PTR [rip+0xa68e]        # 114b8 <rdx>
    6e2a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6e2d:	48 89 c2             	mov    rdx,rax
    6e30:	48 8b 05 81 a6 00 00 	mov    rax,QWORD PTR [rip+0xa681]        # 114b8 <rdx>
    6e37:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6e3a:	48 89 10             	mov    QWORD PTR [rax],rdx
    6e3d:	48 8b 05 74 a6 00 00 	mov    rax,QWORD PTR [rip+0xa674]        # 114b8 <rdx>
    6e44:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    6e47:	48 8b 05 6a a6 00 00 	mov    rax,QWORD PTR [rip+0xa66a]        # 114b8 <rdx>
    6e4e:	48 83 ea 18          	sub    rdx,0x18
    6e52:	48 89 10             	mov    QWORD PTR [rax],rdx
    6e55:	48 8b 05 e4 a5 00 00 	mov    rax,QWORD PTR [rip+0xa5e4]        # 11440 <rax>
    6e5c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6e5f:	48 89 c2             	mov    rdx,rax
    6e62:	48 8b 05 d7 a5 00 00 	mov    rax,QWORD PTR [rip+0xa5d7]        # 11440 <rax>
    6e69:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6e6c:	48 89 10             	mov    QWORD PTR [rax],rdx
    6e6f:	48 8b 05 ca a5 00 00 	mov    rax,QWORD PTR [rip+0xa5ca]        # 11440 <rax>
    6e76:	48 8b 15 3b a6 00 00 	mov    rdx,QWORD PTR [rip+0xa63b]        # 114b8 <rdx>
    6e7d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6e80:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6e83:	48 89 02             	mov    QWORD PTR [rdx],rax
    6e86:	48 8b 15 e3 a7 00 00 	mov    rdx,QWORD PTR [rip+0xa7e3]        # 11670 <s_bss>
    6e8d:	48 8b 05 ac a5 00 00 	mov    rax,QWORD PTR [rip+0xa5ac]        # 11440 <rax>
    6e94:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    6e9b:	48 89 10             	mov    QWORD PTR [rax],rdx
    6e9e:	48 8b 05 9b a5 00 00 	mov    rax,QWORD PTR [rip+0xa59b]        # 11440 <rax>
    6ea5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6ea8:	48 89 c2             	mov    rdx,rax
    6eab:	48 8b 05 8e a5 00 00 	mov    rax,QWORD PTR [rip+0xa58e]        # 11440 <rax>
    6eb2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6eb5:	48 89 10             	mov    QWORD PTR [rax],rdx
    6eb8:	48 8b 05 81 a5 00 00 	mov    rax,QWORD PTR [rip+0xa581]        # 11440 <rax>
    6ebf:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    6ec2:	48 8b 05 77 a5 00 00 	mov    rax,QWORD PTR [rip+0xa577]        # 11440 <rax>
    6ec9:	48 83 ea 10          	sub    rdx,0x10
    6ecd:	48 89 10             	mov    QWORD PTR [rax],rdx
    6ed0:	48 8b 05 69 a5 00 00 	mov    rax,QWORD PTR [rip+0xa569]        # 11440 <rax>
    6ed7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6eda:	48 c7 00 02 00 00 00 	mov    QWORD PTR [rax],0x2
    6ee1:	e9 e3 05 00 00       	jmp    74c9 <fib_loop+0xc24>
    6ee6:	90                   	nop
    6ee7:	48 8b 15 82 a7 00 00 	mov    rdx,QWORD PTR [rip+0xa782]        # 11670 <s_bss>
    6eee:	48 8b 05 4b a5 00 00 	mov    rax,QWORD PTR [rip+0xa54b]        # 11440 <rax>
    6ef5:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    6efc:	48 89 10             	mov    QWORD PTR [rax],rdx
    6eff:	48 8b 05 3a a5 00 00 	mov    rax,QWORD PTR [rip+0xa53a]        # 11440 <rax>
    6f06:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6f09:	48 89 c2             	mov    rdx,rax
    6f0c:	48 8b 05 2d a5 00 00 	mov    rax,QWORD PTR [rip+0xa52d]        # 11440 <rax>
    6f13:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6f16:	48 89 10             	mov    QWORD PTR [rax],rdx
    6f19:	48 8b 05 20 a5 00 00 	mov    rax,QWORD PTR [rip+0xa520]        # 11440 <rax>
    6f20:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    6f23:	48 8b 05 16 a5 00 00 	mov    rax,QWORD PTR [rip+0xa516]        # 11440 <rax>
    6f2a:	48 83 ea 20          	sub    rdx,0x20
    6f2e:	48 89 10             	mov    QWORD PTR [rax],rdx
    6f31:	48 8b 15 08 a5 00 00 	mov    rdx,QWORD PTR [rip+0xa508]        # 11440 <rax>
    6f38:	48 8b 05 79 a5 00 00 	mov    rax,QWORD PTR [rip+0xa579]        # 114b8 <rdx>
    6f3f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6f42:	48 89 10             	mov    QWORD PTR [rax],rdx
    6f45:	48 8b 15 24 a7 00 00 	mov    rdx,QWORD PTR [rip+0xa724]        # 11670 <s_bss>
    6f4c:	48 8b 05 ed a4 00 00 	mov    rax,QWORD PTR [rip+0xa4ed]        # 11440 <rax>
    6f53:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    6f57:	48 89 10             	mov    QWORD PTR [rax],rdx
    6f5a:	48 8b 05 57 a5 00 00 	mov    rax,QWORD PTR [rip+0xa557]        # 114b8 <rdx>
    6f61:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6f64:	48 89 c2             	mov    rdx,rax
    6f67:	48 8b 05 4a a5 00 00 	mov    rax,QWORD PTR [rip+0xa54a]        # 114b8 <rdx>
    6f6e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6f71:	48 89 10             	mov    QWORD PTR [rax],rdx
    6f74:	48 8b 05 3d a5 00 00 	mov    rax,QWORD PTR [rip+0xa53d]        # 114b8 <rdx>
    6f7b:	48 8b 15 be a4 00 00 	mov    rdx,QWORD PTR [rip+0xa4be]        # 11440 <rax>
    6f82:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6f85:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6f88:	48 89 02             	mov    QWORD PTR [rdx],rax
    6f8b:	48 8b 15 de a6 00 00 	mov    rdx,QWORD PTR [rip+0xa6de]        # 11670 <s_bss>
    6f92:	48 8b 05 a7 a4 00 00 	mov    rax,QWORD PTR [rip+0xa4a7]        # 11440 <rax>
    6f99:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    6f9d:	48 89 10             	mov    QWORD PTR [rax],rdx
    6fa0:	48 8b 15 c9 a6 00 00 	mov    rdx,QWORD PTR [rip+0xa6c9]        # 11670 <s_bss>
    6fa7:	48 8b 05 0a a5 00 00 	mov    rax,QWORD PTR [rip+0xa50a]        # 114b8 <rdx>
    6fae:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    6fb5:	48 89 10             	mov    QWORD PTR [rax],rdx
    6fb8:	48 8b 05 f9 a4 00 00 	mov    rax,QWORD PTR [rip+0xa4f9]        # 114b8 <rdx>
    6fbf:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6fc2:	48 89 c2             	mov    rdx,rax
    6fc5:	48 8b 05 ec a4 00 00 	mov    rax,QWORD PTR [rip+0xa4ec]        # 114b8 <rdx>
    6fcc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    6fcf:	48 89 10             	mov    QWORD PTR [rax],rdx
    6fd2:	48 8b 05 df a4 00 00 	mov    rax,QWORD PTR [rip+0xa4df]        # 114b8 <rdx>
    6fd9:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    6fdc:	48 8b 05 d5 a4 00 00 	mov    rax,QWORD PTR [rip+0xa4d5]        # 114b8 <rdx>
    6fe3:	48 83 ea 08          	sub    rdx,0x8
    6fe7:	48 89 10             	mov    QWORD PTR [rax],rdx
    6fea:	48 8b 05 4f a4 00 00 	mov    rax,QWORD PTR [rip+0xa44f]        # 11440 <rax>
    6ff1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6ff4:	48 89 c2             	mov    rdx,rax
    6ff7:	48 8b 05 42 a4 00 00 	mov    rax,QWORD PTR [rip+0xa442]        # 11440 <rax>
    6ffe:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7001:	48 89 10             	mov    QWORD PTR [rax],rdx
    7004:	48 8b 05 35 a4 00 00 	mov    rax,QWORD PTR [rip+0xa435]        # 11440 <rax>
    700b:	48 8b 15 a6 a4 00 00 	mov    rdx,QWORD PTR [rip+0xa4a6]        # 114b8 <rdx>
    7012:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7015:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7018:	48 89 02             	mov    QWORD PTR [rdx],rax
    701b:	48 8b 15 4e a6 00 00 	mov    rdx,QWORD PTR [rip+0xa64e]        # 11670 <s_bss>
    7022:	48 8b 05 17 a4 00 00 	mov    rax,QWORD PTR [rip+0xa417]        # 11440 <rax>
    7029:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    7030:	48 89 10             	mov    QWORD PTR [rax],rdx
    7033:	48 8b 05 06 a4 00 00 	mov    rax,QWORD PTR [rip+0xa406]        # 11440 <rax>
    703a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    703d:	48 89 c2             	mov    rdx,rax
    7040:	48 8b 05 f9 a3 00 00 	mov    rax,QWORD PTR [rip+0xa3f9]        # 11440 <rax>
    7047:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    704a:	48 89 10             	mov    QWORD PTR [rax],rdx
    704d:	48 8b 05 ec a3 00 00 	mov    rax,QWORD PTR [rip+0xa3ec]        # 11440 <rax>
    7054:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7057:	48 8b 05 e2 a3 00 00 	mov    rax,QWORD PTR [rip+0xa3e2]        # 11440 <rax>
    705e:	48 83 ea 18          	sub    rdx,0x18
    7062:	48 89 10             	mov    QWORD PTR [rax],rdx
    7065:	48 8b 15 d4 a3 00 00 	mov    rdx,QWORD PTR [rip+0xa3d4]        # 11440 <rax>
    706c:	48 8b 05 45 a4 00 00 	mov    rax,QWORD PTR [rip+0xa445]        # 114b8 <rdx>
    7073:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7076:	48 89 10             	mov    QWORD PTR [rax],rdx
    7079:	48 8b 15 f0 a5 00 00 	mov    rdx,QWORD PTR [rip+0xa5f0]        # 11670 <s_bss>
    7080:	48 8b 05 b9 a3 00 00 	mov    rax,QWORD PTR [rip+0xa3b9]        # 11440 <rax>
    7087:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    708b:	48 89 10             	mov    QWORD PTR [rax],rdx
    708e:	48 8b 05 23 a4 00 00 	mov    rax,QWORD PTR [rip+0xa423]        # 114b8 <rdx>
    7095:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7098:	48 89 c2             	mov    rdx,rax
    709b:	48 8b 05 16 a4 00 00 	mov    rax,QWORD PTR [rip+0xa416]        # 114b8 <rdx>
    70a2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    70a5:	48 89 10             	mov    QWORD PTR [rax],rdx
    70a8:	48 8b 05 09 a4 00 00 	mov    rax,QWORD PTR [rip+0xa409]        # 114b8 <rdx>
    70af:	48 8b 15 8a a3 00 00 	mov    rdx,QWORD PTR [rip+0xa38a]        # 11440 <rax>
    70b6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    70b9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    70bc:	48 89 02             	mov    QWORD PTR [rdx],rax
    70bf:	48 8b 15 aa a5 00 00 	mov    rdx,QWORD PTR [rip+0xa5aa]        # 11670 <s_bss>
    70c6:	48 8b 05 73 a3 00 00 	mov    rax,QWORD PTR [rip+0xa373]        # 11440 <rax>
    70cd:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    70d1:	48 89 10             	mov    QWORD PTR [rax],rdx
    70d4:	48 8b 15 95 a5 00 00 	mov    rdx,QWORD PTR [rip+0xa595]        # 11670 <s_bss>
    70db:	48 8b 05 d6 a3 00 00 	mov    rax,QWORD PTR [rip+0xa3d6]        # 114b8 <rdx>
    70e2:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    70e9:	48 89 10             	mov    QWORD PTR [rax],rdx
    70ec:	48 8b 05 c5 a3 00 00 	mov    rax,QWORD PTR [rip+0xa3c5]        # 114b8 <rdx>
    70f3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    70f6:	48 89 c2             	mov    rdx,rax
    70f9:	48 8b 05 b8 a3 00 00 	mov    rax,QWORD PTR [rip+0xa3b8]        # 114b8 <rdx>
    7100:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7103:	48 89 10             	mov    QWORD PTR [rax],rdx
    7106:	48 8b 05 ab a3 00 00 	mov    rax,QWORD PTR [rip+0xa3ab]        # 114b8 <rdx>
    710d:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7110:	48 8b 05 a1 a3 00 00 	mov    rax,QWORD PTR [rip+0xa3a1]        # 114b8 <rdx>
    7117:	48 83 ea 20          	sub    rdx,0x20
    711b:	48 89 10             	mov    QWORD PTR [rax],rdx
    711e:	48 8b 05 1b a3 00 00 	mov    rax,QWORD PTR [rip+0xa31b]        # 11440 <rax>
    7125:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7128:	48 89 c2             	mov    rdx,rax
    712b:	48 8b 05 0e a3 00 00 	mov    rax,QWORD PTR [rip+0xa30e]        # 11440 <rax>
    7132:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7135:	48 89 10             	mov    QWORD PTR [rax],rdx
    7138:	48 8b 05 01 a3 00 00 	mov    rax,QWORD PTR [rip+0xa301]        # 11440 <rax>
    713f:	48 8b 15 72 a3 00 00 	mov    rdx,QWORD PTR [rip+0xa372]        # 114b8 <rdx>
    7146:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7149:	48 8b 00             	mov    rax,QWORD PTR [rax]
    714c:	48 89 02             	mov    QWORD PTR [rdx],rax
    714f:	48 8b 15 1a a5 00 00 	mov    rdx,QWORD PTR [rip+0xa51a]        # 11670 <s_bss>
    7156:	48 8b 05 e3 a2 00 00 	mov    rax,QWORD PTR [rip+0xa2e3]        # 11440 <rax>
    715d:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    7164:	48 89 10             	mov    QWORD PTR [rax],rdx
    7167:	48 8b 05 d2 a2 00 00 	mov    rax,QWORD PTR [rip+0xa2d2]        # 11440 <rax>
    716e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7171:	48 89 c2             	mov    rdx,rax
    7174:	48 8b 05 c5 a2 00 00 	mov    rax,QWORD PTR [rip+0xa2c5]        # 11440 <rax>
    717b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    717e:	48 89 10             	mov    QWORD PTR [rax],rdx
    7181:	48 8b 05 b8 a2 00 00 	mov    rax,QWORD PTR [rip+0xa2b8]        # 11440 <rax>
    7188:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    718b:	48 8b 05 ae a2 00 00 	mov    rax,QWORD PTR [rip+0xa2ae]        # 11440 <rax>
    7192:	48 83 ea 08          	sub    rdx,0x8
    7196:	48 89 10             	mov    QWORD PTR [rax],rdx
    7199:	48 8b 15 a0 a2 00 00 	mov    rdx,QWORD PTR [rip+0xa2a0]        # 11440 <rax>
    71a0:	48 8b 05 11 a3 00 00 	mov    rax,QWORD PTR [rip+0xa311]        # 114b8 <rdx>
    71a7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    71aa:	48 89 10             	mov    QWORD PTR [rax],rdx
    71ad:	48 8b 15 bc a4 00 00 	mov    rdx,QWORD PTR [rip+0xa4bc]        # 11670 <s_bss>
    71b4:	48 8b 05 85 a2 00 00 	mov    rax,QWORD PTR [rip+0xa285]        # 11440 <rax>
    71bb:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    71c2:	48 89 10             	mov    QWORD PTR [rax],rdx
    71c5:	48 8b 05 ec a2 00 00 	mov    rax,QWORD PTR [rip+0xa2ec]        # 114b8 <rdx>
    71cc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    71cf:	48 89 c2             	mov    rdx,rax
    71d2:	48 8b 05 df a2 00 00 	mov    rax,QWORD PTR [rip+0xa2df]        # 114b8 <rdx>
    71d9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    71dc:	48 89 10             	mov    QWORD PTR [rax],rdx
    71df:	48 8b 05 d2 a2 00 00 	mov    rax,QWORD PTR [rip+0xa2d2]        # 114b8 <rdx>
    71e6:	48 8b 15 53 a2 00 00 	mov    rdx,QWORD PTR [rip+0xa253]        # 11440 <rax>
    71ed:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    71f0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    71f3:	48 89 02             	mov    QWORD PTR [rdx],rax
    71f6:	48 8b 15 73 a4 00 00 	mov    rdx,QWORD PTR [rip+0xa473]        # 11670 <s_bss>
    71fd:	48 8b 05 3c a2 00 00 	mov    rax,QWORD PTR [rip+0xa23c]        # 11440 <rax>
    7204:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    720b:	48 89 10             	mov    QWORD PTR [rax],rdx
    720e:	48 8b 05 2b a2 00 00 	mov    rax,QWORD PTR [rip+0xa22b]        # 11440 <rax>
    7215:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7218:	48 89 c2             	mov    rdx,rax
    721b:	48 8b 05 1e a2 00 00 	mov    rax,QWORD PTR [rip+0xa21e]        # 11440 <rax>
    7222:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7225:	48 89 10             	mov    QWORD PTR [rax],rdx
    7228:	48 8b 05 11 a2 00 00 	mov    rax,QWORD PTR [rip+0xa211]        # 11440 <rax>
    722f:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7232:	48 8b 05 07 a2 00 00 	mov    rax,QWORD PTR [rip+0xa207]        # 11440 <rax>
    7239:	48 83 ea 20          	sub    rdx,0x20
    723d:	48 89 10             	mov    QWORD PTR [rax],rdx
    7240:	48 8b 15 f9 a1 00 00 	mov    rdx,QWORD PTR [rip+0xa1f9]        # 11440 <rax>
    7247:	48 8b 05 6a a2 00 00 	mov    rax,QWORD PTR [rip+0xa26a]        # 114b8 <rdx>
    724e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7251:	48 89 10             	mov    QWORD PTR [rax],rdx
    7254:	48 8b 15 15 a4 00 00 	mov    rdx,QWORD PTR [rip+0xa415]        # 11670 <s_bss>
    725b:	48 8b 05 de a1 00 00 	mov    rax,QWORD PTR [rip+0xa1de]        # 11440 <rax>
    7262:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    7266:	48 89 10             	mov    QWORD PTR [rax],rdx
    7269:	48 8b 05 48 a2 00 00 	mov    rax,QWORD PTR [rip+0xa248]        # 114b8 <rdx>
    7270:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7273:	48 89 c2             	mov    rdx,rax
    7276:	48 8b 05 3b a2 00 00 	mov    rax,QWORD PTR [rip+0xa23b]        # 114b8 <rdx>
    727d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7280:	48 89 10             	mov    QWORD PTR [rax],rdx
    7283:	48 8b 05 2e a2 00 00 	mov    rax,QWORD PTR [rip+0xa22e]        # 114b8 <rdx>
    728a:	48 8b 15 af a1 00 00 	mov    rdx,QWORD PTR [rip+0xa1af]        # 11440 <rax>
    7291:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7294:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7297:	48 89 02             	mov    QWORD PTR [rdx],rax
    729a:	48 8b 15 cf a3 00 00 	mov    rdx,QWORD PTR [rip+0xa3cf]        # 11670 <s_bss>
    72a1:	48 8b 05 98 a1 00 00 	mov    rax,QWORD PTR [rip+0xa198]        # 11440 <rax>
    72a8:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    72ac:	48 89 10             	mov    QWORD PTR [rax],rdx
    72af:	48 8b 05 8a a1 00 00 	mov    rax,QWORD PTR [rip+0xa18a]        # 11440 <rax>
    72b6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    72b9:	48 89 c2             	mov    rdx,rax
    72bc:	48 8b 05 cd a1 00 00 	mov    rax,QWORD PTR [rip+0xa1cd]        # 11490 <rcx>
    72c3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    72c6:	48 89 10             	mov    QWORD PTR [rax],rdx
    72c9:	48 8b 15 a0 a3 00 00 	mov    rdx,QWORD PTR [rip+0xa3a0]        # 11670 <s_bss>
    72d0:	48 8b 05 69 a1 00 00 	mov    rax,QWORD PTR [rip+0xa169]        # 11440 <rax>
    72d7:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    72de:	48 89 10             	mov    QWORD PTR [rax],rdx
    72e1:	48 8b 05 58 a1 00 00 	mov    rax,QWORD PTR [rip+0xa158]        # 11440 <rax>
    72e8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    72eb:	48 89 c2             	mov    rdx,rax
    72ee:	48 8b 05 c3 a1 00 00 	mov    rax,QWORD PTR [rip+0xa1c3]        # 114b8 <rdx>
    72f5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    72f8:	48 89 10             	mov    QWORD PTR [rax],rdx
    72fb:	48 8b 15 6e a3 00 00 	mov    rdx,QWORD PTR [rip+0xa36e]        # 11670 <s_bss>
    7302:	48 8b 05 37 a1 00 00 	mov    rax,QWORD PTR [rip+0xa137]        # 11440 <rax>
    7309:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    730d:	48 89 10             	mov    QWORD PTR [rax],rdx
    7310:	48 8b 05 a1 a1 00 00 	mov    rax,QWORD PTR [rip+0xa1a1]        # 114b8 <rdx>
    7317:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    731a:	48 8b 05 6f a1 00 00 	mov    rax,QWORD PTR [rip+0xa16f]        # 11490 <rcx>
    7321:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7324:	48 8b 05 8d a1 00 00 	mov    rax,QWORD PTR [rip+0xa18d]        # 114b8 <rdx>
    732b:	48 01 ca             	add    rdx,rcx
    732e:	48 89 10             	mov    QWORD PTR [rax],rdx
    7331:	48 8b 05 80 a1 00 00 	mov    rax,QWORD PTR [rip+0xa180]        # 114b8 <rdx>
    7338:	48 8b 15 01 a1 00 00 	mov    rdx,QWORD PTR [rip+0xa101]        # 11440 <rax>
    733f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7342:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7345:	48 89 02             	mov    QWORD PTR [rdx],rax
    7348:	48 8b 15 21 a3 00 00 	mov    rdx,QWORD PTR [rip+0xa321]        # 11670 <s_bss>
    734f:	48 8b 05 ea a0 00 00 	mov    rax,QWORD PTR [rip+0xa0ea]        # 11440 <rax>
    7356:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    735a:	48 89 10             	mov    QWORD PTR [rax],rdx
    735d:	48 8b 15 0c a3 00 00 	mov    rdx,QWORD PTR [rip+0xa30c]        # 11670 <s_bss>
    7364:	48 8b 05 4d a1 00 00 	mov    rax,QWORD PTR [rip+0xa14d]        # 114b8 <rdx>
    736b:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    7372:	48 89 10             	mov    QWORD PTR [rax],rdx
    7375:	48 8b 05 3c a1 00 00 	mov    rax,QWORD PTR [rip+0xa13c]        # 114b8 <rdx>
    737c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    737f:	48 89 c2             	mov    rdx,rax
    7382:	48 8b 05 2f a1 00 00 	mov    rax,QWORD PTR [rip+0xa12f]        # 114b8 <rdx>
    7389:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    738c:	48 89 10             	mov    QWORD PTR [rax],rdx
    738f:	48 8b 05 22 a1 00 00 	mov    rax,QWORD PTR [rip+0xa122]        # 114b8 <rdx>
    7396:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7399:	48 8b 05 18 a1 00 00 	mov    rax,QWORD PTR [rip+0xa118]        # 114b8 <rdx>
    73a0:	48 83 ea 18          	sub    rdx,0x18
    73a4:	48 89 10             	mov    QWORD PTR [rax],rdx
    73a7:	48 8b 05 92 a0 00 00 	mov    rax,QWORD PTR [rip+0xa092]        # 11440 <rax>
    73ae:	48 8b 00             	mov    rax,QWORD PTR [rax]
    73b1:	48 89 c2             	mov    rdx,rax
    73b4:	48 8b 05 85 a0 00 00 	mov    rax,QWORD PTR [rip+0xa085]        # 11440 <rax>
    73bb:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    73be:	48 89 10             	mov    QWORD PTR [rax],rdx
    73c1:	48 8b 05 78 a0 00 00 	mov    rax,QWORD PTR [rip+0xa078]        # 11440 <rax>
    73c8:	48 8b 15 e9 a0 00 00 	mov    rdx,QWORD PTR [rip+0xa0e9]        # 114b8 <rdx>
    73cf:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    73d2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    73d5:	48 89 02             	mov    QWORD PTR [rdx],rax
    73d8:	48 8b 15 91 a2 00 00 	mov    rdx,QWORD PTR [rip+0xa291]        # 11670 <s_bss>
    73df:	48 8b 05 5a a0 00 00 	mov    rax,QWORD PTR [rip+0xa05a]        # 11440 <rax>
    73e6:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    73ed:	48 89 10             	mov    QWORD PTR [rax],rdx
    73f0:	48 8b 05 49 a0 00 00 	mov    rax,QWORD PTR [rip+0xa049]        # 11440 <rax>
    73f7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    73fa:	48 89 c2             	mov    rdx,rax
    73fd:	48 8b 05 3c a0 00 00 	mov    rax,QWORD PTR [rip+0xa03c]        # 11440 <rax>
    7404:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7407:	48 89 10             	mov    QWORD PTR [rax],rdx
    740a:	48 8b 05 2f a0 00 00 	mov    rax,QWORD PTR [rip+0xa02f]        # 11440 <rax>
    7411:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7414:	48 8b 05 25 a0 00 00 	mov    rax,QWORD PTR [rip+0xa025]        # 11440 <rax>
    741b:	48 83 ea 10          	sub    rdx,0x10
    741f:	48 89 10             	mov    QWORD PTR [rax],rdx
    7422:	48 8b 05 17 a0 00 00 	mov    rax,QWORD PTR [rip+0xa017]        # 11440 <rax>
    7429:	48 8b 00             	mov    rax,QWORD PTR [rax]
    742c:	48 89 c2             	mov    rdx,rax
    742f:	48 8b 05 82 a0 00 00 	mov    rax,QWORD PTR [rip+0xa082]        # 114b8 <rdx>
    7436:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7439:	48 89 10             	mov    QWORD PTR [rax],rdx
    743c:	48 8b 15 2d a2 00 00 	mov    rdx,QWORD PTR [rip+0xa22d]        # 11670 <s_bss>
    7443:	48 8b 05 f6 9f 00 00 	mov    rax,QWORD PTR [rip+0x9ff6]        # 11440 <rax>
    744a:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    7451:	48 89 10             	mov    QWORD PTR [rax],rdx
    7454:	48 8b 05 e5 9f 00 00 	mov    rax,QWORD PTR [rip+0x9fe5]        # 11440 <rax>
    745b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    745e:	48 89 c2             	mov    rdx,rax
    7461:	48 8b 05 d8 9f 00 00 	mov    rax,QWORD PTR [rip+0x9fd8]        # 11440 <rax>
    7468:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    746b:	48 89 10             	mov    QWORD PTR [rax],rdx
    746e:	48 8b 05 cb 9f 00 00 	mov    rax,QWORD PTR [rip+0x9fcb]        # 11440 <rax>
    7475:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7478:	48 8b 05 c1 9f 00 00 	mov    rax,QWORD PTR [rip+0x9fc1]        # 11440 <rax>
    747f:	48 83 ea 10          	sub    rdx,0x10
    7483:	48 89 10             	mov    QWORD PTR [rax],rdx
    7486:	48 8b 15 b3 9f 00 00 	mov    rdx,QWORD PTR [rip+0x9fb3]        # 11440 <rax>
    748d:	48 8b 05 fc 9f 00 00 	mov    rax,QWORD PTR [rip+0x9ffc]        # 11490 <rcx>
    7494:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7497:	48 89 10             	mov    QWORD PTR [rax],rdx
    749a:	48 8b 05 17 a0 00 00 	mov    rax,QWORD PTR [rip+0xa017]        # 114b8 <rdx>
    74a1:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    74a4:	48 8b 05 95 9f 00 00 	mov    rax,QWORD PTR [rip+0x9f95]        # 11440 <rax>
    74ab:	48 83 c2 01          	add    rdx,0x1
    74af:	48 89 10             	mov    QWORD PTR [rax],rdx
    74b2:	48 8b 05 87 9f 00 00 	mov    rax,QWORD PTR [rip+0x9f87]        # 11440 <rax>
    74b9:	48 8b 15 d0 9f 00 00 	mov    rdx,QWORD PTR [rip+0x9fd0]        # 11490 <rcx>
    74c0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    74c3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    74c6:	48 89 02             	mov    QWORD PTR [rdx],rax
    74c9:	48 8b 15 a0 a1 00 00 	mov    rdx,QWORD PTR [rip+0xa1a0]        # 11670 <s_bss>
    74d0:	48 8b 05 69 9f 00 00 	mov    rax,QWORD PTR [rip+0x9f69]        # 11440 <rax>
    74d7:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    74de:	48 89 10             	mov    QWORD PTR [rax],rdx
    74e1:	48 8b 05 58 9f 00 00 	mov    rax,QWORD PTR [rip+0x9f58]        # 11440 <rax>
    74e8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    74eb:	48 89 c2             	mov    rdx,rax
    74ee:	48 8b 05 4b 9f 00 00 	mov    rax,QWORD PTR [rip+0x9f4b]        # 11440 <rax>
    74f5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    74f8:	48 89 10             	mov    QWORD PTR [rax],rdx
    74fb:	48 8b 05 3e 9f 00 00 	mov    rax,QWORD PTR [rip+0x9f3e]        # 11440 <rax>
    7502:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7505:	48 8b 05 34 9f 00 00 	mov    rax,QWORD PTR [rip+0x9f34]        # 11440 <rax>
    750c:	48 83 ea 10          	sub    rdx,0x10
    7510:	48 89 10             	mov    QWORD PTR [rax],rdx
    7513:	48 8b 15 26 9f 00 00 	mov    rdx,QWORD PTR [rip+0x9f26]        # 11440 <rax>
    751a:	48 8b 05 97 9f 00 00 	mov    rax,QWORD PTR [rip+0x9f97]        # 114b8 <rdx>
    7521:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7524:	48 89 10             	mov    QWORD PTR [rax],rdx
    7527:	48 8b 15 42 a1 00 00 	mov    rdx,QWORD PTR [rip+0xa142]        # 11670 <s_bss>
    752e:	48 8b 05 0b 9f 00 00 	mov    rax,QWORD PTR [rip+0x9f0b]        # 11440 <rax>
    7535:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    7539:	48 89 10             	mov    QWORD PTR [rax],rdx
    753c:	48 8b 05 75 9f 00 00 	mov    rax,QWORD PTR [rip+0x9f75]        # 114b8 <rdx>
    7543:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7546:	48 89 c2             	mov    rdx,rax
    7549:	48 8b 05 68 9f 00 00 	mov    rax,QWORD PTR [rip+0x9f68]        # 114b8 <rdx>
    7550:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7553:	48 89 10             	mov    QWORD PTR [rax],rdx
    7556:	48 8b 05 5b 9f 00 00 	mov    rax,QWORD PTR [rip+0x9f5b]        # 114b8 <rdx>
    755d:	48 8b 15 dc 9e 00 00 	mov    rdx,QWORD PTR [rip+0x9edc]        # 11440 <rax>
    7564:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7567:	48 8b 00             	mov    rax,QWORD PTR [rax]
    756a:	48 89 02             	mov    QWORD PTR [rdx],rax
    756d:	48 8b 15 fc a0 00 00 	mov    rdx,QWORD PTR [rip+0xa0fc]        # 11670 <s_bss>
    7574:	48 8b 05 c5 9e 00 00 	mov    rax,QWORD PTR [rip+0x9ec5]        # 11440 <rax>
    757b:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    757f:	48 89 10             	mov    QWORD PTR [rax],rdx
    7582:	48 8b 05 b7 9e 00 00 	mov    rax,QWORD PTR [rip+0x9eb7]        # 11440 <rax>
    7589:	48 8b 00             	mov    rax,QWORD PTR [rax]
    758c:	48 89 c2             	mov    rdx,rax
    758f:	48 8b 05 22 9f 00 00 	mov    rax,QWORD PTR [rip+0x9f22]        # 114b8 <rdx>
    7596:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7599:	48 89 10             	mov    QWORD PTR [rax],rdx
    759c:	48 8b 15 cd a0 00 00 	mov    rdx,QWORD PTR [rip+0xa0cd]        # 11670 <s_bss>
    75a3:	48 8b 05 96 9e 00 00 	mov    rax,QWORD PTR [rip+0x9e96]        # 11440 <rax>
    75aa:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    75b1:	48 89 10             	mov    QWORD PTR [rax],rdx
    75b4:	48 8b 05 85 9e 00 00 	mov    rax,QWORD PTR [rip+0x9e85]        # 11440 <rax>
    75bb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    75be:	48 89 c2             	mov    rdx,rax
    75c1:	48 8b 05 78 9e 00 00 	mov    rax,QWORD PTR [rip+0x9e78]        # 11440 <rax>
    75c8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    75cb:	48 89 10             	mov    QWORD PTR [rax],rdx
    75ce:	48 8b 05 6b 9e 00 00 	mov    rax,QWORD PTR [rip+0x9e6b]        # 11440 <rax>
    75d5:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    75d8:	48 8b 05 61 9e 00 00 	mov    rax,QWORD PTR [rip+0x9e61]        # 11440 <rax>
    75df:	48 83 ea 28          	sub    rdx,0x28
    75e3:	48 89 10             	mov    QWORD PTR [rax],rdx
    75e6:	48 8b 05 53 9e 00 00 	mov    rax,QWORD PTR [rip+0x9e53]        # 11440 <rax>
    75ed:	48 8b 00             	mov    rax,QWORD PTR [rax]
    75f0:	48 89 c2             	mov    rdx,rax
    75f3:	48 8b 05 46 9e 00 00 	mov    rax,QWORD PTR [rip+0x9e46]        # 11440 <rax>
    75fa:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    75fd:	48 89 10             	mov    QWORD PTR [rax],rdx
    7600:	48 8b 05 b1 9e 00 00 	mov    rax,QWORD PTR [rip+0x9eb1]        # 114b8 <rdx>
    7607:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    760a:	48 8b 05 2f 9e 00 00 	mov    rax,QWORD PTR [rip+0x9e2f]        # 11440 <rax>
    7611:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7614:	48 39 c2             	cmp    rdx,rax
    7617:	0f 82 c9 f8 ff ff    	jb     6ee6 <fib_loop+0x641>
    761d:	48 8b 15 4c a0 00 00 	mov    rdx,QWORD PTR [rip+0xa04c]        # 11670 <s_bss>
    7624:	48 8b 05 15 9e 00 00 	mov    rax,QWORD PTR [rip+0x9e15]        # 11440 <rax>
    762b:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    7632:	48 89 10             	mov    QWORD PTR [rax],rdx
    7635:	48 8b 05 04 9e 00 00 	mov    rax,QWORD PTR [rip+0x9e04]        # 11440 <rax>
    763c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    763f:	48 89 c2             	mov    rdx,rax
    7642:	48 8b 05 f7 9d 00 00 	mov    rax,QWORD PTR [rip+0x9df7]        # 11440 <rax>
    7649:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    764c:	48 89 10             	mov    QWORD PTR [rax],rdx
    764f:	48 8b 05 ea 9d 00 00 	mov    rax,QWORD PTR [rip+0x9dea]        # 11440 <rax>
    7656:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7659:	48 8b 05 e0 9d 00 00 	mov    rax,QWORD PTR [rip+0x9de0]        # 11440 <rax>
    7660:	48 83 ea 18          	sub    rdx,0x18
    7664:	48 89 10             	mov    QWORD PTR [rax],rdx
    7667:	48 8b 15 d2 9d 00 00 	mov    rdx,QWORD PTR [rip+0x9dd2]        # 11440 <rax>
    766e:	48 8b 05 43 9e 00 00 	mov    rax,QWORD PTR [rip+0x9e43]        # 114b8 <rdx>
    7675:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7678:	48 89 10             	mov    QWORD PTR [rax],rdx
    767b:	48 8b 15 ee 9f 00 00 	mov    rdx,QWORD PTR [rip+0x9fee]        # 11670 <s_bss>
    7682:	48 8b 05 b7 9d 00 00 	mov    rax,QWORD PTR [rip+0x9db7]        # 11440 <rax>
    7689:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    768d:	48 89 10             	mov    QWORD PTR [rax],rdx
    7690:	48 8b 05 21 9e 00 00 	mov    rax,QWORD PTR [rip+0x9e21]        # 114b8 <rdx>
    7697:	48 8b 00             	mov    rax,QWORD PTR [rax]
    769a:	48 89 c2             	mov    rdx,rax
    769d:	48 8b 05 14 9e 00 00 	mov    rax,QWORD PTR [rip+0x9e14]        # 114b8 <rdx>
    76a4:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    76a7:	48 89 10             	mov    QWORD PTR [rax],rdx
    76aa:	48 8b 05 07 9e 00 00 	mov    rax,QWORD PTR [rip+0x9e07]        # 114b8 <rdx>
    76b1:	48 8b 15 88 9d 00 00 	mov    rdx,QWORD PTR [rip+0x9d88]        # 11440 <rax>
    76b8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    76bb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    76be:	48 89 02             	mov    QWORD PTR [rdx],rax
    76c1:	48 8b 15 a8 9f 00 00 	mov    rdx,QWORD PTR [rip+0x9fa8]        # 11670 <s_bss>
    76c8:	48 8b 05 99 9d 00 00 	mov    rax,QWORD PTR [rip+0x9d99]        # 11468 <rbx>
    76cf:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    76d6:	48 89 10             	mov    QWORD PTR [rax],rdx
    76d9:	e8 ca af ff ff       	call   26a8 <pop_u64_>
    76de:	48 8b 05 5b 9d 00 00 	mov    rax,QWORD PTR [rip+0x9d5b]        # 11440 <rax>
    76e5:	48 8b 15 7c 9d 00 00 	mov    rdx,QWORD PTR [rip+0x9d7c]        # 11468 <rbx>
    76ec:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    76ef:	48 8b 00             	mov    rax,QWORD PTR [rax]
    76f2:	48 89 02             	mov    QWORD PTR [rdx],rax
    76f5:	48 8b 05 24 9e 00 00 	mov    rax,QWORD PTR [rip+0x9e24]        # 11520 <rbp>
    76fc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    76ff:	48 83 e8 08          	sub    rax,0x8
    7703:	48 89 c2             	mov    rdx,rax
    7706:	48 8b 05 5b 9d 00 00 	mov    rax,QWORD PTR [rip+0x9d5b]        # 11468 <rbx>
    770d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7710:	48 89 10             	mov    QWORD PTR [rax],rdx
    7713:	48 8b 15 06 9e 00 00 	mov    rdx,QWORD PTR [rip+0x9e06]        # 11520 <rbp>
    771a:	48 8b 05 1f 9e 00 00 	mov    rax,QWORD PTR [rip+0x9e1f]        # 11540 <rsp>
    7721:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7724:	48 89 10             	mov    QWORD PTR [rax],rdx
    7727:	48 8b 1d f2 9d 00 00 	mov    rbx,QWORD PTR [rip+0x9df2]        # 11520 <rbp>
    772e:	e8 07 9f ff ff       	call   163a <pop_u64>
    7733:	48 89 03             	mov    QWORD PTR [rbx],rax
    7736:	90                   	nop
    7737:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    773b:	c9                   	leave  
    773c:	c3                   	ret    

000000000000773d <fib_switch>:
    773d:	f3 0f 1e fa          	endbr64 
    7741:	55                   	push   rbp
    7742:	48 89 e5             	mov    rbp,rsp
    7745:	53                   	push   rbx
    7746:	48 83 ec 10          	sub    rsp,0x10
    774a:	48 8b 05 cf 9d 00 00 	mov    rax,QWORD PTR [rip+0x9dcf]        # 11520 <rbp>
    7751:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7754:	48 89 c7             	mov    rdi,rax
    7757:	e8 a7 9e ff ff       	call   1603 <push_u64>
    775c:	48 8b 15 dd 9d 00 00 	mov    rdx,QWORD PTR [rip+0x9ddd]        # 11540 <rsp>
    7763:	48 8b 05 b6 9d 00 00 	mov    rax,QWORD PTR [rip+0x9db6]        # 11520 <rbp>
    776a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    776d:	48 89 10             	mov    QWORD PTR [rax],rdx
    7770:	48 8b 05 f1 9c 00 00 	mov    rax,QWORD PTR [rip+0x9cf1]        # 11468 <rbx>
    7777:	48 8b 00             	mov    rax,QWORD PTR [rax]
    777a:	48 89 c7             	mov    rdi,rax
    777d:	e8 81 9e ff ff       	call   1603 <push_u64>
    7782:	48 8b 05 b7 9d 00 00 	mov    rax,QWORD PTR [rip+0x9db7]        # 11540 <rsp>
    7789:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    778c:	48 8b 05 ad 9d 00 00 	mov    rax,QWORD PTR [rip+0x9dad]        # 11540 <rsp>
    7793:	48 83 ea 10          	sub    rdx,0x10
    7797:	48 89 10             	mov    QWORD PTR [rax],rdx
    779a:	48 8b 15 cf 9e 00 00 	mov    rdx,QWORD PTR [rip+0x9ecf]        # 11670 <s_bss>
    77a1:	48 8b 05 98 9c 00 00 	mov    rax,QWORD PTR [rip+0x9c98]        # 11440 <rax>
    77a8:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    77af:	48 89 10             	mov    QWORD PTR [rax],rdx
    77b2:	48 8b 05 87 9c 00 00 	mov    rax,QWORD PTR [rip+0x9c87]        # 11440 <rax>
    77b9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    77bc:	48 89 c2             	mov    rdx,rax
    77bf:	48 8b 05 7a 9c 00 00 	mov    rax,QWORD PTR [rip+0x9c7a]        # 11440 <rax>
    77c6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    77c9:	48 89 10             	mov    QWORD PTR [rax],rdx
    77cc:	48 8b 15 6d 9c 00 00 	mov    rdx,QWORD PTR [rip+0x9c6d]        # 11440 <rax>
    77d3:	48 8b 05 26 9d 00 00 	mov    rax,QWORD PTR [rip+0x9d26]        # 11500 <rdi>
    77da:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    77dd:	48 89 10             	mov    QWORD PTR [rax],rdx
    77e0:	e8 6f ad ff ff       	call   2554 <push_u64_>
    77e5:	48 8b 15 84 9e 00 00 	mov    rdx,QWORD PTR [rip+0x9e84]        # 11670 <s_bss>
    77ec:	48 8b 05 c5 9c 00 00 	mov    rax,QWORD PTR [rip+0x9cc5]        # 114b8 <rdx>
    77f3:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    77fa:	48 89 10             	mov    QWORD PTR [rax],rdx
    77fd:	48 8b 15 6c 9e 00 00 	mov    rdx,QWORD PTR [rip+0x9e6c]        # 11670 <s_bss>
    7804:	48 8b 05 35 9c 00 00 	mov    rax,QWORD PTR [rip+0x9c35]        # 11440 <rax>
    780b:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    7812:	48 89 10             	mov    QWORD PTR [rax],rdx
    7815:	48 8b 05 9c 9c 00 00 	mov    rax,QWORD PTR [rip+0x9c9c]        # 114b8 <rdx>
    781c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    781f:	48 89 c2             	mov    rdx,rax
    7822:	48 8b 05 8f 9c 00 00 	mov    rax,QWORD PTR [rip+0x9c8f]        # 114b8 <rdx>
    7829:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    782c:	48 89 10             	mov    QWORD PTR [rax],rdx
    782f:	48 8b 05 82 9c 00 00 	mov    rax,QWORD PTR [rip+0x9c82]        # 114b8 <rdx>
    7836:	48 8b 15 03 9c 00 00 	mov    rdx,QWORD PTR [rip+0x9c03]        # 11440 <rax>
    783d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7840:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7843:	48 89 02             	mov    QWORD PTR [rdx],rax
    7846:	48 8b 15 23 9e 00 00 	mov    rdx,QWORD PTR [rip+0x9e23]        # 11670 <s_bss>
    784d:	48 8b 05 ec 9b 00 00 	mov    rax,QWORD PTR [rip+0x9bec]        # 11440 <rax>
    7854:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    785b:	48 89 10             	mov    QWORD PTR [rax],rdx
    785e:	48 8b 15 0b 9e 00 00 	mov    rdx,QWORD PTR [rip+0x9e0b]        # 11670 <s_bss>
    7865:	48 8b 05 4c 9c 00 00 	mov    rax,QWORD PTR [rip+0x9c4c]        # 114b8 <rdx>
    786c:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    7873:	48 89 10             	mov    QWORD PTR [rax],rdx
    7876:	48 8b 05 3b 9c 00 00 	mov    rax,QWORD PTR [rip+0x9c3b]        # 114b8 <rdx>
    787d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7880:	48 89 c2             	mov    rdx,rax
    7883:	48 8b 05 2e 9c 00 00 	mov    rax,QWORD PTR [rip+0x9c2e]        # 114b8 <rdx>
    788a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    788d:	48 89 10             	mov    QWORD PTR [rax],rdx
    7890:	48 8b 05 21 9c 00 00 	mov    rax,QWORD PTR [rip+0x9c21]        # 114b8 <rdx>
    7897:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    789a:	48 8b 05 17 9c 00 00 	mov    rax,QWORD PTR [rip+0x9c17]        # 114b8 <rdx>
    78a1:	48 83 ea 18          	sub    rdx,0x18
    78a5:	48 89 10             	mov    QWORD PTR [rax],rdx
    78a8:	48 8b 05 91 9b 00 00 	mov    rax,QWORD PTR [rip+0x9b91]        # 11440 <rax>
    78af:	48 8b 00             	mov    rax,QWORD PTR [rax]
    78b2:	48 89 c2             	mov    rdx,rax
    78b5:	48 8b 05 84 9b 00 00 	mov    rax,QWORD PTR [rip+0x9b84]        # 11440 <rax>
    78bc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    78bf:	48 89 10             	mov    QWORD PTR [rax],rdx
    78c2:	48 8b 05 77 9b 00 00 	mov    rax,QWORD PTR [rip+0x9b77]        # 11440 <rax>
    78c9:	48 8b 15 e8 9b 00 00 	mov    rdx,QWORD PTR [rip+0x9be8]        # 114b8 <rdx>
    78d0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    78d3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    78d6:	48 89 02             	mov    QWORD PTR [rdx],rax
    78d9:	48 8b 15 90 9d 00 00 	mov    rdx,QWORD PTR [rip+0x9d90]        # 11670 <s_bss>
    78e0:	48 8b 05 59 9b 00 00 	mov    rax,QWORD PTR [rip+0x9b59]        # 11440 <rax>
    78e7:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    78ee:	48 89 10             	mov    QWORD PTR [rax],rdx
    78f1:	48 8b 05 48 9b 00 00 	mov    rax,QWORD PTR [rip+0x9b48]        # 11440 <rax>
    78f8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    78fb:	48 89 c2             	mov    rdx,rax
    78fe:	48 8b 05 3b 9b 00 00 	mov    rax,QWORD PTR [rip+0x9b3b]        # 11440 <rax>
    7905:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7908:	48 89 10             	mov    QWORD PTR [rax],rdx
    790b:	48 8b 05 2e 9b 00 00 	mov    rax,QWORD PTR [rip+0x9b2e]        # 11440 <rax>
    7912:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7915:	48 8b 05 24 9b 00 00 	mov    rax,QWORD PTR [rip+0x9b24]        # 11440 <rax>
    791c:	48 83 ea 08          	sub    rdx,0x8
    7920:	48 89 10             	mov    QWORD PTR [rax],rdx
    7923:	48 8b 05 16 9b 00 00 	mov    rax,QWORD PTR [rip+0x9b16]        # 11440 <rax>
    792a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    792d:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    7934:	48 8b 15 35 9d 00 00 	mov    rdx,QWORD PTR [rip+0x9d35]        # 11670 <s_bss>
    793b:	48 8b 05 fe 9a 00 00 	mov    rax,QWORD PTR [rip+0x9afe]        # 11440 <rax>
    7942:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    7949:	48 89 10             	mov    QWORD PTR [rax],rdx
    794c:	48 8b 05 ed 9a 00 00 	mov    rax,QWORD PTR [rip+0x9aed]        # 11440 <rax>
    7953:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7956:	48 89 c2             	mov    rdx,rax
    7959:	48 8b 05 e0 9a 00 00 	mov    rax,QWORD PTR [rip+0x9ae0]        # 11440 <rax>
    7960:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7963:	48 89 10             	mov    QWORD PTR [rax],rdx
    7966:	48 8b 05 d3 9a 00 00 	mov    rax,QWORD PTR [rip+0x9ad3]        # 11440 <rax>
    796d:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7970:	48 8b 05 c9 9a 00 00 	mov    rax,QWORD PTR [rip+0x9ac9]        # 11440 <rax>
    7977:	48 83 ea 18          	sub    rdx,0x18
    797b:	48 89 10             	mov    QWORD PTR [rax],rdx
    797e:	48 8b 05 bb 9a 00 00 	mov    rax,QWORD PTR [rip+0x9abb]        # 11440 <rax>
    7985:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7988:	48 89 c2             	mov    rdx,rax
    798b:	48 8b 05 ae 9a 00 00 	mov    rax,QWORD PTR [rip+0x9aae]        # 11440 <rax>
    7992:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7995:	48 89 10             	mov    QWORD PTR [rax],rdx
    7998:	48 8b 05 a1 9a 00 00 	mov    rax,QWORD PTR [rip+0x9aa1]        # 11440 <rax>
    799f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    79a2:	48 83 f8 5d          	cmp    rax,0x5d
    79a6:	0f 87 62 3e 00 00    	ja     b80e <fib_switch+0x40d1>
    79ac:	48 8b 15 bd 9c 00 00 	mov    rdx,QWORD PTR [rip+0x9cbd]        # 11670 <s_bss>
    79b3:	48 8b 05 86 9a 00 00 	mov    rax,QWORD PTR [rip+0x9a86]        # 11440 <rax>
    79ba:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    79c1:	48 89 10             	mov    QWORD PTR [rax],rdx
    79c4:	48 8b 05 75 9a 00 00 	mov    rax,QWORD PTR [rip+0x9a75]        # 11440 <rax>
    79cb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    79ce:	48 89 c2             	mov    rdx,rax
    79d1:	48 8b 05 68 9a 00 00 	mov    rax,QWORD PTR [rip+0x9a68]        # 11440 <rax>
    79d8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    79db:	48 89 10             	mov    QWORD PTR [rax],rdx
    79de:	48 8b 05 5b 9a 00 00 	mov    rax,QWORD PTR [rip+0x9a5b]        # 11440 <rax>
    79e5:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    79e8:	48 8b 05 51 9a 00 00 	mov    rax,QWORD PTR [rip+0x9a51]        # 11440 <rax>
    79ef:	48 83 ea 18          	sub    rdx,0x18
    79f3:	48 89 10             	mov    QWORD PTR [rax],rdx
    79f6:	48 8b 05 43 9a 00 00 	mov    rax,QWORD PTR [rip+0x9a43]        # 11440 <rax>
    79fd:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7a00:	48 89 c2             	mov    rdx,rax
    7a03:	48 8b 05 36 9a 00 00 	mov    rax,QWORD PTR [rip+0x9a36]        # 11440 <rax>
    7a0a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7a0d:	48 89 10             	mov    QWORD PTR [rax],rdx
    7a10:	48 8b 05 29 9a 00 00 	mov    rax,QWORD PTR [rip+0x9a29]        # 11440 <rax>
    7a17:	48 8b 15 02 9b 00 00 	mov    rdx,QWORD PTR [rip+0x9b02]        # 11520 <rbp>
    7a1e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7a21:	48 83 ea 10          	sub    rdx,0x10
    7a25:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7a28:	48 89 02             	mov    QWORD PTR [rdx],rax
    7a2b:	48 8b 15 3e 9c 00 00 	mov    rdx,QWORD PTR [rip+0x9c3e]        # 11670 <s_bss>
    7a32:	48 8b 05 07 9a 00 00 	mov    rax,QWORD PTR [rip+0x9a07]        # 11440 <rax>
    7a39:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    7a40:	48 89 10             	mov    QWORD PTR [rax],rdx
    7a43:	48 8b 05 f6 99 00 00 	mov    rax,QWORD PTR [rip+0x99f6]        # 11440 <rax>
    7a4a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7a4d:	48 89 c2             	mov    rdx,rax
    7a50:	48 8b 05 e9 99 00 00 	mov    rax,QWORD PTR [rip+0x99e9]        # 11440 <rax>
    7a57:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7a5a:	48 89 10             	mov    QWORD PTR [rax],rdx
    7a5d:	48 8b 05 dc 99 00 00 	mov    rax,QWORD PTR [rip+0x99dc]        # 11440 <rax>
    7a64:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7a67:	48 8b 05 d2 99 00 00 	mov    rax,QWORD PTR [rip+0x99d2]        # 11440 <rax>
    7a6e:	48 83 ea 18          	sub    rdx,0x18
    7a72:	48 89 10             	mov    QWORD PTR [rax],rdx
    7a75:	48 8b 15 c4 99 00 00 	mov    rdx,QWORD PTR [rip+0x99c4]        # 11440 <rax>
    7a7c:	48 8b 05 35 9a 00 00 	mov    rax,QWORD PTR [rip+0x9a35]        # 114b8 <rdx>
    7a83:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7a86:	48 89 10             	mov    QWORD PTR [rax],rdx
    7a89:	48 8b 15 e0 9b 00 00 	mov    rdx,QWORD PTR [rip+0x9be0]        # 11670 <s_bss>
    7a90:	48 8b 05 a9 99 00 00 	mov    rax,QWORD PTR [rip+0x99a9]        # 11440 <rax>
    7a97:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    7a9b:	48 89 10             	mov    QWORD PTR [rax],rdx
    7a9e:	48 8b 05 13 9a 00 00 	mov    rax,QWORD PTR [rip+0x9a13]        # 114b8 <rdx>
    7aa5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7aa8:	48 89 c2             	mov    rdx,rax
    7aab:	48 8b 05 06 9a 00 00 	mov    rax,QWORD PTR [rip+0x9a06]        # 114b8 <rdx>
    7ab2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7ab5:	48 89 10             	mov    QWORD PTR [rax],rdx
    7ab8:	48 8b 05 f9 99 00 00 	mov    rax,QWORD PTR [rip+0x99f9]        # 114b8 <rdx>
    7abf:	48 8b 15 7a 99 00 00 	mov    rdx,QWORD PTR [rip+0x997a]        # 11440 <rax>
    7ac6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7ac9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7acc:	48 89 02             	mov    QWORD PTR [rdx],rax
    7acf:	48 8b 15 9a 9b 00 00 	mov    rdx,QWORD PTR [rip+0x9b9a]        # 11670 <s_bss>
    7ad6:	48 8b 05 63 99 00 00 	mov    rax,QWORD PTR [rip+0x9963]        # 11440 <rax>
    7add:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    7ae1:	48 89 10             	mov    QWORD PTR [rax],rdx
    7ae4:	48 8b 05 55 99 00 00 	mov    rax,QWORD PTR [rip+0x9955]        # 11440 <rax>
    7aeb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7aee:	48 89 c2             	mov    rdx,rax
    7af1:	48 8b 05 c0 99 00 00 	mov    rax,QWORD PTR [rip+0x99c0]        # 114b8 <rdx>
    7af8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7afb:	48 89 10             	mov    QWORD PTR [rax],rdx
    7afe:	48 8b 15 6b 9b 00 00 	mov    rdx,QWORD PTR [rip+0x9b6b]        # 11670 <s_bss>
    7b05:	48 8b 05 34 99 00 00 	mov    rax,QWORD PTR [rip+0x9934]        # 11440 <rax>
    7b0c:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    7b13:	48 89 10             	mov    QWORD PTR [rax],rdx
    7b16:	48 8b 05 9b 99 00 00 	mov    rax,QWORD PTR [rip+0x999b]        # 114b8 <rdx>
    7b1d:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7b20:	48 8b 05 91 99 00 00 	mov    rax,QWORD PTR [rip+0x9991]        # 114b8 <rdx>
    7b27:	48 c1 e2 02          	shl    rdx,0x2
    7b2b:	48 89 10             	mov    QWORD PTR [rax],rdx
    7b2e:	48 8b 05 83 99 00 00 	mov    rax,QWORD PTR [rip+0x9983]        # 114b8 <rdx>
    7b35:	48 8b 15 04 99 00 00 	mov    rdx,QWORD PTR [rip+0x9904]        # 11440 <rax>
    7b3c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7b3f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7b42:	48 89 02             	mov    QWORD PTR [rdx],rax
    7b45:	48 8b 15 24 9b 00 00 	mov    rdx,QWORD PTR [rip+0x9b24]        # 11670 <s_bss>
    7b4c:	48 8b 05 ed 98 00 00 	mov    rax,QWORD PTR [rip+0x98ed]        # 11440 <rax>
    7b53:	48 8b 92 40 02 00 00 	mov    rdx,QWORD PTR [rdx+0x240]
    7b5a:	48 89 10             	mov    QWORD PTR [rax],rdx
    7b5d:	48 8b 05 dc 98 00 00 	mov    rax,QWORD PTR [rip+0x98dc]        # 11440 <rax>
    7b64:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7b67:	48 8b 05 4a 99 00 00 	mov    rax,QWORD PTR [rip+0x994a]        # 114b8 <rdx>
    7b6e:	48 83 c2 20          	add    rdx,0x20
    7b72:	48 89 10             	mov    QWORD PTR [rax],rdx
    7b75:	48 8b 15 f4 9a 00 00 	mov    rdx,QWORD PTR [rip+0x9af4]        # 11670 <s_bss>
    7b7c:	48 8b 05 bd 98 00 00 	mov    rax,QWORD PTR [rip+0x98bd]        # 11440 <rax>
    7b83:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    7b87:	48 89 10             	mov    QWORD PTR [rax],rdx
    7b8a:	48 8b 05 27 99 00 00 	mov    rax,QWORD PTR [rip+0x9927]        # 114b8 <rdx>
    7b91:	48 8b 15 a8 98 00 00 	mov    rdx,QWORD PTR [rip+0x98a8]        # 11440 <rax>
    7b98:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7b9b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7b9e:	48 89 02             	mov    QWORD PTR [rdx],rax
    7ba1:	48 8b 15 c8 9a 00 00 	mov    rdx,QWORD PTR [rip+0x9ac8]        # 11670 <s_bss>
    7ba8:	48 8b 05 91 98 00 00 	mov    rax,QWORD PTR [rip+0x9891]        # 11440 <rax>
    7baf:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    7bb6:	48 89 10             	mov    QWORD PTR [rax],rdx
    7bb9:	48 8b 05 80 98 00 00 	mov    rax,QWORD PTR [rip+0x9880]        # 11440 <rax>
    7bc0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7bc3:	48 89 c2             	mov    rdx,rax
    7bc6:	48 8b 05 eb 98 00 00 	mov    rax,QWORD PTR [rip+0x98eb]        # 114b8 <rdx>
    7bcd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7bd0:	48 89 10             	mov    QWORD PTR [rax],rdx
    7bd3:	48 8b 15 96 9a 00 00 	mov    rdx,QWORD PTR [rip+0x9a96]        # 11670 <s_bss>
    7bda:	48 8b 05 5f 98 00 00 	mov    rax,QWORD PTR [rip+0x985f]        # 11440 <rax>
    7be1:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    7be5:	48 89 10             	mov    QWORD PTR [rax],rdx
    7be8:	48 8b 05 51 98 00 00 	mov    rax,QWORD PTR [rip+0x9851]        # 11440 <rax>
    7bef:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7bf2:	48 89 c2             	mov    rdx,rax
    7bf5:	48 8b 05 44 98 00 00 	mov    rax,QWORD PTR [rip+0x9844]        # 11440 <rax>
    7bfc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7bff:	48 89 10             	mov    QWORD PTR [rax],rdx
    7c02:	48 8b 05 37 98 00 00 	mov    rax,QWORD PTR [rip+0x9837]        # 11440 <rax>
    7c09:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    7c0c:	48 8b 05 a5 98 00 00 	mov    rax,QWORD PTR [rip+0x98a5]        # 114b8 <rdx>
    7c13:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7c16:	48 8b 05 23 98 00 00 	mov    rax,QWORD PTR [rip+0x9823]        # 11440 <rax>
    7c1d:	48 01 ca             	add    rdx,rcx
    7c20:	48 89 10             	mov    QWORD PTR [rax],rdx
    7c23:	48 8b 05 16 98 00 00 	mov    rax,QWORD PTR [rip+0x9816]        # 11440 <rax>
    7c2a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7c2d:	8b 10                	mov    edx,DWORD PTR [rax]
    7c2f:	48 8b 05 8a 98 00 00 	mov    rax,QWORD PTR [rip+0x988a]        # 114c0 <edx>
    7c36:	89 d2                	mov    edx,edx
    7c38:	48 89 10             	mov    QWORD PTR [rax],rdx
    7c3b:	48 8b 15 2e 9a 00 00 	mov    rdx,QWORD PTR [rip+0x9a2e]        # 11670 <s_bss>
    7c42:	48 8b 05 f7 97 00 00 	mov    rax,QWORD PTR [rip+0x97f7]        # 11440 <rax>
    7c49:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    7c4d:	48 89 10             	mov    QWORD PTR [rax],rdx
    7c50:	48 8b 15 69 98 00 00 	mov    rdx,QWORD PTR [rip+0x9869]        # 114c0 <edx>
    7c57:	48 8b 05 62 98 00 00 	mov    rax,QWORD PTR [rip+0x9862]        # 114c0 <edx>
    7c5e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7c61:	48 89 10             	mov    QWORD PTR [rax],rdx
    7c64:	48 8b 05 4d 98 00 00 	mov    rax,QWORD PTR [rip+0x984d]        # 114b8 <rdx>
    7c6b:	48 8b 15 ce 97 00 00 	mov    rdx,QWORD PTR [rip+0x97ce]        # 11440 <rax>
    7c72:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7c75:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7c78:	48 89 02             	mov    QWORD PTR [rdx],rax
    7c7b:	48 8b 15 ee 99 00 00 	mov    rdx,QWORD PTR [rip+0x99ee]        # 11670 <s_bss>
    7c82:	48 8b 05 2f 98 00 00 	mov    rax,QWORD PTR [rip+0x982f]        # 114b8 <rdx>
    7c89:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    7c8d:	48 89 10             	mov    QWORD PTR [rax],rdx
    7c90:	48 8b 15 d9 99 00 00 	mov    rdx,QWORD PTR [rip+0x99d9]        # 11670 <s_bss>
    7c97:	48 8b 05 a2 97 00 00 	mov    rax,QWORD PTR [rip+0x97a2]        # 11440 <rax>
    7c9e:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    7ca2:	48 89 10             	mov    QWORD PTR [rax],rdx
    7ca5:	48 8b 05 0c 98 00 00 	mov    rax,QWORD PTR [rip+0x980c]        # 114b8 <rdx>
    7cac:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7caf:	48 89 c2             	mov    rdx,rax
    7cb2:	48 8b 05 ff 97 00 00 	mov    rax,QWORD PTR [rip+0x97ff]        # 114b8 <rdx>
    7cb9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7cbc:	48 89 10             	mov    QWORD PTR [rax],rdx
    7cbf:	48 8b 05 f2 97 00 00 	mov    rax,QWORD PTR [rip+0x97f2]        # 114b8 <rdx>
    7cc6:	48 8b 15 73 97 00 00 	mov    rdx,QWORD PTR [rip+0x9773]        # 11440 <rax>
    7ccd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7cd0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7cd3:	48 89 02             	mov    QWORD PTR [rdx],rax
    7cd6:	48 8b 15 93 99 00 00 	mov    rdx,QWORD PTR [rip+0x9993]        # 11670 <s_bss>
    7cdd:	48 8b 05 5c 97 00 00 	mov    rax,QWORD PTR [rip+0x975c]        # 11440 <rax>
    7ce4:	48 8b 92 40 02 00 00 	mov    rdx,QWORD PTR [rdx+0x240]
    7ceb:	48 89 10             	mov    QWORD PTR [rax],rdx
    7cee:	48 8b 05 4b 97 00 00 	mov    rax,QWORD PTR [rip+0x974b]        # 11440 <rax>
    7cf5:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7cf8:	48 8b 05 b9 97 00 00 	mov    rax,QWORD PTR [rip+0x97b9]        # 114b8 <rdx>
    7cff:	48 83 c2 20          	add    rdx,0x20
    7d03:	48 89 10             	mov    QWORD PTR [rax],rdx
    7d06:	48 8b 15 63 99 00 00 	mov    rdx,QWORD PTR [rip+0x9963]        # 11670 <s_bss>
    7d0d:	48 8b 05 2c 97 00 00 	mov    rax,QWORD PTR [rip+0x972c]        # 11440 <rax>
    7d14:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    7d1b:	48 89 10             	mov    QWORD PTR [rax],rdx
    7d1e:	48 8b 05 93 97 00 00 	mov    rax,QWORD PTR [rip+0x9793]        # 114b8 <rdx>
    7d25:	48 8b 15 14 97 00 00 	mov    rdx,QWORD PTR [rip+0x9714]        # 11440 <rax>
    7d2c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7d2f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7d32:	48 89 02             	mov    QWORD PTR [rdx],rax
    7d35:	48 8b 15 34 99 00 00 	mov    rdx,QWORD PTR [rip+0x9934]        # 11670 <s_bss>
    7d3c:	48 8b 05 fd 96 00 00 	mov    rax,QWORD PTR [rip+0x96fd]        # 11440 <rax>
    7d43:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    7d47:	48 89 10             	mov    QWORD PTR [rax],rdx
    7d4a:	48 8b 05 ef 96 00 00 	mov    rax,QWORD PTR [rip+0x96ef]        # 11440 <rax>
    7d51:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7d54:	48 89 c2             	mov    rdx,rax
    7d57:	48 8b 05 32 97 00 00 	mov    rax,QWORD PTR [rip+0x9732]        # 11490 <rcx>
    7d5e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7d61:	48 89 10             	mov    QWORD PTR [rax],rdx
    7d64:	48 8b 15 05 99 00 00 	mov    rdx,QWORD PTR [rip+0x9905]        # 11670 <s_bss>
    7d6b:	48 8b 05 ce 96 00 00 	mov    rax,QWORD PTR [rip+0x96ce]        # 11440 <rax>
    7d72:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    7d79:	48 89 10             	mov    QWORD PTR [rax],rdx
    7d7c:	48 8b 05 bd 96 00 00 	mov    rax,QWORD PTR [rip+0x96bd]        # 11440 <rax>
    7d83:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7d86:	48 89 c2             	mov    rdx,rax
    7d89:	48 8b 05 28 97 00 00 	mov    rax,QWORD PTR [rip+0x9728]        # 114b8 <rdx>
    7d90:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7d93:	48 89 10             	mov    QWORD PTR [rax],rdx
    7d96:	48 8b 15 d3 98 00 00 	mov    rdx,QWORD PTR [rip+0x98d3]        # 11670 <s_bss>
    7d9d:	48 8b 05 9c 96 00 00 	mov    rax,QWORD PTR [rip+0x969c]        # 11440 <rax>
    7da4:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    7da8:	48 89 10             	mov    QWORD PTR [rax],rdx
    7dab:	48 8b 05 06 97 00 00 	mov    rax,QWORD PTR [rip+0x9706]        # 114b8 <rdx>
    7db2:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    7db5:	48 8b 05 d4 96 00 00 	mov    rax,QWORD PTR [rip+0x96d4]        # 11490 <rcx>
    7dbc:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7dbf:	48 8b 05 f2 96 00 00 	mov    rax,QWORD PTR [rip+0x96f2]        # 114b8 <rdx>
    7dc6:	48 01 ca             	add    rdx,rcx
    7dc9:	48 89 10             	mov    QWORD PTR [rax],rdx
    7dcc:	48 8b 05 e5 96 00 00 	mov    rax,QWORD PTR [rip+0x96e5]        # 114b8 <rdx>
    7dd3:	48 8b 15 66 96 00 00 	mov    rdx,QWORD PTR [rip+0x9666]        # 11440 <rax>
    7dda:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7ddd:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7de0:	48 89 02             	mov    QWORD PTR [rdx],rax
    7de3:	48 8b 05 36 97 00 00 	mov    rax,QWORD PTR [rip+0x9736]        # 11520 <rbp>
    7dea:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7ded:	48 83 e8 10          	sub    rax,0x10
    7df1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7df4:	48 83 f8 5d          	cmp    rax,0x5d
    7df8:	0f 87 13 3a 00 00    	ja     b811 <fib_switch+0x40d4>
    7dfe:	48 8b 05 1b 97 00 00 	mov    rax,QWORD PTR [rip+0x971b]        # 11520 <rbp>
    7e05:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7e08:	48 83 e8 10          	sub    rax,0x10
    7e0c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7e0f:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    7e13:	48 8b 05 06 97 00 00 	mov    rax,QWORD PTR [rip+0x9706]        # 11520 <rbp>
    7e1a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7e1d:	48 83 e8 10          	sub    rax,0x10
    7e21:	48 89 c2             	mov    rdx,rax
    7e24:	48 8b 05 15 96 00 00 	mov    rax,QWORD PTR [rip+0x9615]        # 11440 <rax>
    7e2b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7e2e:	48 89 10             	mov    QWORD PTR [rax],rdx
    7e31:	48 8b 05 08 96 00 00 	mov    rax,QWORD PTR [rip+0x9608]        # 11440 <rax>
    7e38:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7e3b:	48 8b 05 76 96 00 00 	mov    rax,QWORD PTR [rip+0x9676]        # 114b8 <rdx>
    7e42:	48 c1 e2 02          	shl    rdx,0x2
    7e46:	48 89 10             	mov    QWORD PTR [rax],rdx
    7e49:	48 8b 05 10 98 00 00 	mov    rax,QWORD PTR [rip+0x9810]        # 11660 <s_rodata>
    7e50:	48 8d 50 04          	lea    rdx,[rax+0x4]
    7e54:	48 8b 05 e5 95 00 00 	mov    rax,QWORD PTR [rip+0x95e5]        # 11440 <rax>
    7e5b:	48 89 10             	mov    QWORD PTR [rax],rdx
    7e5e:	48 8b 05 53 96 00 00 	mov    rax,QWORD PTR [rip+0x9653]        # 114b8 <rdx>
    7e65:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7e68:	48 8b 05 d1 95 00 00 	mov    rax,QWORD PTR [rip+0x95d1]        # 11440 <rax>
    7e6f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7e72:	48 01 d0             	add    rax,rdx
    7e75:	8b 10                	mov    edx,DWORD PTR [rax]
    7e77:	48 8b 05 ca 95 00 00 	mov    rax,QWORD PTR [rip+0x95ca]        # 11448 <eax>
    7e7e:	89 d2                	mov    edx,edx
    7e80:	48 89 10             	mov    QWORD PTR [rax],rdx
    7e83:	48 8b 15 be 95 00 00 	mov    rdx,QWORD PTR [rip+0x95be]        # 11448 <eax>
    7e8a:	48 8b 05 af 95 00 00 	mov    rax,QWORD PTR [rip+0x95af]        # 11440 <rax>
    7e91:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7e94:	48 89 10             	mov    QWORD PTR [rax],rdx
    7e97:	48 8b 05 c2 97 00 00 	mov    rax,QWORD PTR [rip+0x97c2]        # 11660 <s_rodata>
    7e9e:	48 8d 50 04          	lea    rdx,[rax+0x4]
    7ea2:	48 8b 05 0f 96 00 00 	mov    rax,QWORD PTR [rip+0x960f]        # 114b8 <rdx>
    7ea9:	48 89 10             	mov    QWORD PTR [rax],rdx
    7eac:	48 8b 05 8d 95 00 00 	mov    rax,QWORD PTR [rip+0x958d]        # 11440 <rax>
    7eb3:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    7eb6:	48 8b 05 fb 95 00 00 	mov    rax,QWORD PTR [rip+0x95fb]        # 114b8 <rdx>
    7ebd:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7ec0:	48 8b 05 79 95 00 00 	mov    rax,QWORD PTR [rip+0x9579]        # 11440 <rax>
    7ec7:	48 01 ca             	add    rdx,rcx
    7eca:	48 89 10             	mov    QWORD PTR [rax],rdx
    7ecd:	48 83 7d f0 5d       	cmp    QWORD PTR [rbp-0x10],0x5d
    7ed2:	0f 87 3c 39 00 00    	ja     b814 <fib_switch+0x40d7>
    7ed8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    7edc:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    7ee3:	00 
    7ee4:	48 8d 05 19 71 00 00 	lea    rax,[rip+0x7119]        # f004 <_IO_stdin_used+0x4>
    7eeb:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    7eee:	48 98                	cdqe   
    7ef0:	48 8d 15 0d 71 00 00 	lea    rdx,[rip+0x710d]        # f004 <_IO_stdin_used+0x4>
    7ef7:	48 01 d0             	add    rax,rdx
    7efa:	3e ff e0             	notrack jmp rax
    7efd:	90                   	nop
    7efe:	48 8b 15 6b 97 00 00 	mov    rdx,QWORD PTR [rip+0x976b]        # 11670 <s_bss>
    7f05:	48 8b 05 34 95 00 00 	mov    rax,QWORD PTR [rip+0x9534]        # 11440 <rax>
    7f0c:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    7f13:	48 89 10             	mov    QWORD PTR [rax],rdx
    7f16:	48 8b 05 23 95 00 00 	mov    rax,QWORD PTR [rip+0x9523]        # 11440 <rax>
    7f1d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7f20:	48 89 c2             	mov    rdx,rax
    7f23:	48 8b 05 16 95 00 00 	mov    rax,QWORD PTR [rip+0x9516]        # 11440 <rax>
    7f2a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7f2d:	48 89 10             	mov    QWORD PTR [rax],rdx
    7f30:	48 8b 05 09 95 00 00 	mov    rax,QWORD PTR [rip+0x9509]        # 11440 <rax>
    7f37:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7f3a:	48 8b 05 ff 94 00 00 	mov    rax,QWORD PTR [rip+0x94ff]        # 11440 <rax>
    7f41:	48 83 ea 08          	sub    rdx,0x8
    7f45:	48 89 10             	mov    QWORD PTR [rax],rdx
    7f48:	48 8b 05 f1 94 00 00 	mov    rax,QWORD PTR [rip+0x94f1]        # 11440 <rax>
    7f4f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7f52:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    7f59:	e9 b7 38 00 00       	jmp    b815 <fib_switch+0x40d8>
    7f5e:	90                   	nop
    7f5f:	48 8b 15 0a 97 00 00 	mov    rdx,QWORD PTR [rip+0x970a]        # 11670 <s_bss>
    7f66:	48 8b 05 d3 94 00 00 	mov    rax,QWORD PTR [rip+0x94d3]        # 11440 <rax>
    7f6d:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    7f74:	48 89 10             	mov    QWORD PTR [rax],rdx
    7f77:	48 8b 05 c2 94 00 00 	mov    rax,QWORD PTR [rip+0x94c2]        # 11440 <rax>
    7f7e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7f81:	48 89 c2             	mov    rdx,rax
    7f84:	48 8b 05 b5 94 00 00 	mov    rax,QWORD PTR [rip+0x94b5]        # 11440 <rax>
    7f8b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7f8e:	48 89 10             	mov    QWORD PTR [rax],rdx
    7f91:	48 8b 05 a8 94 00 00 	mov    rax,QWORD PTR [rip+0x94a8]        # 11440 <rax>
    7f98:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7f9b:	48 8b 05 9e 94 00 00 	mov    rax,QWORD PTR [rip+0x949e]        # 11440 <rax>
    7fa2:	48 83 ea 08          	sub    rdx,0x8
    7fa6:	48 89 10             	mov    QWORD PTR [rax],rdx
    7fa9:	48 8b 05 90 94 00 00 	mov    rax,QWORD PTR [rip+0x9490]        # 11440 <rax>
    7fb0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7fb3:	48 c7 00 01 00 00 00 	mov    QWORD PTR [rax],0x1
    7fba:	e9 56 38 00 00       	jmp    b815 <fib_switch+0x40d8>
    7fbf:	90                   	nop
    7fc0:	48 8b 15 a9 96 00 00 	mov    rdx,QWORD PTR [rip+0x96a9]        # 11670 <s_bss>
    7fc7:	48 8b 05 72 94 00 00 	mov    rax,QWORD PTR [rip+0x9472]        # 11440 <rax>
    7fce:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    7fd5:	48 89 10             	mov    QWORD PTR [rax],rdx
    7fd8:	48 8b 05 61 94 00 00 	mov    rax,QWORD PTR [rip+0x9461]        # 11440 <rax>
    7fdf:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7fe2:	48 89 c2             	mov    rdx,rax
    7fe5:	48 8b 05 54 94 00 00 	mov    rax,QWORD PTR [rip+0x9454]        # 11440 <rax>
    7fec:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    7fef:	48 89 10             	mov    QWORD PTR [rax],rdx
    7ff2:	48 8b 05 47 94 00 00 	mov    rax,QWORD PTR [rip+0x9447]        # 11440 <rax>
    7ff9:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    7ffc:	48 8b 05 3d 94 00 00 	mov    rax,QWORD PTR [rip+0x943d]        # 11440 <rax>
    8003:	48 83 ea 08          	sub    rdx,0x8
    8007:	48 89 10             	mov    QWORD PTR [rax],rdx
    800a:	48 8b 05 2f 94 00 00 	mov    rax,QWORD PTR [rip+0x942f]        # 11440 <rax>
    8011:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8014:	48 c7 00 01 00 00 00 	mov    QWORD PTR [rax],0x1
    801b:	e9 f5 37 00 00       	jmp    b815 <fib_switch+0x40d8>
    8020:	90                   	nop
    8021:	48 8b 15 48 96 00 00 	mov    rdx,QWORD PTR [rip+0x9648]        # 11670 <s_bss>
    8028:	48 8b 05 11 94 00 00 	mov    rax,QWORD PTR [rip+0x9411]        # 11440 <rax>
    802f:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8036:	48 89 10             	mov    QWORD PTR [rax],rdx
    8039:	48 8b 05 00 94 00 00 	mov    rax,QWORD PTR [rip+0x9400]        # 11440 <rax>
    8040:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8043:	48 89 c2             	mov    rdx,rax
    8046:	48 8b 05 f3 93 00 00 	mov    rax,QWORD PTR [rip+0x93f3]        # 11440 <rax>
    804d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8050:	48 89 10             	mov    QWORD PTR [rax],rdx
    8053:	48 8b 05 e6 93 00 00 	mov    rax,QWORD PTR [rip+0x93e6]        # 11440 <rax>
    805a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    805d:	48 8b 05 dc 93 00 00 	mov    rax,QWORD PTR [rip+0x93dc]        # 11440 <rax>
    8064:	48 83 ea 08          	sub    rdx,0x8
    8068:	48 89 10             	mov    QWORD PTR [rax],rdx
    806b:	48 8b 05 ce 93 00 00 	mov    rax,QWORD PTR [rip+0x93ce]        # 11440 <rax>
    8072:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8075:	48 c7 00 02 00 00 00 	mov    QWORD PTR [rax],0x2
    807c:	e9 94 37 00 00       	jmp    b815 <fib_switch+0x40d8>
    8081:	90                   	nop
    8082:	48 8b 15 e7 95 00 00 	mov    rdx,QWORD PTR [rip+0x95e7]        # 11670 <s_bss>
    8089:	48 8b 05 b0 93 00 00 	mov    rax,QWORD PTR [rip+0x93b0]        # 11440 <rax>
    8090:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8097:	48 89 10             	mov    QWORD PTR [rax],rdx
    809a:	48 8b 05 9f 93 00 00 	mov    rax,QWORD PTR [rip+0x939f]        # 11440 <rax>
    80a1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    80a4:	48 89 c2             	mov    rdx,rax
    80a7:	48 8b 05 92 93 00 00 	mov    rax,QWORD PTR [rip+0x9392]        # 11440 <rax>
    80ae:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    80b1:	48 89 10             	mov    QWORD PTR [rax],rdx
    80b4:	48 8b 05 85 93 00 00 	mov    rax,QWORD PTR [rip+0x9385]        # 11440 <rax>
    80bb:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    80be:	48 8b 05 7b 93 00 00 	mov    rax,QWORD PTR [rip+0x937b]        # 11440 <rax>
    80c5:	48 83 ea 08          	sub    rdx,0x8
    80c9:	48 89 10             	mov    QWORD PTR [rax],rdx
    80cc:	48 8b 05 6d 93 00 00 	mov    rax,QWORD PTR [rip+0x936d]        # 11440 <rax>
    80d3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    80d6:	48 c7 00 03 00 00 00 	mov    QWORD PTR [rax],0x3
    80dd:	e9 33 37 00 00       	jmp    b815 <fib_switch+0x40d8>
    80e2:	90                   	nop
    80e3:	48 8b 15 86 95 00 00 	mov    rdx,QWORD PTR [rip+0x9586]        # 11670 <s_bss>
    80ea:	48 8b 05 4f 93 00 00 	mov    rax,QWORD PTR [rip+0x934f]        # 11440 <rax>
    80f1:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    80f8:	48 89 10             	mov    QWORD PTR [rax],rdx
    80fb:	48 8b 05 3e 93 00 00 	mov    rax,QWORD PTR [rip+0x933e]        # 11440 <rax>
    8102:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8105:	48 89 c2             	mov    rdx,rax
    8108:	48 8b 05 31 93 00 00 	mov    rax,QWORD PTR [rip+0x9331]        # 11440 <rax>
    810f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8112:	48 89 10             	mov    QWORD PTR [rax],rdx
    8115:	48 8b 05 24 93 00 00 	mov    rax,QWORD PTR [rip+0x9324]        # 11440 <rax>
    811c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    811f:	48 8b 05 1a 93 00 00 	mov    rax,QWORD PTR [rip+0x931a]        # 11440 <rax>
    8126:	48 83 ea 08          	sub    rdx,0x8
    812a:	48 89 10             	mov    QWORD PTR [rax],rdx
    812d:	48 8b 05 0c 93 00 00 	mov    rax,QWORD PTR [rip+0x930c]        # 11440 <rax>
    8134:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8137:	48 c7 00 05 00 00 00 	mov    QWORD PTR [rax],0x5
    813e:	e9 d2 36 00 00       	jmp    b815 <fib_switch+0x40d8>
    8143:	90                   	nop
    8144:	48 8b 15 25 95 00 00 	mov    rdx,QWORD PTR [rip+0x9525]        # 11670 <s_bss>
    814b:	48 8b 05 ee 92 00 00 	mov    rax,QWORD PTR [rip+0x92ee]        # 11440 <rax>
    8152:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8159:	48 89 10             	mov    QWORD PTR [rax],rdx
    815c:	48 8b 05 dd 92 00 00 	mov    rax,QWORD PTR [rip+0x92dd]        # 11440 <rax>
    8163:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8166:	48 89 c2             	mov    rdx,rax
    8169:	48 8b 05 d0 92 00 00 	mov    rax,QWORD PTR [rip+0x92d0]        # 11440 <rax>
    8170:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8173:	48 89 10             	mov    QWORD PTR [rax],rdx
    8176:	48 8b 05 c3 92 00 00 	mov    rax,QWORD PTR [rip+0x92c3]        # 11440 <rax>
    817d:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8180:	48 8b 05 b9 92 00 00 	mov    rax,QWORD PTR [rip+0x92b9]        # 11440 <rax>
    8187:	48 83 ea 08          	sub    rdx,0x8
    818b:	48 89 10             	mov    QWORD PTR [rax],rdx
    818e:	48 8b 05 ab 92 00 00 	mov    rax,QWORD PTR [rip+0x92ab]        # 11440 <rax>
    8195:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8198:	48 c7 00 08 00 00 00 	mov    QWORD PTR [rax],0x8
    819f:	e9 71 36 00 00       	jmp    b815 <fib_switch+0x40d8>
    81a4:	90                   	nop
    81a5:	48 8b 15 c4 94 00 00 	mov    rdx,QWORD PTR [rip+0x94c4]        # 11670 <s_bss>
    81ac:	48 8b 05 8d 92 00 00 	mov    rax,QWORD PTR [rip+0x928d]        # 11440 <rax>
    81b3:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    81ba:	48 89 10             	mov    QWORD PTR [rax],rdx
    81bd:	48 8b 05 7c 92 00 00 	mov    rax,QWORD PTR [rip+0x927c]        # 11440 <rax>
    81c4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    81c7:	48 89 c2             	mov    rdx,rax
    81ca:	48 8b 05 6f 92 00 00 	mov    rax,QWORD PTR [rip+0x926f]        # 11440 <rax>
    81d1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    81d4:	48 89 10             	mov    QWORD PTR [rax],rdx
    81d7:	48 8b 05 62 92 00 00 	mov    rax,QWORD PTR [rip+0x9262]        # 11440 <rax>
    81de:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    81e1:	48 8b 05 58 92 00 00 	mov    rax,QWORD PTR [rip+0x9258]        # 11440 <rax>
    81e8:	48 83 ea 08          	sub    rdx,0x8
    81ec:	48 89 10             	mov    QWORD PTR [rax],rdx
    81ef:	48 8b 05 4a 92 00 00 	mov    rax,QWORD PTR [rip+0x924a]        # 11440 <rax>
    81f6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    81f9:	48 c7 00 0d 00 00 00 	mov    QWORD PTR [rax],0xd
    8200:	e9 10 36 00 00       	jmp    b815 <fib_switch+0x40d8>
    8205:	90                   	nop
    8206:	48 8b 15 63 94 00 00 	mov    rdx,QWORD PTR [rip+0x9463]        # 11670 <s_bss>
    820d:	48 8b 05 2c 92 00 00 	mov    rax,QWORD PTR [rip+0x922c]        # 11440 <rax>
    8214:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    821b:	48 89 10             	mov    QWORD PTR [rax],rdx
    821e:	48 8b 05 1b 92 00 00 	mov    rax,QWORD PTR [rip+0x921b]        # 11440 <rax>
    8225:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8228:	48 89 c2             	mov    rdx,rax
    822b:	48 8b 05 0e 92 00 00 	mov    rax,QWORD PTR [rip+0x920e]        # 11440 <rax>
    8232:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8235:	48 89 10             	mov    QWORD PTR [rax],rdx
    8238:	48 8b 05 01 92 00 00 	mov    rax,QWORD PTR [rip+0x9201]        # 11440 <rax>
    823f:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8242:	48 8b 05 f7 91 00 00 	mov    rax,QWORD PTR [rip+0x91f7]        # 11440 <rax>
    8249:	48 83 ea 08          	sub    rdx,0x8
    824d:	48 89 10             	mov    QWORD PTR [rax],rdx
    8250:	48 8b 05 e9 91 00 00 	mov    rax,QWORD PTR [rip+0x91e9]        # 11440 <rax>
    8257:	48 8b 00             	mov    rax,QWORD PTR [rax]
    825a:	48 c7 00 15 00 00 00 	mov    QWORD PTR [rax],0x15
    8261:	e9 af 35 00 00       	jmp    b815 <fib_switch+0x40d8>
    8266:	90                   	nop
    8267:	48 8b 15 02 94 00 00 	mov    rdx,QWORD PTR [rip+0x9402]        # 11670 <s_bss>
    826e:	48 8b 05 cb 91 00 00 	mov    rax,QWORD PTR [rip+0x91cb]        # 11440 <rax>
    8275:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    827c:	48 89 10             	mov    QWORD PTR [rax],rdx
    827f:	48 8b 05 ba 91 00 00 	mov    rax,QWORD PTR [rip+0x91ba]        # 11440 <rax>
    8286:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8289:	48 89 c2             	mov    rdx,rax
    828c:	48 8b 05 ad 91 00 00 	mov    rax,QWORD PTR [rip+0x91ad]        # 11440 <rax>
    8293:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8296:	48 89 10             	mov    QWORD PTR [rax],rdx
    8299:	48 8b 05 a0 91 00 00 	mov    rax,QWORD PTR [rip+0x91a0]        # 11440 <rax>
    82a0:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    82a3:	48 8b 05 96 91 00 00 	mov    rax,QWORD PTR [rip+0x9196]        # 11440 <rax>
    82aa:	48 83 ea 08          	sub    rdx,0x8
    82ae:	48 89 10             	mov    QWORD PTR [rax],rdx
    82b1:	48 8b 05 88 91 00 00 	mov    rax,QWORD PTR [rip+0x9188]        # 11440 <rax>
    82b8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    82bb:	48 c7 00 22 00 00 00 	mov    QWORD PTR [rax],0x22
    82c2:	e9 4e 35 00 00       	jmp    b815 <fib_switch+0x40d8>
    82c7:	90                   	nop
    82c8:	48 8b 15 a1 93 00 00 	mov    rdx,QWORD PTR [rip+0x93a1]        # 11670 <s_bss>
    82cf:	48 8b 05 6a 91 00 00 	mov    rax,QWORD PTR [rip+0x916a]        # 11440 <rax>
    82d6:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    82dd:	48 89 10             	mov    QWORD PTR [rax],rdx
    82e0:	48 8b 05 59 91 00 00 	mov    rax,QWORD PTR [rip+0x9159]        # 11440 <rax>
    82e7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    82ea:	48 89 c2             	mov    rdx,rax
    82ed:	48 8b 05 4c 91 00 00 	mov    rax,QWORD PTR [rip+0x914c]        # 11440 <rax>
    82f4:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    82f7:	48 89 10             	mov    QWORD PTR [rax],rdx
    82fa:	48 8b 05 3f 91 00 00 	mov    rax,QWORD PTR [rip+0x913f]        # 11440 <rax>
    8301:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8304:	48 8b 05 35 91 00 00 	mov    rax,QWORD PTR [rip+0x9135]        # 11440 <rax>
    830b:	48 83 ea 08          	sub    rdx,0x8
    830f:	48 89 10             	mov    QWORD PTR [rax],rdx
    8312:	48 8b 05 27 91 00 00 	mov    rax,QWORD PTR [rip+0x9127]        # 11440 <rax>
    8319:	48 8b 00             	mov    rax,QWORD PTR [rax]
    831c:	48 c7 00 37 00 00 00 	mov    QWORD PTR [rax],0x37
    8323:	e9 ed 34 00 00       	jmp    b815 <fib_switch+0x40d8>
    8328:	90                   	nop
    8329:	48 8b 15 40 93 00 00 	mov    rdx,QWORD PTR [rip+0x9340]        # 11670 <s_bss>
    8330:	48 8b 05 09 91 00 00 	mov    rax,QWORD PTR [rip+0x9109]        # 11440 <rax>
    8337:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    833e:	48 89 10             	mov    QWORD PTR [rax],rdx
    8341:	48 8b 05 f8 90 00 00 	mov    rax,QWORD PTR [rip+0x90f8]        # 11440 <rax>
    8348:	48 8b 00             	mov    rax,QWORD PTR [rax]
    834b:	48 89 c2             	mov    rdx,rax
    834e:	48 8b 05 eb 90 00 00 	mov    rax,QWORD PTR [rip+0x90eb]        # 11440 <rax>
    8355:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8358:	48 89 10             	mov    QWORD PTR [rax],rdx
    835b:	48 8b 05 de 90 00 00 	mov    rax,QWORD PTR [rip+0x90de]        # 11440 <rax>
    8362:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8365:	48 8b 05 d4 90 00 00 	mov    rax,QWORD PTR [rip+0x90d4]        # 11440 <rax>
    836c:	48 83 ea 08          	sub    rdx,0x8
    8370:	48 89 10             	mov    QWORD PTR [rax],rdx
    8373:	48 8b 05 c6 90 00 00 	mov    rax,QWORD PTR [rip+0x90c6]        # 11440 <rax>
    837a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    837d:	48 c7 00 59 00 00 00 	mov    QWORD PTR [rax],0x59
    8384:	e9 8c 34 00 00       	jmp    b815 <fib_switch+0x40d8>
    8389:	90                   	nop
    838a:	48 8b 15 df 92 00 00 	mov    rdx,QWORD PTR [rip+0x92df]        # 11670 <s_bss>
    8391:	48 8b 05 a8 90 00 00 	mov    rax,QWORD PTR [rip+0x90a8]        # 11440 <rax>
    8398:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    839f:	48 89 10             	mov    QWORD PTR [rax],rdx
    83a2:	48 8b 05 97 90 00 00 	mov    rax,QWORD PTR [rip+0x9097]        # 11440 <rax>
    83a9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    83ac:	48 89 c2             	mov    rdx,rax
    83af:	48 8b 05 8a 90 00 00 	mov    rax,QWORD PTR [rip+0x908a]        # 11440 <rax>
    83b6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    83b9:	48 89 10             	mov    QWORD PTR [rax],rdx
    83bc:	48 8b 05 7d 90 00 00 	mov    rax,QWORD PTR [rip+0x907d]        # 11440 <rax>
    83c3:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    83c6:	48 8b 05 73 90 00 00 	mov    rax,QWORD PTR [rip+0x9073]        # 11440 <rax>
    83cd:	48 83 ea 08          	sub    rdx,0x8
    83d1:	48 89 10             	mov    QWORD PTR [rax],rdx
    83d4:	48 8b 05 65 90 00 00 	mov    rax,QWORD PTR [rip+0x9065]        # 11440 <rax>
    83db:	48 8b 00             	mov    rax,QWORD PTR [rax]
    83de:	48 c7 00 90 00 00 00 	mov    QWORD PTR [rax],0x90
    83e5:	e9 2b 34 00 00       	jmp    b815 <fib_switch+0x40d8>
    83ea:	90                   	nop
    83eb:	48 8b 15 7e 92 00 00 	mov    rdx,QWORD PTR [rip+0x927e]        # 11670 <s_bss>
    83f2:	48 8b 05 47 90 00 00 	mov    rax,QWORD PTR [rip+0x9047]        # 11440 <rax>
    83f9:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8400:	48 89 10             	mov    QWORD PTR [rax],rdx
    8403:	48 8b 05 36 90 00 00 	mov    rax,QWORD PTR [rip+0x9036]        # 11440 <rax>
    840a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    840d:	48 89 c2             	mov    rdx,rax
    8410:	48 8b 05 29 90 00 00 	mov    rax,QWORD PTR [rip+0x9029]        # 11440 <rax>
    8417:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    841a:	48 89 10             	mov    QWORD PTR [rax],rdx
    841d:	48 8b 05 1c 90 00 00 	mov    rax,QWORD PTR [rip+0x901c]        # 11440 <rax>
    8424:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8427:	48 8b 05 12 90 00 00 	mov    rax,QWORD PTR [rip+0x9012]        # 11440 <rax>
    842e:	48 83 ea 08          	sub    rdx,0x8
    8432:	48 89 10             	mov    QWORD PTR [rax],rdx
    8435:	48 8b 05 04 90 00 00 	mov    rax,QWORD PTR [rip+0x9004]        # 11440 <rax>
    843c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    843f:	48 c7 00 e9 00 00 00 	mov    QWORD PTR [rax],0xe9
    8446:	e9 ca 33 00 00       	jmp    b815 <fib_switch+0x40d8>
    844b:	90                   	nop
    844c:	48 8b 15 1d 92 00 00 	mov    rdx,QWORD PTR [rip+0x921d]        # 11670 <s_bss>
    8453:	48 8b 05 e6 8f 00 00 	mov    rax,QWORD PTR [rip+0x8fe6]        # 11440 <rax>
    845a:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8461:	48 89 10             	mov    QWORD PTR [rax],rdx
    8464:	48 8b 05 d5 8f 00 00 	mov    rax,QWORD PTR [rip+0x8fd5]        # 11440 <rax>
    846b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    846e:	48 89 c2             	mov    rdx,rax
    8471:	48 8b 05 c8 8f 00 00 	mov    rax,QWORD PTR [rip+0x8fc8]        # 11440 <rax>
    8478:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    847b:	48 89 10             	mov    QWORD PTR [rax],rdx
    847e:	48 8b 05 bb 8f 00 00 	mov    rax,QWORD PTR [rip+0x8fbb]        # 11440 <rax>
    8485:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8488:	48 8b 05 b1 8f 00 00 	mov    rax,QWORD PTR [rip+0x8fb1]        # 11440 <rax>
    848f:	48 83 ea 08          	sub    rdx,0x8
    8493:	48 89 10             	mov    QWORD PTR [rax],rdx
    8496:	48 8b 05 a3 8f 00 00 	mov    rax,QWORD PTR [rip+0x8fa3]        # 11440 <rax>
    849d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    84a0:	48 c7 00 79 01 00 00 	mov    QWORD PTR [rax],0x179
    84a7:	e9 69 33 00 00       	jmp    b815 <fib_switch+0x40d8>
    84ac:	90                   	nop
    84ad:	48 8b 15 bc 91 00 00 	mov    rdx,QWORD PTR [rip+0x91bc]        # 11670 <s_bss>
    84b4:	48 8b 05 85 8f 00 00 	mov    rax,QWORD PTR [rip+0x8f85]        # 11440 <rax>
    84bb:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    84c2:	48 89 10             	mov    QWORD PTR [rax],rdx
    84c5:	48 8b 05 74 8f 00 00 	mov    rax,QWORD PTR [rip+0x8f74]        # 11440 <rax>
    84cc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    84cf:	48 89 c2             	mov    rdx,rax
    84d2:	48 8b 05 67 8f 00 00 	mov    rax,QWORD PTR [rip+0x8f67]        # 11440 <rax>
    84d9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    84dc:	48 89 10             	mov    QWORD PTR [rax],rdx
    84df:	48 8b 05 5a 8f 00 00 	mov    rax,QWORD PTR [rip+0x8f5a]        # 11440 <rax>
    84e6:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    84e9:	48 8b 05 50 8f 00 00 	mov    rax,QWORD PTR [rip+0x8f50]        # 11440 <rax>
    84f0:	48 83 ea 08          	sub    rdx,0x8
    84f4:	48 89 10             	mov    QWORD PTR [rax],rdx
    84f7:	48 8b 05 42 8f 00 00 	mov    rax,QWORD PTR [rip+0x8f42]        # 11440 <rax>
    84fe:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8501:	48 c7 00 62 02 00 00 	mov    QWORD PTR [rax],0x262
    8508:	e9 08 33 00 00       	jmp    b815 <fib_switch+0x40d8>
    850d:	90                   	nop
    850e:	48 8b 15 5b 91 00 00 	mov    rdx,QWORD PTR [rip+0x915b]        # 11670 <s_bss>
    8515:	48 8b 05 24 8f 00 00 	mov    rax,QWORD PTR [rip+0x8f24]        # 11440 <rax>
    851c:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8523:	48 89 10             	mov    QWORD PTR [rax],rdx
    8526:	48 8b 05 13 8f 00 00 	mov    rax,QWORD PTR [rip+0x8f13]        # 11440 <rax>
    852d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8530:	48 89 c2             	mov    rdx,rax
    8533:	48 8b 05 06 8f 00 00 	mov    rax,QWORD PTR [rip+0x8f06]        # 11440 <rax>
    853a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    853d:	48 89 10             	mov    QWORD PTR [rax],rdx
    8540:	48 8b 05 f9 8e 00 00 	mov    rax,QWORD PTR [rip+0x8ef9]        # 11440 <rax>
    8547:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    854a:	48 8b 05 ef 8e 00 00 	mov    rax,QWORD PTR [rip+0x8eef]        # 11440 <rax>
    8551:	48 83 ea 08          	sub    rdx,0x8
    8555:	48 89 10             	mov    QWORD PTR [rax],rdx
    8558:	48 8b 05 e1 8e 00 00 	mov    rax,QWORD PTR [rip+0x8ee1]        # 11440 <rax>
    855f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8562:	48 c7 00 db 03 00 00 	mov    QWORD PTR [rax],0x3db
    8569:	e9 a7 32 00 00       	jmp    b815 <fib_switch+0x40d8>
    856e:	90                   	nop
    856f:	48 8b 15 fa 90 00 00 	mov    rdx,QWORD PTR [rip+0x90fa]        # 11670 <s_bss>
    8576:	48 8b 05 c3 8e 00 00 	mov    rax,QWORD PTR [rip+0x8ec3]        # 11440 <rax>
    857d:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8584:	48 89 10             	mov    QWORD PTR [rax],rdx
    8587:	48 8b 05 b2 8e 00 00 	mov    rax,QWORD PTR [rip+0x8eb2]        # 11440 <rax>
    858e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8591:	48 89 c2             	mov    rdx,rax
    8594:	48 8b 05 a5 8e 00 00 	mov    rax,QWORD PTR [rip+0x8ea5]        # 11440 <rax>
    859b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    859e:	48 89 10             	mov    QWORD PTR [rax],rdx
    85a1:	48 8b 05 98 8e 00 00 	mov    rax,QWORD PTR [rip+0x8e98]        # 11440 <rax>
    85a8:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    85ab:	48 8b 05 8e 8e 00 00 	mov    rax,QWORD PTR [rip+0x8e8e]        # 11440 <rax>
    85b2:	48 83 ea 08          	sub    rdx,0x8
    85b6:	48 89 10             	mov    QWORD PTR [rax],rdx
    85b9:	48 8b 05 80 8e 00 00 	mov    rax,QWORD PTR [rip+0x8e80]        # 11440 <rax>
    85c0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    85c3:	48 c7 00 3d 06 00 00 	mov    QWORD PTR [rax],0x63d
    85ca:	e9 46 32 00 00       	jmp    b815 <fib_switch+0x40d8>
    85cf:	90                   	nop
    85d0:	48 8b 15 99 90 00 00 	mov    rdx,QWORD PTR [rip+0x9099]        # 11670 <s_bss>
    85d7:	48 8b 05 62 8e 00 00 	mov    rax,QWORD PTR [rip+0x8e62]        # 11440 <rax>
    85de:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    85e5:	48 89 10             	mov    QWORD PTR [rax],rdx
    85e8:	48 8b 05 51 8e 00 00 	mov    rax,QWORD PTR [rip+0x8e51]        # 11440 <rax>
    85ef:	48 8b 00             	mov    rax,QWORD PTR [rax]
    85f2:	48 89 c2             	mov    rdx,rax
    85f5:	48 8b 05 44 8e 00 00 	mov    rax,QWORD PTR [rip+0x8e44]        # 11440 <rax>
    85fc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    85ff:	48 89 10             	mov    QWORD PTR [rax],rdx
    8602:	48 8b 05 37 8e 00 00 	mov    rax,QWORD PTR [rip+0x8e37]        # 11440 <rax>
    8609:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    860c:	48 8b 05 2d 8e 00 00 	mov    rax,QWORD PTR [rip+0x8e2d]        # 11440 <rax>
    8613:	48 83 ea 08          	sub    rdx,0x8
    8617:	48 89 10             	mov    QWORD PTR [rax],rdx
    861a:	48 8b 05 1f 8e 00 00 	mov    rax,QWORD PTR [rip+0x8e1f]        # 11440 <rax>
    8621:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8624:	48 c7 00 18 0a 00 00 	mov    QWORD PTR [rax],0xa18
    862b:	e9 e5 31 00 00       	jmp    b815 <fib_switch+0x40d8>
    8630:	90                   	nop
    8631:	48 8b 15 38 90 00 00 	mov    rdx,QWORD PTR [rip+0x9038]        # 11670 <s_bss>
    8638:	48 8b 05 01 8e 00 00 	mov    rax,QWORD PTR [rip+0x8e01]        # 11440 <rax>
    863f:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8646:	48 89 10             	mov    QWORD PTR [rax],rdx
    8649:	48 8b 05 f0 8d 00 00 	mov    rax,QWORD PTR [rip+0x8df0]        # 11440 <rax>
    8650:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8653:	48 89 c2             	mov    rdx,rax
    8656:	48 8b 05 e3 8d 00 00 	mov    rax,QWORD PTR [rip+0x8de3]        # 11440 <rax>
    865d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8660:	48 89 10             	mov    QWORD PTR [rax],rdx
    8663:	48 8b 05 d6 8d 00 00 	mov    rax,QWORD PTR [rip+0x8dd6]        # 11440 <rax>
    866a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    866d:	48 8b 05 cc 8d 00 00 	mov    rax,QWORD PTR [rip+0x8dcc]        # 11440 <rax>
    8674:	48 83 ea 08          	sub    rdx,0x8
    8678:	48 89 10             	mov    QWORD PTR [rax],rdx
    867b:	48 8b 05 be 8d 00 00 	mov    rax,QWORD PTR [rip+0x8dbe]        # 11440 <rax>
    8682:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8685:	48 c7 00 55 10 00 00 	mov    QWORD PTR [rax],0x1055
    868c:	e9 84 31 00 00       	jmp    b815 <fib_switch+0x40d8>
    8691:	90                   	nop
    8692:	48 8b 15 d7 8f 00 00 	mov    rdx,QWORD PTR [rip+0x8fd7]        # 11670 <s_bss>
    8699:	48 8b 05 a0 8d 00 00 	mov    rax,QWORD PTR [rip+0x8da0]        # 11440 <rax>
    86a0:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    86a7:	48 89 10             	mov    QWORD PTR [rax],rdx
    86aa:	48 8b 05 8f 8d 00 00 	mov    rax,QWORD PTR [rip+0x8d8f]        # 11440 <rax>
    86b1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    86b4:	48 89 c2             	mov    rdx,rax
    86b7:	48 8b 05 82 8d 00 00 	mov    rax,QWORD PTR [rip+0x8d82]        # 11440 <rax>
    86be:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    86c1:	48 89 10             	mov    QWORD PTR [rax],rdx
    86c4:	48 8b 05 75 8d 00 00 	mov    rax,QWORD PTR [rip+0x8d75]        # 11440 <rax>
    86cb:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    86ce:	48 8b 05 6b 8d 00 00 	mov    rax,QWORD PTR [rip+0x8d6b]        # 11440 <rax>
    86d5:	48 83 ea 08          	sub    rdx,0x8
    86d9:	48 89 10             	mov    QWORD PTR [rax],rdx
    86dc:	48 8b 05 5d 8d 00 00 	mov    rax,QWORD PTR [rip+0x8d5d]        # 11440 <rax>
    86e3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    86e6:	48 c7 00 6d 1a 00 00 	mov    QWORD PTR [rax],0x1a6d
    86ed:	e9 23 31 00 00       	jmp    b815 <fib_switch+0x40d8>
    86f2:	90                   	nop
    86f3:	48 8b 15 76 8f 00 00 	mov    rdx,QWORD PTR [rip+0x8f76]        # 11670 <s_bss>
    86fa:	48 8b 05 3f 8d 00 00 	mov    rax,QWORD PTR [rip+0x8d3f]        # 11440 <rax>
    8701:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8708:	48 89 10             	mov    QWORD PTR [rax],rdx
    870b:	48 8b 05 2e 8d 00 00 	mov    rax,QWORD PTR [rip+0x8d2e]        # 11440 <rax>
    8712:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8715:	48 89 c2             	mov    rdx,rax
    8718:	48 8b 05 21 8d 00 00 	mov    rax,QWORD PTR [rip+0x8d21]        # 11440 <rax>
    871f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8722:	48 89 10             	mov    QWORD PTR [rax],rdx
    8725:	48 8b 05 14 8d 00 00 	mov    rax,QWORD PTR [rip+0x8d14]        # 11440 <rax>
    872c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    872f:	48 8b 05 0a 8d 00 00 	mov    rax,QWORD PTR [rip+0x8d0a]        # 11440 <rax>
    8736:	48 83 ea 08          	sub    rdx,0x8
    873a:	48 89 10             	mov    QWORD PTR [rax],rdx
    873d:	48 8b 05 fc 8c 00 00 	mov    rax,QWORD PTR [rip+0x8cfc]        # 11440 <rax>
    8744:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8747:	48 c7 00 c2 2a 00 00 	mov    QWORD PTR [rax],0x2ac2
    874e:	e9 c2 30 00 00       	jmp    b815 <fib_switch+0x40d8>
    8753:	90                   	nop
    8754:	48 8b 15 15 8f 00 00 	mov    rdx,QWORD PTR [rip+0x8f15]        # 11670 <s_bss>
    875b:	48 8b 05 de 8c 00 00 	mov    rax,QWORD PTR [rip+0x8cde]        # 11440 <rax>
    8762:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8769:	48 89 10             	mov    QWORD PTR [rax],rdx
    876c:	48 8b 05 cd 8c 00 00 	mov    rax,QWORD PTR [rip+0x8ccd]        # 11440 <rax>
    8773:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8776:	48 89 c2             	mov    rdx,rax
    8779:	48 8b 05 c0 8c 00 00 	mov    rax,QWORD PTR [rip+0x8cc0]        # 11440 <rax>
    8780:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8783:	48 89 10             	mov    QWORD PTR [rax],rdx
    8786:	48 8b 05 b3 8c 00 00 	mov    rax,QWORD PTR [rip+0x8cb3]        # 11440 <rax>
    878d:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8790:	48 8b 05 a9 8c 00 00 	mov    rax,QWORD PTR [rip+0x8ca9]        # 11440 <rax>
    8797:	48 83 ea 08          	sub    rdx,0x8
    879b:	48 89 10             	mov    QWORD PTR [rax],rdx
    879e:	48 8b 05 9b 8c 00 00 	mov    rax,QWORD PTR [rip+0x8c9b]        # 11440 <rax>
    87a5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    87a8:	48 c7 00 2f 45 00 00 	mov    QWORD PTR [rax],0x452f
    87af:	e9 61 30 00 00       	jmp    b815 <fib_switch+0x40d8>
    87b4:	90                   	nop
    87b5:	48 8b 15 b4 8e 00 00 	mov    rdx,QWORD PTR [rip+0x8eb4]        # 11670 <s_bss>
    87bc:	48 8b 05 7d 8c 00 00 	mov    rax,QWORD PTR [rip+0x8c7d]        # 11440 <rax>
    87c3:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    87ca:	48 89 10             	mov    QWORD PTR [rax],rdx
    87cd:	48 8b 05 6c 8c 00 00 	mov    rax,QWORD PTR [rip+0x8c6c]        # 11440 <rax>
    87d4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    87d7:	48 89 c2             	mov    rdx,rax
    87da:	48 8b 05 5f 8c 00 00 	mov    rax,QWORD PTR [rip+0x8c5f]        # 11440 <rax>
    87e1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    87e4:	48 89 10             	mov    QWORD PTR [rax],rdx
    87e7:	48 8b 05 52 8c 00 00 	mov    rax,QWORD PTR [rip+0x8c52]        # 11440 <rax>
    87ee:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    87f1:	48 8b 05 48 8c 00 00 	mov    rax,QWORD PTR [rip+0x8c48]        # 11440 <rax>
    87f8:	48 83 ea 08          	sub    rdx,0x8
    87fc:	48 89 10             	mov    QWORD PTR [rax],rdx
    87ff:	48 8b 05 3a 8c 00 00 	mov    rax,QWORD PTR [rip+0x8c3a]        # 11440 <rax>
    8806:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8809:	48 c7 00 f1 6f 00 00 	mov    QWORD PTR [rax],0x6ff1
    8810:	e9 00 30 00 00       	jmp    b815 <fib_switch+0x40d8>
    8815:	90                   	nop
    8816:	48 8b 15 53 8e 00 00 	mov    rdx,QWORD PTR [rip+0x8e53]        # 11670 <s_bss>
    881d:	48 8b 05 1c 8c 00 00 	mov    rax,QWORD PTR [rip+0x8c1c]        # 11440 <rax>
    8824:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    882b:	48 89 10             	mov    QWORD PTR [rax],rdx
    882e:	48 8b 05 0b 8c 00 00 	mov    rax,QWORD PTR [rip+0x8c0b]        # 11440 <rax>
    8835:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8838:	48 89 c2             	mov    rdx,rax
    883b:	48 8b 05 fe 8b 00 00 	mov    rax,QWORD PTR [rip+0x8bfe]        # 11440 <rax>
    8842:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8845:	48 89 10             	mov    QWORD PTR [rax],rdx
    8848:	48 8b 05 f1 8b 00 00 	mov    rax,QWORD PTR [rip+0x8bf1]        # 11440 <rax>
    884f:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8852:	48 8b 05 e7 8b 00 00 	mov    rax,QWORD PTR [rip+0x8be7]        # 11440 <rax>
    8859:	48 83 ea 08          	sub    rdx,0x8
    885d:	48 89 10             	mov    QWORD PTR [rax],rdx
    8860:	48 8b 05 d9 8b 00 00 	mov    rax,QWORD PTR [rip+0x8bd9]        # 11440 <rax>
    8867:	48 8b 00             	mov    rax,QWORD PTR [rax]
    886a:	48 c7 00 20 b5 00 00 	mov    QWORD PTR [rax],0xb520
    8871:	e9 9f 2f 00 00       	jmp    b815 <fib_switch+0x40d8>
    8876:	90                   	nop
    8877:	48 8b 15 f2 8d 00 00 	mov    rdx,QWORD PTR [rip+0x8df2]        # 11670 <s_bss>
    887e:	48 8b 05 bb 8b 00 00 	mov    rax,QWORD PTR [rip+0x8bbb]        # 11440 <rax>
    8885:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    888c:	48 89 10             	mov    QWORD PTR [rax],rdx
    888f:	48 8b 05 aa 8b 00 00 	mov    rax,QWORD PTR [rip+0x8baa]        # 11440 <rax>
    8896:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8899:	48 89 c2             	mov    rdx,rax
    889c:	48 8b 05 9d 8b 00 00 	mov    rax,QWORD PTR [rip+0x8b9d]        # 11440 <rax>
    88a3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    88a6:	48 89 10             	mov    QWORD PTR [rax],rdx
    88a9:	48 8b 05 90 8b 00 00 	mov    rax,QWORD PTR [rip+0x8b90]        # 11440 <rax>
    88b0:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    88b3:	48 8b 05 86 8b 00 00 	mov    rax,QWORD PTR [rip+0x8b86]        # 11440 <rax>
    88ba:	48 83 ea 08          	sub    rdx,0x8
    88be:	48 89 10             	mov    QWORD PTR [rax],rdx
    88c1:	48 8b 05 78 8b 00 00 	mov    rax,QWORD PTR [rip+0x8b78]        # 11440 <rax>
    88c8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    88cb:	48 c7 00 11 25 01 00 	mov    QWORD PTR [rax],0x12511
    88d2:	e9 3e 2f 00 00       	jmp    b815 <fib_switch+0x40d8>
    88d7:	90                   	nop
    88d8:	48 8b 15 91 8d 00 00 	mov    rdx,QWORD PTR [rip+0x8d91]        # 11670 <s_bss>
    88df:	48 8b 05 5a 8b 00 00 	mov    rax,QWORD PTR [rip+0x8b5a]        # 11440 <rax>
    88e6:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    88ed:	48 89 10             	mov    QWORD PTR [rax],rdx
    88f0:	48 8b 05 49 8b 00 00 	mov    rax,QWORD PTR [rip+0x8b49]        # 11440 <rax>
    88f7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    88fa:	48 89 c2             	mov    rdx,rax
    88fd:	48 8b 05 3c 8b 00 00 	mov    rax,QWORD PTR [rip+0x8b3c]        # 11440 <rax>
    8904:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8907:	48 89 10             	mov    QWORD PTR [rax],rdx
    890a:	48 8b 05 2f 8b 00 00 	mov    rax,QWORD PTR [rip+0x8b2f]        # 11440 <rax>
    8911:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8914:	48 8b 05 25 8b 00 00 	mov    rax,QWORD PTR [rip+0x8b25]        # 11440 <rax>
    891b:	48 83 ea 08          	sub    rdx,0x8
    891f:	48 89 10             	mov    QWORD PTR [rax],rdx
    8922:	48 8b 05 17 8b 00 00 	mov    rax,QWORD PTR [rip+0x8b17]        # 11440 <rax>
    8929:	48 8b 00             	mov    rax,QWORD PTR [rax]
    892c:	48 c7 00 31 da 01 00 	mov    QWORD PTR [rax],0x1da31
    8933:	e9 dd 2e 00 00       	jmp    b815 <fib_switch+0x40d8>
    8938:	90                   	nop
    8939:	48 8b 15 30 8d 00 00 	mov    rdx,QWORD PTR [rip+0x8d30]        # 11670 <s_bss>
    8940:	48 8b 05 f9 8a 00 00 	mov    rax,QWORD PTR [rip+0x8af9]        # 11440 <rax>
    8947:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    894e:	48 89 10             	mov    QWORD PTR [rax],rdx
    8951:	48 8b 05 e8 8a 00 00 	mov    rax,QWORD PTR [rip+0x8ae8]        # 11440 <rax>
    8958:	48 8b 00             	mov    rax,QWORD PTR [rax]
    895b:	48 89 c2             	mov    rdx,rax
    895e:	48 8b 05 db 8a 00 00 	mov    rax,QWORD PTR [rip+0x8adb]        # 11440 <rax>
    8965:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8968:	48 89 10             	mov    QWORD PTR [rax],rdx
    896b:	48 8b 05 ce 8a 00 00 	mov    rax,QWORD PTR [rip+0x8ace]        # 11440 <rax>
    8972:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8975:	48 8b 05 c4 8a 00 00 	mov    rax,QWORD PTR [rip+0x8ac4]        # 11440 <rax>
    897c:	48 83 ea 08          	sub    rdx,0x8
    8980:	48 89 10             	mov    QWORD PTR [rax],rdx
    8983:	48 8b 05 b6 8a 00 00 	mov    rax,QWORD PTR [rip+0x8ab6]        # 11440 <rax>
    898a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    898d:	48 c7 00 42 ff 02 00 	mov    QWORD PTR [rax],0x2ff42
    8994:	e9 7c 2e 00 00       	jmp    b815 <fib_switch+0x40d8>
    8999:	90                   	nop
    899a:	48 8b 15 cf 8c 00 00 	mov    rdx,QWORD PTR [rip+0x8ccf]        # 11670 <s_bss>
    89a1:	48 8b 05 98 8a 00 00 	mov    rax,QWORD PTR [rip+0x8a98]        # 11440 <rax>
    89a8:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    89af:	48 89 10             	mov    QWORD PTR [rax],rdx
    89b2:	48 8b 05 87 8a 00 00 	mov    rax,QWORD PTR [rip+0x8a87]        # 11440 <rax>
    89b9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    89bc:	48 89 c2             	mov    rdx,rax
    89bf:	48 8b 05 7a 8a 00 00 	mov    rax,QWORD PTR [rip+0x8a7a]        # 11440 <rax>
    89c6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    89c9:	48 89 10             	mov    QWORD PTR [rax],rdx
    89cc:	48 8b 05 6d 8a 00 00 	mov    rax,QWORD PTR [rip+0x8a6d]        # 11440 <rax>
    89d3:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    89d6:	48 8b 05 63 8a 00 00 	mov    rax,QWORD PTR [rip+0x8a63]        # 11440 <rax>
    89dd:	48 83 ea 08          	sub    rdx,0x8
    89e1:	48 89 10             	mov    QWORD PTR [rax],rdx
    89e4:	48 8b 05 55 8a 00 00 	mov    rax,QWORD PTR [rip+0x8a55]        # 11440 <rax>
    89eb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    89ee:	48 c7 00 73 d9 04 00 	mov    QWORD PTR [rax],0x4d973
    89f5:	e9 1b 2e 00 00       	jmp    b815 <fib_switch+0x40d8>
    89fa:	90                   	nop
    89fb:	48 8b 15 6e 8c 00 00 	mov    rdx,QWORD PTR [rip+0x8c6e]        # 11670 <s_bss>
    8a02:	48 8b 05 37 8a 00 00 	mov    rax,QWORD PTR [rip+0x8a37]        # 11440 <rax>
    8a09:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8a10:	48 89 10             	mov    QWORD PTR [rax],rdx
    8a13:	48 8b 05 26 8a 00 00 	mov    rax,QWORD PTR [rip+0x8a26]        # 11440 <rax>
    8a1a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8a1d:	48 89 c2             	mov    rdx,rax
    8a20:	48 8b 05 19 8a 00 00 	mov    rax,QWORD PTR [rip+0x8a19]        # 11440 <rax>
    8a27:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8a2a:	48 89 10             	mov    QWORD PTR [rax],rdx
    8a2d:	48 8b 05 0c 8a 00 00 	mov    rax,QWORD PTR [rip+0x8a0c]        # 11440 <rax>
    8a34:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8a37:	48 8b 05 02 8a 00 00 	mov    rax,QWORD PTR [rip+0x8a02]        # 11440 <rax>
    8a3e:	48 83 ea 08          	sub    rdx,0x8
    8a42:	48 89 10             	mov    QWORD PTR [rax],rdx
    8a45:	48 8b 05 f4 89 00 00 	mov    rax,QWORD PTR [rip+0x89f4]        # 11440 <rax>
    8a4c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8a4f:	48 c7 00 b5 d8 07 00 	mov    QWORD PTR [rax],0x7d8b5
    8a56:	e9 ba 2d 00 00       	jmp    b815 <fib_switch+0x40d8>
    8a5b:	90                   	nop
    8a5c:	48 8b 15 0d 8c 00 00 	mov    rdx,QWORD PTR [rip+0x8c0d]        # 11670 <s_bss>
    8a63:	48 8b 05 d6 89 00 00 	mov    rax,QWORD PTR [rip+0x89d6]        # 11440 <rax>
    8a6a:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8a71:	48 89 10             	mov    QWORD PTR [rax],rdx
    8a74:	48 8b 05 c5 89 00 00 	mov    rax,QWORD PTR [rip+0x89c5]        # 11440 <rax>
    8a7b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8a7e:	48 89 c2             	mov    rdx,rax
    8a81:	48 8b 05 b8 89 00 00 	mov    rax,QWORD PTR [rip+0x89b8]        # 11440 <rax>
    8a88:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8a8b:	48 89 10             	mov    QWORD PTR [rax],rdx
    8a8e:	48 8b 05 ab 89 00 00 	mov    rax,QWORD PTR [rip+0x89ab]        # 11440 <rax>
    8a95:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8a98:	48 8b 05 a1 89 00 00 	mov    rax,QWORD PTR [rip+0x89a1]        # 11440 <rax>
    8a9f:	48 83 ea 08          	sub    rdx,0x8
    8aa3:	48 89 10             	mov    QWORD PTR [rax],rdx
    8aa6:	48 8b 05 93 89 00 00 	mov    rax,QWORD PTR [rip+0x8993]        # 11440 <rax>
    8aad:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8ab0:	48 c7 00 28 b2 0c 00 	mov    QWORD PTR [rax],0xcb228
    8ab7:	e9 59 2d 00 00       	jmp    b815 <fib_switch+0x40d8>
    8abc:	90                   	nop
    8abd:	48 8b 15 ac 8b 00 00 	mov    rdx,QWORD PTR [rip+0x8bac]        # 11670 <s_bss>
    8ac4:	48 8b 05 75 89 00 00 	mov    rax,QWORD PTR [rip+0x8975]        # 11440 <rax>
    8acb:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8ad2:	48 89 10             	mov    QWORD PTR [rax],rdx
    8ad5:	48 8b 05 64 89 00 00 	mov    rax,QWORD PTR [rip+0x8964]        # 11440 <rax>
    8adc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8adf:	48 89 c2             	mov    rdx,rax
    8ae2:	48 8b 05 57 89 00 00 	mov    rax,QWORD PTR [rip+0x8957]        # 11440 <rax>
    8ae9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8aec:	48 89 10             	mov    QWORD PTR [rax],rdx
    8aef:	48 8b 05 4a 89 00 00 	mov    rax,QWORD PTR [rip+0x894a]        # 11440 <rax>
    8af6:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8af9:	48 8b 05 40 89 00 00 	mov    rax,QWORD PTR [rip+0x8940]        # 11440 <rax>
    8b00:	48 83 ea 08          	sub    rdx,0x8
    8b04:	48 89 10             	mov    QWORD PTR [rax],rdx
    8b07:	48 8b 05 32 89 00 00 	mov    rax,QWORD PTR [rip+0x8932]        # 11440 <rax>
    8b0e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8b11:	48 c7 00 dd 8a 14 00 	mov    QWORD PTR [rax],0x148add
    8b18:	e9 f8 2c 00 00       	jmp    b815 <fib_switch+0x40d8>
    8b1d:	90                   	nop
    8b1e:	48 8b 15 4b 8b 00 00 	mov    rdx,QWORD PTR [rip+0x8b4b]        # 11670 <s_bss>
    8b25:	48 8b 05 14 89 00 00 	mov    rax,QWORD PTR [rip+0x8914]        # 11440 <rax>
    8b2c:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8b33:	48 89 10             	mov    QWORD PTR [rax],rdx
    8b36:	48 8b 05 03 89 00 00 	mov    rax,QWORD PTR [rip+0x8903]        # 11440 <rax>
    8b3d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8b40:	48 89 c2             	mov    rdx,rax
    8b43:	48 8b 05 f6 88 00 00 	mov    rax,QWORD PTR [rip+0x88f6]        # 11440 <rax>
    8b4a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8b4d:	48 89 10             	mov    QWORD PTR [rax],rdx
    8b50:	48 8b 05 e9 88 00 00 	mov    rax,QWORD PTR [rip+0x88e9]        # 11440 <rax>
    8b57:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8b5a:	48 8b 05 df 88 00 00 	mov    rax,QWORD PTR [rip+0x88df]        # 11440 <rax>
    8b61:	48 83 ea 08          	sub    rdx,0x8
    8b65:	48 89 10             	mov    QWORD PTR [rax],rdx
    8b68:	48 8b 05 d1 88 00 00 	mov    rax,QWORD PTR [rip+0x88d1]        # 11440 <rax>
    8b6f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8b72:	48 c7 00 05 3d 21 00 	mov    QWORD PTR [rax],0x213d05
    8b79:	e9 97 2c 00 00       	jmp    b815 <fib_switch+0x40d8>
    8b7e:	90                   	nop
    8b7f:	48 8b 15 ea 8a 00 00 	mov    rdx,QWORD PTR [rip+0x8aea]        # 11670 <s_bss>
    8b86:	48 8b 05 b3 88 00 00 	mov    rax,QWORD PTR [rip+0x88b3]        # 11440 <rax>
    8b8d:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8b94:	48 89 10             	mov    QWORD PTR [rax],rdx
    8b97:	48 8b 05 a2 88 00 00 	mov    rax,QWORD PTR [rip+0x88a2]        # 11440 <rax>
    8b9e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8ba1:	48 89 c2             	mov    rdx,rax
    8ba4:	48 8b 05 95 88 00 00 	mov    rax,QWORD PTR [rip+0x8895]        # 11440 <rax>
    8bab:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8bae:	48 89 10             	mov    QWORD PTR [rax],rdx
    8bb1:	48 8b 05 88 88 00 00 	mov    rax,QWORD PTR [rip+0x8888]        # 11440 <rax>
    8bb8:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8bbb:	48 8b 05 7e 88 00 00 	mov    rax,QWORD PTR [rip+0x887e]        # 11440 <rax>
    8bc2:	48 83 ea 08          	sub    rdx,0x8
    8bc6:	48 89 10             	mov    QWORD PTR [rax],rdx
    8bc9:	48 8b 05 70 88 00 00 	mov    rax,QWORD PTR [rip+0x8870]        # 11440 <rax>
    8bd0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8bd3:	48 c7 00 e2 c7 35 00 	mov    QWORD PTR [rax],0x35c7e2
    8bda:	e9 36 2c 00 00       	jmp    b815 <fib_switch+0x40d8>
    8bdf:	90                   	nop
    8be0:	48 8b 15 89 8a 00 00 	mov    rdx,QWORD PTR [rip+0x8a89]        # 11670 <s_bss>
    8be7:	48 8b 05 52 88 00 00 	mov    rax,QWORD PTR [rip+0x8852]        # 11440 <rax>
    8bee:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8bf5:	48 89 10             	mov    QWORD PTR [rax],rdx
    8bf8:	48 8b 05 41 88 00 00 	mov    rax,QWORD PTR [rip+0x8841]        # 11440 <rax>
    8bff:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8c02:	48 89 c2             	mov    rdx,rax
    8c05:	48 8b 05 34 88 00 00 	mov    rax,QWORD PTR [rip+0x8834]        # 11440 <rax>
    8c0c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8c0f:	48 89 10             	mov    QWORD PTR [rax],rdx
    8c12:	48 8b 05 27 88 00 00 	mov    rax,QWORD PTR [rip+0x8827]        # 11440 <rax>
    8c19:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8c1c:	48 8b 05 1d 88 00 00 	mov    rax,QWORD PTR [rip+0x881d]        # 11440 <rax>
    8c23:	48 83 ea 08          	sub    rdx,0x8
    8c27:	48 89 10             	mov    QWORD PTR [rax],rdx
    8c2a:	48 8b 05 0f 88 00 00 	mov    rax,QWORD PTR [rip+0x880f]        # 11440 <rax>
    8c31:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8c34:	48 c7 00 e7 04 57 00 	mov    QWORD PTR [rax],0x5704e7
    8c3b:	e9 d5 2b 00 00       	jmp    b815 <fib_switch+0x40d8>
    8c40:	90                   	nop
    8c41:	48 8b 15 28 8a 00 00 	mov    rdx,QWORD PTR [rip+0x8a28]        # 11670 <s_bss>
    8c48:	48 8b 05 f1 87 00 00 	mov    rax,QWORD PTR [rip+0x87f1]        # 11440 <rax>
    8c4f:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8c56:	48 89 10             	mov    QWORD PTR [rax],rdx
    8c59:	48 8b 05 e0 87 00 00 	mov    rax,QWORD PTR [rip+0x87e0]        # 11440 <rax>
    8c60:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8c63:	48 89 c2             	mov    rdx,rax
    8c66:	48 8b 05 d3 87 00 00 	mov    rax,QWORD PTR [rip+0x87d3]        # 11440 <rax>
    8c6d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8c70:	48 89 10             	mov    QWORD PTR [rax],rdx
    8c73:	48 8b 05 c6 87 00 00 	mov    rax,QWORD PTR [rip+0x87c6]        # 11440 <rax>
    8c7a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8c7d:	48 8b 05 bc 87 00 00 	mov    rax,QWORD PTR [rip+0x87bc]        # 11440 <rax>
    8c84:	48 83 ea 08          	sub    rdx,0x8
    8c88:	48 89 10             	mov    QWORD PTR [rax],rdx
    8c8b:	48 8b 05 ae 87 00 00 	mov    rax,QWORD PTR [rip+0x87ae]        # 11440 <rax>
    8c92:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8c95:	48 c7 00 c9 cc 8c 00 	mov    QWORD PTR [rax],0x8cccc9
    8c9c:	e9 74 2b 00 00       	jmp    b815 <fib_switch+0x40d8>
    8ca1:	90                   	nop
    8ca2:	48 8b 15 c7 89 00 00 	mov    rdx,QWORD PTR [rip+0x89c7]        # 11670 <s_bss>
    8ca9:	48 8b 05 90 87 00 00 	mov    rax,QWORD PTR [rip+0x8790]        # 11440 <rax>
    8cb0:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8cb7:	48 89 10             	mov    QWORD PTR [rax],rdx
    8cba:	48 8b 05 7f 87 00 00 	mov    rax,QWORD PTR [rip+0x877f]        # 11440 <rax>
    8cc1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8cc4:	48 89 c2             	mov    rdx,rax
    8cc7:	48 8b 05 72 87 00 00 	mov    rax,QWORD PTR [rip+0x8772]        # 11440 <rax>
    8cce:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8cd1:	48 89 10             	mov    QWORD PTR [rax],rdx
    8cd4:	48 8b 05 65 87 00 00 	mov    rax,QWORD PTR [rip+0x8765]        # 11440 <rax>
    8cdb:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8cde:	48 8b 05 5b 87 00 00 	mov    rax,QWORD PTR [rip+0x875b]        # 11440 <rax>
    8ce5:	48 83 ea 08          	sub    rdx,0x8
    8ce9:	48 89 10             	mov    QWORD PTR [rax],rdx
    8cec:	48 8b 05 4d 87 00 00 	mov    rax,QWORD PTR [rip+0x874d]        # 11440 <rax>
    8cf3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8cf6:	48 c7 00 b0 d1 e3 00 	mov    QWORD PTR [rax],0xe3d1b0
    8cfd:	e9 13 2b 00 00       	jmp    b815 <fib_switch+0x40d8>
    8d02:	90                   	nop
    8d03:	48 8b 15 66 89 00 00 	mov    rdx,QWORD PTR [rip+0x8966]        # 11670 <s_bss>
    8d0a:	48 8b 05 2f 87 00 00 	mov    rax,QWORD PTR [rip+0x872f]        # 11440 <rax>
    8d11:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8d18:	48 89 10             	mov    QWORD PTR [rax],rdx
    8d1b:	48 8b 05 1e 87 00 00 	mov    rax,QWORD PTR [rip+0x871e]        # 11440 <rax>
    8d22:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8d25:	48 89 c2             	mov    rdx,rax
    8d28:	48 8b 05 11 87 00 00 	mov    rax,QWORD PTR [rip+0x8711]        # 11440 <rax>
    8d2f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8d32:	48 89 10             	mov    QWORD PTR [rax],rdx
    8d35:	48 8b 05 04 87 00 00 	mov    rax,QWORD PTR [rip+0x8704]        # 11440 <rax>
    8d3c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8d3f:	48 8b 05 fa 86 00 00 	mov    rax,QWORD PTR [rip+0x86fa]        # 11440 <rax>
    8d46:	48 83 ea 08          	sub    rdx,0x8
    8d4a:	48 89 10             	mov    QWORD PTR [rax],rdx
    8d4d:	48 8b 05 ec 86 00 00 	mov    rax,QWORD PTR [rip+0x86ec]        # 11440 <rax>
    8d54:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8d57:	48 c7 00 79 9e 70 01 	mov    QWORD PTR [rax],0x1709e79
    8d5e:	e9 b2 2a 00 00       	jmp    b815 <fib_switch+0x40d8>
    8d63:	90                   	nop
    8d64:	48 8b 15 05 89 00 00 	mov    rdx,QWORD PTR [rip+0x8905]        # 11670 <s_bss>
    8d6b:	48 8b 05 ce 86 00 00 	mov    rax,QWORD PTR [rip+0x86ce]        # 11440 <rax>
    8d72:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8d79:	48 89 10             	mov    QWORD PTR [rax],rdx
    8d7c:	48 8b 05 bd 86 00 00 	mov    rax,QWORD PTR [rip+0x86bd]        # 11440 <rax>
    8d83:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8d86:	48 89 c2             	mov    rdx,rax
    8d89:	48 8b 05 b0 86 00 00 	mov    rax,QWORD PTR [rip+0x86b0]        # 11440 <rax>
    8d90:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8d93:	48 89 10             	mov    QWORD PTR [rax],rdx
    8d96:	48 8b 05 a3 86 00 00 	mov    rax,QWORD PTR [rip+0x86a3]        # 11440 <rax>
    8d9d:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8da0:	48 8b 05 99 86 00 00 	mov    rax,QWORD PTR [rip+0x8699]        # 11440 <rax>
    8da7:	48 83 ea 08          	sub    rdx,0x8
    8dab:	48 89 10             	mov    QWORD PTR [rax],rdx
    8dae:	48 8b 05 8b 86 00 00 	mov    rax,QWORD PTR [rip+0x868b]        # 11440 <rax>
    8db5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8db8:	48 c7 00 29 70 54 02 	mov    QWORD PTR [rax],0x2547029
    8dbf:	e9 51 2a 00 00       	jmp    b815 <fib_switch+0x40d8>
    8dc4:	90                   	nop
    8dc5:	48 8b 15 a4 88 00 00 	mov    rdx,QWORD PTR [rip+0x88a4]        # 11670 <s_bss>
    8dcc:	48 8b 05 6d 86 00 00 	mov    rax,QWORD PTR [rip+0x866d]        # 11440 <rax>
    8dd3:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8dda:	48 89 10             	mov    QWORD PTR [rax],rdx
    8ddd:	48 8b 05 5c 86 00 00 	mov    rax,QWORD PTR [rip+0x865c]        # 11440 <rax>
    8de4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8de7:	48 89 c2             	mov    rdx,rax
    8dea:	48 8b 05 4f 86 00 00 	mov    rax,QWORD PTR [rip+0x864f]        # 11440 <rax>
    8df1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8df4:	48 89 10             	mov    QWORD PTR [rax],rdx
    8df7:	48 8b 05 42 86 00 00 	mov    rax,QWORD PTR [rip+0x8642]        # 11440 <rax>
    8dfe:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8e01:	48 8b 05 38 86 00 00 	mov    rax,QWORD PTR [rip+0x8638]        # 11440 <rax>
    8e08:	48 83 ea 08          	sub    rdx,0x8
    8e0c:	48 89 10             	mov    QWORD PTR [rax],rdx
    8e0f:	48 8b 05 2a 86 00 00 	mov    rax,QWORD PTR [rip+0x862a]        # 11440 <rax>
    8e16:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8e19:	48 c7 00 a2 0e c5 03 	mov    QWORD PTR [rax],0x3c50ea2
    8e20:	e9 f0 29 00 00       	jmp    b815 <fib_switch+0x40d8>
    8e25:	90                   	nop
    8e26:	48 8b 15 43 88 00 00 	mov    rdx,QWORD PTR [rip+0x8843]        # 11670 <s_bss>
    8e2d:	48 8b 05 0c 86 00 00 	mov    rax,QWORD PTR [rip+0x860c]        # 11440 <rax>
    8e34:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8e3b:	48 89 10             	mov    QWORD PTR [rax],rdx
    8e3e:	48 8b 05 fb 85 00 00 	mov    rax,QWORD PTR [rip+0x85fb]        # 11440 <rax>
    8e45:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8e48:	48 89 c2             	mov    rdx,rax
    8e4b:	48 8b 05 ee 85 00 00 	mov    rax,QWORD PTR [rip+0x85ee]        # 11440 <rax>
    8e52:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8e55:	48 89 10             	mov    QWORD PTR [rax],rdx
    8e58:	48 8b 05 e1 85 00 00 	mov    rax,QWORD PTR [rip+0x85e1]        # 11440 <rax>
    8e5f:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8e62:	48 8b 05 d7 85 00 00 	mov    rax,QWORD PTR [rip+0x85d7]        # 11440 <rax>
    8e69:	48 83 ea 08          	sub    rdx,0x8
    8e6d:	48 89 10             	mov    QWORD PTR [rax],rdx
    8e70:	48 8b 05 c9 85 00 00 	mov    rax,QWORD PTR [rip+0x85c9]        # 11440 <rax>
    8e77:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8e7a:	48 c7 00 cb 7e 19 06 	mov    QWORD PTR [rax],0x6197ecb
    8e81:	e9 8f 29 00 00       	jmp    b815 <fib_switch+0x40d8>
    8e86:	90                   	nop
    8e87:	48 8b 15 e2 87 00 00 	mov    rdx,QWORD PTR [rip+0x87e2]        # 11670 <s_bss>
    8e8e:	48 8b 05 ab 85 00 00 	mov    rax,QWORD PTR [rip+0x85ab]        # 11440 <rax>
    8e95:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8e9c:	48 89 10             	mov    QWORD PTR [rax],rdx
    8e9f:	48 8b 05 9a 85 00 00 	mov    rax,QWORD PTR [rip+0x859a]        # 11440 <rax>
    8ea6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8ea9:	48 89 c2             	mov    rdx,rax
    8eac:	48 8b 05 8d 85 00 00 	mov    rax,QWORD PTR [rip+0x858d]        # 11440 <rax>
    8eb3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8eb6:	48 89 10             	mov    QWORD PTR [rax],rdx
    8eb9:	48 8b 05 80 85 00 00 	mov    rax,QWORD PTR [rip+0x8580]        # 11440 <rax>
    8ec0:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8ec3:	48 8b 05 76 85 00 00 	mov    rax,QWORD PTR [rip+0x8576]        # 11440 <rax>
    8eca:	48 83 ea 08          	sub    rdx,0x8
    8ece:	48 89 10             	mov    QWORD PTR [rax],rdx
    8ed1:	48 8b 05 68 85 00 00 	mov    rax,QWORD PTR [rip+0x8568]        # 11440 <rax>
    8ed8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8edb:	48 c7 00 6d 8d de 09 	mov    QWORD PTR [rax],0x9de8d6d
    8ee2:	e9 2e 29 00 00       	jmp    b815 <fib_switch+0x40d8>
    8ee7:	90                   	nop
    8ee8:	48 8b 15 81 87 00 00 	mov    rdx,QWORD PTR [rip+0x8781]        # 11670 <s_bss>
    8eef:	48 8b 05 4a 85 00 00 	mov    rax,QWORD PTR [rip+0x854a]        # 11440 <rax>
    8ef6:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8efd:	48 89 10             	mov    QWORD PTR [rax],rdx
    8f00:	48 8b 05 39 85 00 00 	mov    rax,QWORD PTR [rip+0x8539]        # 11440 <rax>
    8f07:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8f0a:	48 89 c2             	mov    rdx,rax
    8f0d:	48 8b 05 2c 85 00 00 	mov    rax,QWORD PTR [rip+0x852c]        # 11440 <rax>
    8f14:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8f17:	48 89 10             	mov    QWORD PTR [rax],rdx
    8f1a:	48 8b 05 1f 85 00 00 	mov    rax,QWORD PTR [rip+0x851f]        # 11440 <rax>
    8f21:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8f24:	48 8b 05 15 85 00 00 	mov    rax,QWORD PTR [rip+0x8515]        # 11440 <rax>
    8f2b:	48 83 ea 08          	sub    rdx,0x8
    8f2f:	48 89 10             	mov    QWORD PTR [rax],rdx
    8f32:	48 8b 05 07 85 00 00 	mov    rax,QWORD PTR [rip+0x8507]        # 11440 <rax>
    8f39:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8f3c:	48 c7 00 38 0c f8 0f 	mov    QWORD PTR [rax],0xff80c38
    8f43:	e9 cd 28 00 00       	jmp    b815 <fib_switch+0x40d8>
    8f48:	90                   	nop
    8f49:	48 8b 15 20 87 00 00 	mov    rdx,QWORD PTR [rip+0x8720]        # 11670 <s_bss>
    8f50:	48 8b 05 e9 84 00 00 	mov    rax,QWORD PTR [rip+0x84e9]        # 11440 <rax>
    8f57:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8f5e:	48 89 10             	mov    QWORD PTR [rax],rdx
    8f61:	48 8b 05 d8 84 00 00 	mov    rax,QWORD PTR [rip+0x84d8]        # 11440 <rax>
    8f68:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8f6b:	48 89 c2             	mov    rdx,rax
    8f6e:	48 8b 05 cb 84 00 00 	mov    rax,QWORD PTR [rip+0x84cb]        # 11440 <rax>
    8f75:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8f78:	48 89 10             	mov    QWORD PTR [rax],rdx
    8f7b:	48 8b 05 be 84 00 00 	mov    rax,QWORD PTR [rip+0x84be]        # 11440 <rax>
    8f82:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8f85:	48 8b 05 b4 84 00 00 	mov    rax,QWORD PTR [rip+0x84b4]        # 11440 <rax>
    8f8c:	48 83 ea 08          	sub    rdx,0x8
    8f90:	48 89 10             	mov    QWORD PTR [rax],rdx
    8f93:	48 8b 05 a6 84 00 00 	mov    rax,QWORD PTR [rip+0x84a6]        # 11440 <rax>
    8f9a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8f9d:	48 c7 00 a5 99 d6 19 	mov    QWORD PTR [rax],0x19d699a5
    8fa4:	e9 6c 28 00 00       	jmp    b815 <fib_switch+0x40d8>
    8fa9:	90                   	nop
    8faa:	48 8b 15 bf 86 00 00 	mov    rdx,QWORD PTR [rip+0x86bf]        # 11670 <s_bss>
    8fb1:	48 8b 05 88 84 00 00 	mov    rax,QWORD PTR [rip+0x8488]        # 11440 <rax>
    8fb8:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    8fbf:	48 89 10             	mov    QWORD PTR [rax],rdx
    8fc2:	48 8b 05 77 84 00 00 	mov    rax,QWORD PTR [rip+0x8477]        # 11440 <rax>
    8fc9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8fcc:	48 89 c2             	mov    rdx,rax
    8fcf:	48 8b 05 6a 84 00 00 	mov    rax,QWORD PTR [rip+0x846a]        # 11440 <rax>
    8fd6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    8fd9:	48 89 10             	mov    QWORD PTR [rax],rdx
    8fdc:	48 8b 05 5d 84 00 00 	mov    rax,QWORD PTR [rip+0x845d]        # 11440 <rax>
    8fe3:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    8fe6:	48 8b 05 53 84 00 00 	mov    rax,QWORD PTR [rip+0x8453]        # 11440 <rax>
    8fed:	48 83 ea 08          	sub    rdx,0x8
    8ff1:	48 89 10             	mov    QWORD PTR [rax],rdx
    8ff4:	48 8b 05 45 84 00 00 	mov    rax,QWORD PTR [rip+0x8445]        # 11440 <rax>
    8ffb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    8ffe:	48 c7 00 dd a5 ce 29 	mov    QWORD PTR [rax],0x29cea5dd
    9005:	e9 0b 28 00 00       	jmp    b815 <fib_switch+0x40d8>
    900a:	90                   	nop
    900b:	48 8b 15 5e 86 00 00 	mov    rdx,QWORD PTR [rip+0x865e]        # 11670 <s_bss>
    9012:	48 8b 05 27 84 00 00 	mov    rax,QWORD PTR [rip+0x8427]        # 11440 <rax>
    9019:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    9020:	48 89 10             	mov    QWORD PTR [rax],rdx
    9023:	48 8b 05 16 84 00 00 	mov    rax,QWORD PTR [rip+0x8416]        # 11440 <rax>
    902a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    902d:	48 89 c2             	mov    rdx,rax
    9030:	48 8b 05 09 84 00 00 	mov    rax,QWORD PTR [rip+0x8409]        # 11440 <rax>
    9037:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    903a:	48 89 10             	mov    QWORD PTR [rax],rdx
    903d:	48 8b 05 fc 83 00 00 	mov    rax,QWORD PTR [rip+0x83fc]        # 11440 <rax>
    9044:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    9047:	48 8b 05 f2 83 00 00 	mov    rax,QWORD PTR [rip+0x83f2]        # 11440 <rax>
    904e:	48 83 ea 08          	sub    rdx,0x8
    9052:	48 89 10             	mov    QWORD PTR [rax],rdx
    9055:	48 8b 05 e4 83 00 00 	mov    rax,QWORD PTR [rip+0x83e4]        # 11440 <rax>
    905c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    905f:	48 c7 00 82 3f a5 43 	mov    QWORD PTR [rax],0x43a53f82
    9066:	e9 aa 27 00 00       	jmp    b815 <fib_switch+0x40d8>
    906b:	90                   	nop
    906c:	48 8b 15 fd 85 00 00 	mov    rdx,QWORD PTR [rip+0x85fd]        # 11670 <s_bss>
    9073:	48 8b 05 c6 83 00 00 	mov    rax,QWORD PTR [rip+0x83c6]        # 11440 <rax>
    907a:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    9081:	48 89 10             	mov    QWORD PTR [rax],rdx
    9084:	48 8b 05 b5 83 00 00 	mov    rax,QWORD PTR [rip+0x83b5]        # 11440 <rax>
    908b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    908e:	48 89 c2             	mov    rdx,rax
    9091:	48 8b 05 a8 83 00 00 	mov    rax,QWORD PTR [rip+0x83a8]        # 11440 <rax>
    9098:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    909b:	48 89 10             	mov    QWORD PTR [rax],rdx
    909e:	48 8b 05 9b 83 00 00 	mov    rax,QWORD PTR [rip+0x839b]        # 11440 <rax>
    90a5:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    90a8:	48 8b 05 91 83 00 00 	mov    rax,QWORD PTR [rip+0x8391]        # 11440 <rax>
    90af:	48 83 ea 08          	sub    rdx,0x8
    90b3:	48 89 10             	mov    QWORD PTR [rax],rdx
    90b6:	48 8b 05 83 83 00 00 	mov    rax,QWORD PTR [rip+0x8383]        # 11440 <rax>
    90bd:	48 8b 00             	mov    rax,QWORD PTR [rax]
    90c0:	48 c7 00 5f e5 73 6d 	mov    QWORD PTR [rax],0x6d73e55f
    90c7:	e9 49 27 00 00       	jmp    b815 <fib_switch+0x40d8>
    90cc:	90                   	nop
    90cd:	48 8b 15 9c 85 00 00 	mov    rdx,QWORD PTR [rip+0x859c]        # 11670 <s_bss>
    90d4:	48 8b 05 65 83 00 00 	mov    rax,QWORD PTR [rip+0x8365]        # 11440 <rax>
    90db:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    90df:	48 89 10             	mov    QWORD PTR [rax],rdx
    90e2:	48 8b 05 ff 83 00 00 	mov    rax,QWORD PTR [rip+0x83ff]        # 114e8 <esi>
    90e9:	be e1 24 19 b1       	mov    esi,0xb11924e1
    90ee:	48 89 30             	mov    QWORD PTR [rax],rsi
    90f1:	48 8b 05 e8 83 00 00 	mov    rax,QWORD PTR [rip+0x83e8]        # 114e0 <rsi>
    90f8:	48 8b 15 41 83 00 00 	mov    rdx,QWORD PTR [rip+0x8341]        # 11440 <rax>
    90ff:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9102:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9105:	48 89 02             	mov    QWORD PTR [rdx],rax
    9108:	48 8b 15 61 85 00 00 	mov    rdx,QWORD PTR [rip+0x8561]        # 11670 <s_bss>
    910f:	48 8b 05 2a 83 00 00 	mov    rax,QWORD PTR [rip+0x832a]        # 11440 <rax>
    9116:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    911a:	48 89 10             	mov    QWORD PTR [rax],rdx
    911d:	48 8b 15 4c 85 00 00 	mov    rdx,QWORD PTR [rip+0x854c]        # 11670 <s_bss>
    9124:	48 8b 05 8d 83 00 00 	mov    rax,QWORD PTR [rip+0x838d]        # 114b8 <rdx>
    912b:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    9132:	48 89 10             	mov    QWORD PTR [rax],rdx
    9135:	48 8b 05 7c 83 00 00 	mov    rax,QWORD PTR [rip+0x837c]        # 114b8 <rdx>
    913c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    913f:	48 89 c2             	mov    rdx,rax
    9142:	48 8b 05 6f 83 00 00 	mov    rax,QWORD PTR [rip+0x836f]        # 114b8 <rdx>
    9149:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    914c:	48 89 10             	mov    QWORD PTR [rax],rdx
    914f:	48 8b 05 62 83 00 00 	mov    rax,QWORD PTR [rip+0x8362]        # 114b8 <rdx>
    9156:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    9159:	48 8b 05 58 83 00 00 	mov    rax,QWORD PTR [rip+0x8358]        # 114b8 <rdx>
    9160:	48 83 ea 08          	sub    rdx,0x8
    9164:	48 89 10             	mov    QWORD PTR [rax],rdx
    9167:	48 8b 05 d2 82 00 00 	mov    rax,QWORD PTR [rip+0x82d2]        # 11440 <rax>
    916e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9171:	48 89 c2             	mov    rdx,rax
    9174:	48 8b 05 c5 82 00 00 	mov    rax,QWORD PTR [rip+0x82c5]        # 11440 <rax>
    917b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    917e:	48 89 10             	mov    QWORD PTR [rax],rdx
    9181:	48 8b 05 b8 82 00 00 	mov    rax,QWORD PTR [rip+0x82b8]        # 11440 <rax>
    9188:	48 8b 15 29 83 00 00 	mov    rdx,QWORD PTR [rip+0x8329]        # 114b8 <rdx>
    918f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9192:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9195:	48 89 02             	mov    QWORD PTR [rdx],rax
    9198:	e9 78 26 00 00       	jmp    b815 <fib_switch+0x40d8>
    919d:	90                   	nop
    919e:	48 8b 15 cb 84 00 00 	mov    rdx,QWORD PTR [rip+0x84cb]        # 11670 <s_bss>
    91a5:	48 8b 05 94 82 00 00 	mov    rax,QWORD PTR [rip+0x8294]        # 11440 <rax>
    91ac:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    91b0:	48 89 10             	mov    QWORD PTR [rax],rdx
    91b3:	48 8b 05 46 83 00 00 	mov    rax,QWORD PTR [rip+0x8346]        # 11500 <rdi>
    91ba:	48 be 40 0a 8d 1e 01 	movabs rsi,0x11e8d0a40
    91c1:	00 00 00 
    91c4:	48 89 30             	mov    QWORD PTR [rax],rsi
    91c7:	48 8b 05 32 83 00 00 	mov    rax,QWORD PTR [rip+0x8332]        # 11500 <rdi>
    91ce:	48 8b 15 6b 82 00 00 	mov    rdx,QWORD PTR [rip+0x826b]        # 11440 <rax>
    91d5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    91d8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    91db:	48 89 02             	mov    QWORD PTR [rdx],rax
    91de:	48 8b 15 8b 84 00 00 	mov    rdx,QWORD PTR [rip+0x848b]        # 11670 <s_bss>
    91e5:	48 8b 05 54 82 00 00 	mov    rax,QWORD PTR [rip+0x8254]        # 11440 <rax>
    91ec:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    91f0:	48 89 10             	mov    QWORD PTR [rax],rdx
    91f3:	48 8b 15 76 84 00 00 	mov    rdx,QWORD PTR [rip+0x8476]        # 11670 <s_bss>
    91fa:	48 8b 05 b7 82 00 00 	mov    rax,QWORD PTR [rip+0x82b7]        # 114b8 <rdx>
    9201:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    9208:	48 89 10             	mov    QWORD PTR [rax],rdx
    920b:	48 8b 05 a6 82 00 00 	mov    rax,QWORD PTR [rip+0x82a6]        # 114b8 <rdx>
    9212:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9215:	48 89 c2             	mov    rdx,rax
    9218:	48 8b 05 99 82 00 00 	mov    rax,QWORD PTR [rip+0x8299]        # 114b8 <rdx>
    921f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9222:	48 89 10             	mov    QWORD PTR [rax],rdx
    9225:	48 8b 05 8c 82 00 00 	mov    rax,QWORD PTR [rip+0x828c]        # 114b8 <rdx>
    922c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    922f:	48 8b 05 82 82 00 00 	mov    rax,QWORD PTR [rip+0x8282]        # 114b8 <rdx>
    9236:	48 83 ea 08          	sub    rdx,0x8
    923a:	48 89 10             	mov    QWORD PTR [rax],rdx
    923d:	48 8b 05 fc 81 00 00 	mov    rax,QWORD PTR [rip+0x81fc]        # 11440 <rax>
    9244:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9247:	48 89 c2             	mov    rdx,rax
    924a:	48 8b 05 ef 81 00 00 	mov    rax,QWORD PTR [rip+0x81ef]        # 11440 <rax>
    9251:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9254:	48 89 10             	mov    QWORD PTR [rax],rdx
    9257:	48 8b 05 e2 81 00 00 	mov    rax,QWORD PTR [rip+0x81e2]        # 11440 <rax>
    925e:	48 8b 15 53 82 00 00 	mov    rdx,QWORD PTR [rip+0x8253]        # 114b8 <rdx>
    9265:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9268:	48 8b 00             	mov    rax,QWORD PTR [rax]
    926b:	48 89 02             	mov    QWORD PTR [rdx],rax
    926e:	e9 a2 25 00 00       	jmp    b815 <fib_switch+0x40d8>
    9273:	90                   	nop
    9274:	48 8b 15 f5 83 00 00 	mov    rdx,QWORD PTR [rip+0x83f5]        # 11670 <s_bss>
    927b:	48 8b 05 be 81 00 00 	mov    rax,QWORD PTR [rip+0x81be]        # 11440 <rax>
    9282:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9286:	48 89 10             	mov    QWORD PTR [rax],rdx
    9289:	48 8b 05 00 82 00 00 	mov    rax,QWORD PTR [rip+0x8200]        # 11490 <rcx>
    9290:	48 bf 21 2f a6 cf 01 	movabs rdi,0x1cfa62f21
    9297:	00 00 00 
    929a:	48 89 38             	mov    QWORD PTR [rax],rdi
    929d:	48 8b 05 ec 81 00 00 	mov    rax,QWORD PTR [rip+0x81ec]        # 11490 <rcx>
    92a4:	48 8b 15 95 81 00 00 	mov    rdx,QWORD PTR [rip+0x8195]        # 11440 <rax>
    92ab:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    92ae:	48 8b 00             	mov    rax,QWORD PTR [rax]
    92b1:	48 89 02             	mov    QWORD PTR [rdx],rax
    92b4:	48 8b 15 b5 83 00 00 	mov    rdx,QWORD PTR [rip+0x83b5]        # 11670 <s_bss>
    92bb:	48 8b 05 7e 81 00 00 	mov    rax,QWORD PTR [rip+0x817e]        # 11440 <rax>
    92c2:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    92c6:	48 89 10             	mov    QWORD PTR [rax],rdx
    92c9:	48 8b 15 a0 83 00 00 	mov    rdx,QWORD PTR [rip+0x83a0]        # 11670 <s_bss>
    92d0:	48 8b 05 e1 81 00 00 	mov    rax,QWORD PTR [rip+0x81e1]        # 114b8 <rdx>
    92d7:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    92de:	48 89 10             	mov    QWORD PTR [rax],rdx
    92e1:	48 8b 05 d0 81 00 00 	mov    rax,QWORD PTR [rip+0x81d0]        # 114b8 <rdx>
    92e8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    92eb:	48 89 c2             	mov    rdx,rax
    92ee:	48 8b 05 c3 81 00 00 	mov    rax,QWORD PTR [rip+0x81c3]        # 114b8 <rdx>
    92f5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    92f8:	48 89 10             	mov    QWORD PTR [rax],rdx
    92fb:	48 8b 05 b6 81 00 00 	mov    rax,QWORD PTR [rip+0x81b6]        # 114b8 <rdx>
    9302:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    9305:	48 8b 05 ac 81 00 00 	mov    rax,QWORD PTR [rip+0x81ac]        # 114b8 <rdx>
    930c:	48 83 ea 08          	sub    rdx,0x8
    9310:	48 89 10             	mov    QWORD PTR [rax],rdx
    9313:	48 8b 05 26 81 00 00 	mov    rax,QWORD PTR [rip+0x8126]        # 11440 <rax>
    931a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    931d:	48 89 c2             	mov    rdx,rax
    9320:	48 8b 05 19 81 00 00 	mov    rax,QWORD PTR [rip+0x8119]        # 11440 <rax>
    9327:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    932a:	48 89 10             	mov    QWORD PTR [rax],rdx
    932d:	48 8b 05 0c 81 00 00 	mov    rax,QWORD PTR [rip+0x810c]        # 11440 <rax>
    9334:	48 8b 15 7d 81 00 00 	mov    rdx,QWORD PTR [rip+0x817d]        # 114b8 <rdx>
    933b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    933e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9341:	48 89 02             	mov    QWORD PTR [rdx],rax
    9344:	e9 cc 24 00 00       	jmp    b815 <fib_switch+0x40d8>
    9349:	90                   	nop
    934a:	48 8b 15 1f 83 00 00 	mov    rdx,QWORD PTR [rip+0x831f]        # 11670 <s_bss>
    9351:	48 8b 05 e8 80 00 00 	mov    rax,QWORD PTR [rip+0x80e8]        # 11440 <rax>
    9358:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    935c:	48 89 10             	mov    QWORD PTR [rax],rdx
    935f:	48 8b 05 7a 81 00 00 	mov    rax,QWORD PTR [rip+0x817a]        # 114e0 <rsi>
    9366:	48 bb 61 39 33 ee 02 	movabs rbx,0x2ee333961
    936d:	00 00 00 
    9370:	48 89 18             	mov    QWORD PTR [rax],rbx
    9373:	48 8b 05 66 81 00 00 	mov    rax,QWORD PTR [rip+0x8166]        # 114e0 <rsi>
    937a:	48 8b 15 bf 80 00 00 	mov    rdx,QWORD PTR [rip+0x80bf]        # 11440 <rax>
    9381:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9384:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9387:	48 89 02             	mov    QWORD PTR [rdx],rax
    938a:	48 8b 15 df 82 00 00 	mov    rdx,QWORD PTR [rip+0x82df]        # 11670 <s_bss>
    9391:	48 8b 05 a8 80 00 00 	mov    rax,QWORD PTR [rip+0x80a8]        # 11440 <rax>
    9398:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    939c:	48 89 10             	mov    QWORD PTR [rax],rdx
    939f:	48 8b 15 ca 82 00 00 	mov    rdx,QWORD PTR [rip+0x82ca]        # 11670 <s_bss>
    93a6:	48 8b 05 0b 81 00 00 	mov    rax,QWORD PTR [rip+0x810b]        # 114b8 <rdx>
    93ad:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    93b4:	48 89 10             	mov    QWORD PTR [rax],rdx
    93b7:	48 8b 05 fa 80 00 00 	mov    rax,QWORD PTR [rip+0x80fa]        # 114b8 <rdx>
    93be:	48 8b 00             	mov    rax,QWORD PTR [rax]
    93c1:	48 89 c2             	mov    rdx,rax
    93c4:	48 8b 05 ed 80 00 00 	mov    rax,QWORD PTR [rip+0x80ed]        # 114b8 <rdx>
    93cb:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    93ce:	48 89 10             	mov    QWORD PTR [rax],rdx
    93d1:	48 8b 05 e0 80 00 00 	mov    rax,QWORD PTR [rip+0x80e0]        # 114b8 <rdx>
    93d8:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    93db:	48 8b 05 d6 80 00 00 	mov    rax,QWORD PTR [rip+0x80d6]        # 114b8 <rdx>
    93e2:	48 83 ea 08          	sub    rdx,0x8
    93e6:	48 89 10             	mov    QWORD PTR [rax],rdx
    93e9:	48 8b 05 50 80 00 00 	mov    rax,QWORD PTR [rip+0x8050]        # 11440 <rax>
    93f0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    93f3:	48 89 c2             	mov    rdx,rax
    93f6:	48 8b 05 43 80 00 00 	mov    rax,QWORD PTR [rip+0x8043]        # 11440 <rax>
    93fd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9400:	48 89 10             	mov    QWORD PTR [rax],rdx
    9403:	48 8b 05 36 80 00 00 	mov    rax,QWORD PTR [rip+0x8036]        # 11440 <rax>
    940a:	48 8b 15 a7 80 00 00 	mov    rdx,QWORD PTR [rip+0x80a7]        # 114b8 <rdx>
    9411:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9414:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9417:	48 89 02             	mov    QWORD PTR [rdx],rax
    941a:	e9 f6 23 00 00       	jmp    b815 <fib_switch+0x40d8>
    941f:	90                   	nop
    9420:	48 8b 15 49 82 00 00 	mov    rdx,QWORD PTR [rip+0x8249]        # 11670 <s_bss>
    9427:	48 8b 05 12 80 00 00 	mov    rax,QWORD PTR [rip+0x8012]        # 11440 <rax>
    942e:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9432:	48 89 10             	mov    QWORD PTR [rax],rdx
    9435:	48 8b 05 2c 80 00 00 	mov    rax,QWORD PTR [rip+0x802c]        # 11468 <rbx>
    943c:	48 be 82 68 d9 bd 04 	movabs rsi,0x4bdd96882
    9443:	00 00 00 
    9446:	48 89 30             	mov    QWORD PTR [rax],rsi
    9449:	48 8b 05 18 80 00 00 	mov    rax,QWORD PTR [rip+0x8018]        # 11468 <rbx>
    9450:	48 8b 15 e9 7f 00 00 	mov    rdx,QWORD PTR [rip+0x7fe9]        # 11440 <rax>
    9457:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    945a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    945d:	48 89 02             	mov    QWORD PTR [rdx],rax
    9460:	48 8b 15 09 82 00 00 	mov    rdx,QWORD PTR [rip+0x8209]        # 11670 <s_bss>
    9467:	48 8b 05 d2 7f 00 00 	mov    rax,QWORD PTR [rip+0x7fd2]        # 11440 <rax>
    946e:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9472:	48 89 10             	mov    QWORD PTR [rax],rdx
    9475:	48 8b 15 f4 81 00 00 	mov    rdx,QWORD PTR [rip+0x81f4]        # 11670 <s_bss>
    947c:	48 8b 05 35 80 00 00 	mov    rax,QWORD PTR [rip+0x8035]        # 114b8 <rdx>
    9483:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    948a:	48 89 10             	mov    QWORD PTR [rax],rdx
    948d:	48 8b 05 24 80 00 00 	mov    rax,QWORD PTR [rip+0x8024]        # 114b8 <rdx>
    9494:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9497:	48 89 c2             	mov    rdx,rax
    949a:	48 8b 05 17 80 00 00 	mov    rax,QWORD PTR [rip+0x8017]        # 114b8 <rdx>
    94a1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    94a4:	48 89 10             	mov    QWORD PTR [rax],rdx
    94a7:	48 8b 05 0a 80 00 00 	mov    rax,QWORD PTR [rip+0x800a]        # 114b8 <rdx>
    94ae:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    94b1:	48 8b 05 00 80 00 00 	mov    rax,QWORD PTR [rip+0x8000]        # 114b8 <rdx>
    94b8:	48 83 ea 08          	sub    rdx,0x8
    94bc:	48 89 10             	mov    QWORD PTR [rax],rdx
    94bf:	48 8b 05 7a 7f 00 00 	mov    rax,QWORD PTR [rip+0x7f7a]        # 11440 <rax>
    94c6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    94c9:	48 89 c2             	mov    rdx,rax
    94cc:	48 8b 05 6d 7f 00 00 	mov    rax,QWORD PTR [rip+0x7f6d]        # 11440 <rax>
    94d3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    94d6:	48 89 10             	mov    QWORD PTR [rax],rdx
    94d9:	48 8b 05 60 7f 00 00 	mov    rax,QWORD PTR [rip+0x7f60]        # 11440 <rax>
    94e0:	48 8b 15 d1 7f 00 00 	mov    rdx,QWORD PTR [rip+0x7fd1]        # 114b8 <rdx>
    94e7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    94ea:	48 8b 00             	mov    rax,QWORD PTR [rax]
    94ed:	48 89 02             	mov    QWORD PTR [rdx],rax
    94f0:	e9 20 23 00 00       	jmp    b815 <fib_switch+0x40d8>
    94f5:	90                   	nop
    94f6:	48 8b 15 73 81 00 00 	mov    rdx,QWORD PTR [rip+0x8173]        # 11670 <s_bss>
    94fd:	48 8b 05 3c 7f 00 00 	mov    rax,QWORD PTR [rip+0x7f3c]        # 11440 <rax>
    9504:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9508:	48 89 10             	mov    QWORD PTR [rax],rdx
    950b:	48 8b 05 ee 7f 00 00 	mov    rax,QWORD PTR [rip+0x7fee]        # 11500 <rdi>
    9512:	48 bf e3 a1 0c ac 07 	movabs rdi,0x7ac0ca1e3
    9519:	00 00 00 
    951c:	48 89 38             	mov    QWORD PTR [rax],rdi
    951f:	48 8b 05 da 7f 00 00 	mov    rax,QWORD PTR [rip+0x7fda]        # 11500 <rdi>
    9526:	48 8b 15 13 7f 00 00 	mov    rdx,QWORD PTR [rip+0x7f13]        # 11440 <rax>
    952d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9530:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9533:	48 89 02             	mov    QWORD PTR [rdx],rax
    9536:	48 8b 15 33 81 00 00 	mov    rdx,QWORD PTR [rip+0x8133]        # 11670 <s_bss>
    953d:	48 8b 05 fc 7e 00 00 	mov    rax,QWORD PTR [rip+0x7efc]        # 11440 <rax>
    9544:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9548:	48 89 10             	mov    QWORD PTR [rax],rdx
    954b:	48 8b 15 1e 81 00 00 	mov    rdx,QWORD PTR [rip+0x811e]        # 11670 <s_bss>
    9552:	48 8b 05 5f 7f 00 00 	mov    rax,QWORD PTR [rip+0x7f5f]        # 114b8 <rdx>
    9559:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    9560:	48 89 10             	mov    QWORD PTR [rax],rdx
    9563:	48 8b 05 4e 7f 00 00 	mov    rax,QWORD PTR [rip+0x7f4e]        # 114b8 <rdx>
    956a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    956d:	48 89 c2             	mov    rdx,rax
    9570:	48 8b 05 41 7f 00 00 	mov    rax,QWORD PTR [rip+0x7f41]        # 114b8 <rdx>
    9577:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    957a:	48 89 10             	mov    QWORD PTR [rax],rdx
    957d:	48 8b 05 34 7f 00 00 	mov    rax,QWORD PTR [rip+0x7f34]        # 114b8 <rdx>
    9584:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    9587:	48 8b 05 2a 7f 00 00 	mov    rax,QWORD PTR [rip+0x7f2a]        # 114b8 <rdx>
    958e:	48 83 ea 08          	sub    rdx,0x8
    9592:	48 89 10             	mov    QWORD PTR [rax],rdx
    9595:	48 8b 05 a4 7e 00 00 	mov    rax,QWORD PTR [rip+0x7ea4]        # 11440 <rax>
    959c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    959f:	48 89 c2             	mov    rdx,rax
    95a2:	48 8b 05 97 7e 00 00 	mov    rax,QWORD PTR [rip+0x7e97]        # 11440 <rax>
    95a9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    95ac:	48 89 10             	mov    QWORD PTR [rax],rdx
    95af:	48 8b 05 8a 7e 00 00 	mov    rax,QWORD PTR [rip+0x7e8a]        # 11440 <rax>
    95b6:	48 8b 15 fb 7e 00 00 	mov    rdx,QWORD PTR [rip+0x7efb]        # 114b8 <rdx>
    95bd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    95c0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    95c3:	48 89 02             	mov    QWORD PTR [rdx],rax
    95c6:	e9 4a 22 00 00       	jmp    b815 <fib_switch+0x40d8>
    95cb:	90                   	nop
    95cc:	48 8b 15 9d 80 00 00 	mov    rdx,QWORD PTR [rip+0x809d]        # 11670 <s_bss>
    95d3:	48 8b 05 66 7e 00 00 	mov    rax,QWORD PTR [rip+0x7e66]        # 11440 <rax>
    95da:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    95de:	48 89 10             	mov    QWORD PTR [rax],rdx
    95e1:	48 8b 05 a8 7e 00 00 	mov    rax,QWORD PTR [rip+0x7ea8]        # 11490 <rcx>
    95e8:	48 bb 65 0a e6 69 0c 	movabs rbx,0xc69e60a65
    95ef:	00 00 00 
    95f2:	48 89 18             	mov    QWORD PTR [rax],rbx
    95f5:	48 8b 05 94 7e 00 00 	mov    rax,QWORD PTR [rip+0x7e94]        # 11490 <rcx>
    95fc:	48 8b 15 3d 7e 00 00 	mov    rdx,QWORD PTR [rip+0x7e3d]        # 11440 <rax>
    9603:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9606:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9609:	48 89 02             	mov    QWORD PTR [rdx],rax
    960c:	48 8b 15 5d 80 00 00 	mov    rdx,QWORD PTR [rip+0x805d]        # 11670 <s_bss>
    9613:	48 8b 05 26 7e 00 00 	mov    rax,QWORD PTR [rip+0x7e26]        # 11440 <rax>
    961a:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    961e:	48 89 10             	mov    QWORD PTR [rax],rdx
    9621:	48 8b 15 48 80 00 00 	mov    rdx,QWORD PTR [rip+0x8048]        # 11670 <s_bss>
    9628:	48 8b 05 89 7e 00 00 	mov    rax,QWORD PTR [rip+0x7e89]        # 114b8 <rdx>
    962f:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    9636:	48 89 10             	mov    QWORD PTR [rax],rdx
    9639:	48 8b 05 78 7e 00 00 	mov    rax,QWORD PTR [rip+0x7e78]        # 114b8 <rdx>
    9640:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9643:	48 89 c2             	mov    rdx,rax
    9646:	48 8b 05 6b 7e 00 00 	mov    rax,QWORD PTR [rip+0x7e6b]        # 114b8 <rdx>
    964d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9650:	48 89 10             	mov    QWORD PTR [rax],rdx
    9653:	48 8b 05 5e 7e 00 00 	mov    rax,QWORD PTR [rip+0x7e5e]        # 114b8 <rdx>
    965a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    965d:	48 8b 05 54 7e 00 00 	mov    rax,QWORD PTR [rip+0x7e54]        # 114b8 <rdx>
    9664:	48 83 ea 08          	sub    rdx,0x8
    9668:	48 89 10             	mov    QWORD PTR [rax],rdx
    966b:	48 8b 05 ce 7d 00 00 	mov    rax,QWORD PTR [rip+0x7dce]        # 11440 <rax>
    9672:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9675:	48 89 c2             	mov    rdx,rax
    9678:	48 8b 05 c1 7d 00 00 	mov    rax,QWORD PTR [rip+0x7dc1]        # 11440 <rax>
    967f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9682:	48 89 10             	mov    QWORD PTR [rax],rdx
    9685:	48 8b 05 b4 7d 00 00 	mov    rax,QWORD PTR [rip+0x7db4]        # 11440 <rax>
    968c:	48 8b 15 25 7e 00 00 	mov    rdx,QWORD PTR [rip+0x7e25]        # 114b8 <rdx>
    9693:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9696:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9699:	48 89 02             	mov    QWORD PTR [rdx],rax
    969c:	e9 74 21 00 00       	jmp    b815 <fib_switch+0x40d8>
    96a1:	90                   	nop
    96a2:	48 8b 15 c7 7f 00 00 	mov    rdx,QWORD PTR [rip+0x7fc7]        # 11670 <s_bss>
    96a9:	48 8b 05 90 7d 00 00 	mov    rax,QWORD PTR [rip+0x7d90]        # 11440 <rax>
    96b0:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    96b4:	48 89 10             	mov    QWORD PTR [rax],rdx
    96b7:	48 8b 05 22 7e 00 00 	mov    rax,QWORD PTR [rip+0x7e22]        # 114e0 <rsi>
    96be:	48 b9 48 ac f2 15 14 	movabs rcx,0x1415f2ac48
    96c5:	00 00 00 
    96c8:	48 89 08             	mov    QWORD PTR [rax],rcx
    96cb:	48 8b 05 0e 7e 00 00 	mov    rax,QWORD PTR [rip+0x7e0e]        # 114e0 <rsi>
    96d2:	48 8b 15 67 7d 00 00 	mov    rdx,QWORD PTR [rip+0x7d67]        # 11440 <rax>
    96d9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    96dc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    96df:	48 89 02             	mov    QWORD PTR [rdx],rax
    96e2:	48 8b 15 87 7f 00 00 	mov    rdx,QWORD PTR [rip+0x7f87]        # 11670 <s_bss>
    96e9:	48 8b 05 50 7d 00 00 	mov    rax,QWORD PTR [rip+0x7d50]        # 11440 <rax>
    96f0:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    96f4:	48 89 10             	mov    QWORD PTR [rax],rdx
    96f7:	48 8b 15 72 7f 00 00 	mov    rdx,QWORD PTR [rip+0x7f72]        # 11670 <s_bss>
    96fe:	48 8b 05 b3 7d 00 00 	mov    rax,QWORD PTR [rip+0x7db3]        # 114b8 <rdx>
    9705:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    970c:	48 89 10             	mov    QWORD PTR [rax],rdx
    970f:	48 8b 05 a2 7d 00 00 	mov    rax,QWORD PTR [rip+0x7da2]        # 114b8 <rdx>
    9716:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9719:	48 89 c2             	mov    rdx,rax
    971c:	48 8b 05 95 7d 00 00 	mov    rax,QWORD PTR [rip+0x7d95]        # 114b8 <rdx>
    9723:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9726:	48 89 10             	mov    QWORD PTR [rax],rdx
    9729:	48 8b 05 88 7d 00 00 	mov    rax,QWORD PTR [rip+0x7d88]        # 114b8 <rdx>
    9730:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    9733:	48 8b 05 7e 7d 00 00 	mov    rax,QWORD PTR [rip+0x7d7e]        # 114b8 <rdx>
    973a:	48 83 ea 08          	sub    rdx,0x8
    973e:	48 89 10             	mov    QWORD PTR [rax],rdx
    9741:	48 8b 05 f8 7c 00 00 	mov    rax,QWORD PTR [rip+0x7cf8]        # 11440 <rax>
    9748:	48 8b 00             	mov    rax,QWORD PTR [rax]
    974b:	48 89 c2             	mov    rdx,rax
    974e:	48 8b 05 eb 7c 00 00 	mov    rax,QWORD PTR [rip+0x7ceb]        # 11440 <rax>
    9755:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9758:	48 89 10             	mov    QWORD PTR [rax],rdx
    975b:	48 8b 05 de 7c 00 00 	mov    rax,QWORD PTR [rip+0x7cde]        # 11440 <rax>
    9762:	48 8b 15 4f 7d 00 00 	mov    rdx,QWORD PTR [rip+0x7d4f]        # 114b8 <rdx>
    9769:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    976c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    976f:	48 89 02             	mov    QWORD PTR [rdx],rax
    9772:	e9 9e 20 00 00       	jmp    b815 <fib_switch+0x40d8>
    9777:	90                   	nop
    9778:	48 8b 15 f1 7e 00 00 	mov    rdx,QWORD PTR [rip+0x7ef1]        # 11670 <s_bss>
    977f:	48 8b 05 ba 7c 00 00 	mov    rax,QWORD PTR [rip+0x7cba]        # 11440 <rax>
    9786:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    978a:	48 89 10             	mov    QWORD PTR [rax],rdx
    978d:	48 8b 05 d4 7c 00 00 	mov    rax,QWORD PTR [rip+0x7cd4]        # 11468 <rbx>
    9794:	48 be ad b6 d8 7f 20 	movabs rsi,0x207fd8b6ad
    979b:	00 00 00 
    979e:	48 89 30             	mov    QWORD PTR [rax],rsi
    97a1:	48 8b 05 c0 7c 00 00 	mov    rax,QWORD PTR [rip+0x7cc0]        # 11468 <rbx>
    97a8:	48 8b 15 91 7c 00 00 	mov    rdx,QWORD PTR [rip+0x7c91]        # 11440 <rax>
    97af:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    97b2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    97b5:	48 89 02             	mov    QWORD PTR [rdx],rax
    97b8:	48 8b 15 b1 7e 00 00 	mov    rdx,QWORD PTR [rip+0x7eb1]        # 11670 <s_bss>
    97bf:	48 8b 05 7a 7c 00 00 	mov    rax,QWORD PTR [rip+0x7c7a]        # 11440 <rax>
    97c6:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    97ca:	48 89 10             	mov    QWORD PTR [rax],rdx
    97cd:	48 8b 15 9c 7e 00 00 	mov    rdx,QWORD PTR [rip+0x7e9c]        # 11670 <s_bss>
    97d4:	48 8b 05 dd 7c 00 00 	mov    rax,QWORD PTR [rip+0x7cdd]        # 114b8 <rdx>
    97db:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    97e2:	48 89 10             	mov    QWORD PTR [rax],rdx
    97e5:	48 8b 05 cc 7c 00 00 	mov    rax,QWORD PTR [rip+0x7ccc]        # 114b8 <rdx>
    97ec:	48 8b 00             	mov    rax,QWORD PTR [rax]
    97ef:	48 89 c2             	mov    rdx,rax
    97f2:	48 8b 05 bf 7c 00 00 	mov    rax,QWORD PTR [rip+0x7cbf]        # 114b8 <rdx>
    97f9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    97fc:	48 89 10             	mov    QWORD PTR [rax],rdx
    97ff:	48 8b 05 b2 7c 00 00 	mov    rax,QWORD PTR [rip+0x7cb2]        # 114b8 <rdx>
    9806:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    9809:	48 8b 05 a8 7c 00 00 	mov    rax,QWORD PTR [rip+0x7ca8]        # 114b8 <rdx>
    9810:	48 83 ea 08          	sub    rdx,0x8
    9814:	48 89 10             	mov    QWORD PTR [rax],rdx
    9817:	48 8b 05 22 7c 00 00 	mov    rax,QWORD PTR [rip+0x7c22]        # 11440 <rax>
    981e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9821:	48 89 c2             	mov    rdx,rax
    9824:	48 8b 05 15 7c 00 00 	mov    rax,QWORD PTR [rip+0x7c15]        # 11440 <rax>
    982b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    982e:	48 89 10             	mov    QWORD PTR [rax],rdx
    9831:	48 8b 05 08 7c 00 00 	mov    rax,QWORD PTR [rip+0x7c08]        # 11440 <rax>
    9838:	48 8b 15 79 7c 00 00 	mov    rdx,QWORD PTR [rip+0x7c79]        # 114b8 <rdx>
    983f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9842:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9845:	48 89 02             	mov    QWORD PTR [rdx],rax
    9848:	e9 c8 1f 00 00       	jmp    b815 <fib_switch+0x40d8>
    984d:	90                   	nop
    984e:	48 8b 15 1b 7e 00 00 	mov    rdx,QWORD PTR [rip+0x7e1b]        # 11670 <s_bss>
    9855:	48 8b 05 e4 7b 00 00 	mov    rax,QWORD PTR [rip+0x7be4]        # 11440 <rax>
    985c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9860:	48 89 10             	mov    QWORD PTR [rax],rdx
    9863:	48 8b 05 96 7c 00 00 	mov    rax,QWORD PTR [rip+0x7c96]        # 11500 <rdi>
    986a:	48 bf f5 62 cb 95 34 	movabs rdi,0x3495cb62f5
    9871:	00 00 00 
    9874:	48 89 38             	mov    QWORD PTR [rax],rdi
    9877:	48 8b 05 82 7c 00 00 	mov    rax,QWORD PTR [rip+0x7c82]        # 11500 <rdi>
    987e:	48 8b 15 bb 7b 00 00 	mov    rdx,QWORD PTR [rip+0x7bbb]        # 11440 <rax>
    9885:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9888:	48 8b 00             	mov    rax,QWORD PTR [rax]
    988b:	48 89 02             	mov    QWORD PTR [rdx],rax
    988e:	48 8b 15 db 7d 00 00 	mov    rdx,QWORD PTR [rip+0x7ddb]        # 11670 <s_bss>
    9895:	48 8b 05 a4 7b 00 00 	mov    rax,QWORD PTR [rip+0x7ba4]        # 11440 <rax>
    989c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    98a0:	48 89 10             	mov    QWORD PTR [rax],rdx
    98a3:	48 8b 15 c6 7d 00 00 	mov    rdx,QWORD PTR [rip+0x7dc6]        # 11670 <s_bss>
    98aa:	48 8b 05 07 7c 00 00 	mov    rax,QWORD PTR [rip+0x7c07]        # 114b8 <rdx>
    98b1:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    98b8:	48 89 10             	mov    QWORD PTR [rax],rdx
    98bb:	48 8b 05 f6 7b 00 00 	mov    rax,QWORD PTR [rip+0x7bf6]        # 114b8 <rdx>
    98c2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    98c5:	48 89 c2             	mov    rdx,rax
    98c8:	48 8b 05 e9 7b 00 00 	mov    rax,QWORD PTR [rip+0x7be9]        # 114b8 <rdx>
    98cf:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    98d2:	48 89 10             	mov    QWORD PTR [rax],rdx
    98d5:	48 8b 05 dc 7b 00 00 	mov    rax,QWORD PTR [rip+0x7bdc]        # 114b8 <rdx>
    98dc:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    98df:	48 8b 05 d2 7b 00 00 	mov    rax,QWORD PTR [rip+0x7bd2]        # 114b8 <rdx>
    98e6:	48 83 ea 08          	sub    rdx,0x8
    98ea:	48 89 10             	mov    QWORD PTR [rax],rdx
    98ed:	48 8b 05 4c 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b4c]        # 11440 <rax>
    98f4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    98f7:	48 89 c2             	mov    rdx,rax
    98fa:	48 8b 05 3f 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b3f]        # 11440 <rax>
    9901:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9904:	48 89 10             	mov    QWORD PTR [rax],rdx
    9907:	48 8b 05 32 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b32]        # 11440 <rax>
    990e:	48 8b 15 a3 7b 00 00 	mov    rdx,QWORD PTR [rip+0x7ba3]        # 114b8 <rdx>
    9915:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9918:	48 8b 00             	mov    rax,QWORD PTR [rax]
    991b:	48 89 02             	mov    QWORD PTR [rdx],rax
    991e:	e9 f2 1e 00 00       	jmp    b815 <fib_switch+0x40d8>
    9923:	90                   	nop
    9924:	48 8b 15 45 7d 00 00 	mov    rdx,QWORD PTR [rip+0x7d45]        # 11670 <s_bss>
    992b:	48 8b 05 0e 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b0e]        # 11440 <rax>
    9932:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9936:	48 89 10             	mov    QWORD PTR [rax],rdx
    9939:	48 8b 05 50 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b50]        # 11490 <rcx>
    9940:	48 bb a2 19 a4 15 55 	movabs rbx,0x5515a419a2
    9947:	00 00 00 
    994a:	48 89 18             	mov    QWORD PTR [rax],rbx
    994d:	48 8b 05 3c 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b3c]        # 11490 <rcx>
    9954:	48 8b 15 e5 7a 00 00 	mov    rdx,QWORD PTR [rip+0x7ae5]        # 11440 <rax>
    995b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    995e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9961:	48 89 02             	mov    QWORD PTR [rdx],rax
    9964:	48 8b 15 05 7d 00 00 	mov    rdx,QWORD PTR [rip+0x7d05]        # 11670 <s_bss>
    996b:	48 8b 05 ce 7a 00 00 	mov    rax,QWORD PTR [rip+0x7ace]        # 11440 <rax>
    9972:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9976:	48 89 10             	mov    QWORD PTR [rax],rdx
    9979:	48 8b 15 f0 7c 00 00 	mov    rdx,QWORD PTR [rip+0x7cf0]        # 11670 <s_bss>
    9980:	48 8b 05 31 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b31]        # 114b8 <rdx>
    9987:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    998e:	48 89 10             	mov    QWORD PTR [rax],rdx
    9991:	48 8b 05 20 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b20]        # 114b8 <rdx>
    9998:	48 8b 00             	mov    rax,QWORD PTR [rax]
    999b:	48 89 c2             	mov    rdx,rax
    999e:	48 8b 05 13 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b13]        # 114b8 <rdx>
    99a5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    99a8:	48 89 10             	mov    QWORD PTR [rax],rdx
    99ab:	48 8b 05 06 7b 00 00 	mov    rax,QWORD PTR [rip+0x7b06]        # 114b8 <rdx>
    99b2:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    99b5:	48 8b 05 fc 7a 00 00 	mov    rax,QWORD PTR [rip+0x7afc]        # 114b8 <rdx>
    99bc:	48 83 ea 08          	sub    rdx,0x8
    99c0:	48 89 10             	mov    QWORD PTR [rax],rdx
    99c3:	48 8b 05 76 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a76]        # 11440 <rax>
    99ca:	48 8b 00             	mov    rax,QWORD PTR [rax]
    99cd:	48 89 c2             	mov    rdx,rax
    99d0:	48 8b 05 69 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a69]        # 11440 <rax>
    99d7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    99da:	48 89 10             	mov    QWORD PTR [rax],rdx
    99dd:	48 8b 05 5c 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a5c]        # 11440 <rax>
    99e4:	48 8b 15 cd 7a 00 00 	mov    rdx,QWORD PTR [rip+0x7acd]        # 114b8 <rdx>
    99eb:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    99ee:	48 8b 00             	mov    rax,QWORD PTR [rax]
    99f1:	48 89 02             	mov    QWORD PTR [rdx],rax
    99f4:	e9 1c 1e 00 00       	jmp    b815 <fib_switch+0x40d8>
    99f9:	90                   	nop
    99fa:	48 8b 15 6f 7c 00 00 	mov    rdx,QWORD PTR [rip+0x7c6f]        # 11670 <s_bss>
    9a01:	48 8b 05 38 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a38]        # 11440 <rax>
    9a08:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9a0c:	48 89 10             	mov    QWORD PTR [rax],rdx
    9a0f:	48 8b 05 ca 7a 00 00 	mov    rax,QWORD PTR [rip+0x7aca]        # 114e0 <rsi>
    9a16:	48 b9 97 7c 6f ab 89 	movabs rcx,0x89ab6f7c97
    9a1d:	00 00 00 
    9a20:	48 89 08             	mov    QWORD PTR [rax],rcx
    9a23:	48 8b 05 b6 7a 00 00 	mov    rax,QWORD PTR [rip+0x7ab6]        # 114e0 <rsi>
    9a2a:	48 8b 15 0f 7a 00 00 	mov    rdx,QWORD PTR [rip+0x7a0f]        # 11440 <rax>
    9a31:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9a34:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9a37:	48 89 02             	mov    QWORD PTR [rdx],rax
    9a3a:	48 8b 15 2f 7c 00 00 	mov    rdx,QWORD PTR [rip+0x7c2f]        # 11670 <s_bss>
    9a41:	48 8b 05 f8 79 00 00 	mov    rax,QWORD PTR [rip+0x79f8]        # 11440 <rax>
    9a48:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9a4c:	48 89 10             	mov    QWORD PTR [rax],rdx
    9a4f:	48 8b 15 1a 7c 00 00 	mov    rdx,QWORD PTR [rip+0x7c1a]        # 11670 <s_bss>
    9a56:	48 8b 05 5b 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a5b]        # 114b8 <rdx>
    9a5d:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    9a64:	48 89 10             	mov    QWORD PTR [rax],rdx
    9a67:	48 8b 05 4a 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a4a]        # 114b8 <rdx>
    9a6e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9a71:	48 89 c2             	mov    rdx,rax
    9a74:	48 8b 05 3d 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a3d]        # 114b8 <rdx>
    9a7b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9a7e:	48 89 10             	mov    QWORD PTR [rax],rdx
    9a81:	48 8b 05 30 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a30]        # 114b8 <rdx>
    9a88:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    9a8b:	48 8b 05 26 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a26]        # 114b8 <rdx>
    9a92:	48 83 ea 08          	sub    rdx,0x8
    9a96:	48 89 10             	mov    QWORD PTR [rax],rdx
    9a99:	48 8b 05 a0 79 00 00 	mov    rax,QWORD PTR [rip+0x79a0]        # 11440 <rax>
    9aa0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9aa3:	48 89 c2             	mov    rdx,rax
    9aa6:	48 8b 05 93 79 00 00 	mov    rax,QWORD PTR [rip+0x7993]        # 11440 <rax>
    9aad:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9ab0:	48 89 10             	mov    QWORD PTR [rax],rdx
    9ab3:	48 8b 05 86 79 00 00 	mov    rax,QWORD PTR [rip+0x7986]        # 11440 <rax>
    9aba:	48 8b 15 f7 79 00 00 	mov    rdx,QWORD PTR [rip+0x79f7]        # 114b8 <rdx>
    9ac1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9ac4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9ac7:	48 89 02             	mov    QWORD PTR [rdx],rax
    9aca:	e9 46 1d 00 00       	jmp    b815 <fib_switch+0x40d8>
    9acf:	90                   	nop
    9ad0:	48 8b 15 99 7b 00 00 	mov    rdx,QWORD PTR [rip+0x7b99]        # 11670 <s_bss>
    9ad7:	48 8b 05 62 79 00 00 	mov    rax,QWORD PTR [rip+0x7962]        # 11440 <rax>
    9ade:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9ae2:	48 89 10             	mov    QWORD PTR [rax],rdx
    9ae5:	48 8b 05 7c 79 00 00 	mov    rax,QWORD PTR [rip+0x797c]        # 11468 <rbx>
    9aec:	48 be 39 96 13 c1 de 	movabs rsi,0xdec1139639
    9af3:	00 00 00 
    9af6:	48 89 30             	mov    QWORD PTR [rax],rsi
    9af9:	48 8b 05 68 79 00 00 	mov    rax,QWORD PTR [rip+0x7968]        # 11468 <rbx>
    9b00:	48 8b 15 39 79 00 00 	mov    rdx,QWORD PTR [rip+0x7939]        # 11440 <rax>
    9b07:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9b0a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9b0d:	48 89 02             	mov    QWORD PTR [rdx],rax
    9b10:	48 8b 15 59 7b 00 00 	mov    rdx,QWORD PTR [rip+0x7b59]        # 11670 <s_bss>
    9b17:	48 8b 05 22 79 00 00 	mov    rax,QWORD PTR [rip+0x7922]        # 11440 <rax>
    9b1e:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9b22:	48 89 10             	mov    QWORD PTR [rax],rdx
    9b25:	48 8b 15 44 7b 00 00 	mov    rdx,QWORD PTR [rip+0x7b44]        # 11670 <s_bss>
    9b2c:	48 8b 05 85 79 00 00 	mov    rax,QWORD PTR [rip+0x7985]        # 114b8 <rdx>
    9b33:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    9b3a:	48 89 10             	mov    QWORD PTR [rax],rdx
    9b3d:	48 8b 05 74 79 00 00 	mov    rax,QWORD PTR [rip+0x7974]        # 114b8 <rdx>
    9b44:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9b47:	48 89 c2             	mov    rdx,rax
    9b4a:	48 8b 05 67 79 00 00 	mov    rax,QWORD PTR [rip+0x7967]        # 114b8 <rdx>
    9b51:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9b54:	48 89 10             	mov    QWORD PTR [rax],rdx
    9b57:	48 8b 05 5a 79 00 00 	mov    rax,QWORD PTR [rip+0x795a]        # 114b8 <rdx>
    9b5e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    9b61:	48 8b 05 50 79 00 00 	mov    rax,QWORD PTR [rip+0x7950]        # 114b8 <rdx>
    9b68:	48 83 ea 08          	sub    rdx,0x8
    9b6c:	48 89 10             	mov    QWORD PTR [rax],rdx
    9b6f:	48 8b 05 ca 78 00 00 	mov    rax,QWORD PTR [rip+0x78ca]        # 11440 <rax>
    9b76:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9b79:	48 89 c2             	mov    rdx,rax
    9b7c:	48 8b 05 bd 78 00 00 	mov    rax,QWORD PTR [rip+0x78bd]        # 11440 <rax>
    9b83:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9b86:	48 89 10             	mov    QWORD PTR [rax],rdx
    9b89:	48 8b 05 b0 78 00 00 	mov    rax,QWORD PTR [rip+0x78b0]        # 11440 <rax>
    9b90:	48 8b 15 21 79 00 00 	mov    rdx,QWORD PTR [rip+0x7921]        # 114b8 <rdx>
    9b97:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9b9a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9b9d:	48 89 02             	mov    QWORD PTR [rdx],rax
    9ba0:	e9 70 1c 00 00       	jmp    b815 <fib_switch+0x40d8>
    9ba5:	90                   	nop
    9ba6:	48 8b 15 c3 7a 00 00 	mov    rdx,QWORD PTR [rip+0x7ac3]        # 11670 <s_bss>
    9bad:	48 8b 05 8c 78 00 00 	mov    rax,QWORD PTR [rip+0x788c]        # 11440 <rax>
    9bb4:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9bb8:	48 89 10             	mov    QWORD PTR [rax],rdx
    9bbb:	48 8b 05 3e 79 00 00 	mov    rax,QWORD PTR [rip+0x793e]        # 11500 <rdi>
    9bc2:	48 bf d0 12 83 6c 68 	movabs rdi,0x1686c8312d0
    9bc9:	01 00 00 
    9bcc:	48 89 38             	mov    QWORD PTR [rax],rdi
    9bcf:	48 8b 05 2a 79 00 00 	mov    rax,QWORD PTR [rip+0x792a]        # 11500 <rdi>
    9bd6:	48 8b 15 63 78 00 00 	mov    rdx,QWORD PTR [rip+0x7863]        # 11440 <rax>
    9bdd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9be0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9be3:	48 89 02             	mov    QWORD PTR [rdx],rax
    9be6:	48 8b 15 83 7a 00 00 	mov    rdx,QWORD PTR [rip+0x7a83]        # 11670 <s_bss>
    9bed:	48 8b 05 4c 78 00 00 	mov    rax,QWORD PTR [rip+0x784c]        # 11440 <rax>
    9bf4:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9bf8:	48 89 10             	mov    QWORD PTR [rax],rdx
    9bfb:	48 8b 15 6e 7a 00 00 	mov    rdx,QWORD PTR [rip+0x7a6e]        # 11670 <s_bss>
    9c02:	48 8b 05 af 78 00 00 	mov    rax,QWORD PTR [rip+0x78af]        # 114b8 <rdx>
    9c09:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    9c10:	48 89 10             	mov    QWORD PTR [rax],rdx
    9c13:	48 8b 05 9e 78 00 00 	mov    rax,QWORD PTR [rip+0x789e]        # 114b8 <rdx>
    9c1a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9c1d:	48 89 c2             	mov    rdx,rax
    9c20:	48 8b 05 91 78 00 00 	mov    rax,QWORD PTR [rip+0x7891]        # 114b8 <rdx>
    9c27:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9c2a:	48 89 10             	mov    QWORD PTR [rax],rdx
    9c2d:	48 8b 05 84 78 00 00 	mov    rax,QWORD PTR [rip+0x7884]        # 114b8 <rdx>
    9c34:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    9c37:	48 8b 05 7a 78 00 00 	mov    rax,QWORD PTR [rip+0x787a]        # 114b8 <rdx>
    9c3e:	48 83 ea 08          	sub    rdx,0x8
    9c42:	48 89 10             	mov    QWORD PTR [rax],rdx
    9c45:	48 8b 05 f4 77 00 00 	mov    rax,QWORD PTR [rip+0x77f4]        # 11440 <rax>
    9c4c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9c4f:	48 89 c2             	mov    rdx,rax
    9c52:	48 8b 05 e7 77 00 00 	mov    rax,QWORD PTR [rip+0x77e7]        # 11440 <rax>
    9c59:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9c5c:	48 89 10             	mov    QWORD PTR [rax],rdx
    9c5f:	48 8b 05 da 77 00 00 	mov    rax,QWORD PTR [rip+0x77da]        # 11440 <rax>
    9c66:	48 8b 15 4b 78 00 00 	mov    rdx,QWORD PTR [rip+0x784b]        # 114b8 <rdx>
    9c6d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9c70:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9c73:	48 89 02             	mov    QWORD PTR [rdx],rax
    9c76:	e9 9a 1b 00 00       	jmp    b815 <fib_switch+0x40d8>
    9c7b:	90                   	nop
    9c7c:	48 8b 15 ed 79 00 00 	mov    rdx,QWORD PTR [rip+0x79ed]        # 11670 <s_bss>
    9c83:	48 8b 05 b6 77 00 00 	mov    rax,QWORD PTR [rip+0x77b6]        # 11440 <rax>
    9c8a:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9c8e:	48 89 10             	mov    QWORD PTR [rax],rdx
    9c91:	48 8b 05 f8 77 00 00 	mov    rax,QWORD PTR [rip+0x77f8]        # 11490 <rcx>
    9c98:	48 bb 09 a9 96 2d 47 	movabs rbx,0x2472d96a909
    9c9f:	02 00 00 
    9ca2:	48 89 18             	mov    QWORD PTR [rax],rbx
    9ca5:	48 8b 05 e4 77 00 00 	mov    rax,QWORD PTR [rip+0x77e4]        # 11490 <rcx>
    9cac:	48 8b 15 8d 77 00 00 	mov    rdx,QWORD PTR [rip+0x778d]        # 11440 <rax>
    9cb3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9cb6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9cb9:	48 89 02             	mov    QWORD PTR [rdx],rax
    9cbc:	48 8b 15 ad 79 00 00 	mov    rdx,QWORD PTR [rip+0x79ad]        # 11670 <s_bss>
    9cc3:	48 8b 05 76 77 00 00 	mov    rax,QWORD PTR [rip+0x7776]        # 11440 <rax>
    9cca:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9cce:	48 89 10             	mov    QWORD PTR [rax],rdx
    9cd1:	48 8b 15 98 79 00 00 	mov    rdx,QWORD PTR [rip+0x7998]        # 11670 <s_bss>
    9cd8:	48 8b 05 d9 77 00 00 	mov    rax,QWORD PTR [rip+0x77d9]        # 114b8 <rdx>
    9cdf:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    9ce6:	48 89 10             	mov    QWORD PTR [rax],rdx
    9ce9:	48 8b 05 c8 77 00 00 	mov    rax,QWORD PTR [rip+0x77c8]        # 114b8 <rdx>
    9cf0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9cf3:	48 89 c2             	mov    rdx,rax
    9cf6:	48 8b 05 bb 77 00 00 	mov    rax,QWORD PTR [rip+0x77bb]        # 114b8 <rdx>
    9cfd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9d00:	48 89 10             	mov    QWORD PTR [rax],rdx
    9d03:	48 8b 05 ae 77 00 00 	mov    rax,QWORD PTR [rip+0x77ae]        # 114b8 <rdx>
    9d0a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    9d0d:	48 8b 05 a4 77 00 00 	mov    rax,QWORD PTR [rip+0x77a4]        # 114b8 <rdx>
    9d14:	48 83 ea 08          	sub    rdx,0x8
    9d18:	48 89 10             	mov    QWORD PTR [rax],rdx
    9d1b:	48 8b 05 1e 77 00 00 	mov    rax,QWORD PTR [rip+0x771e]        # 11440 <rax>
    9d22:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9d25:	48 89 c2             	mov    rdx,rax
    9d28:	48 8b 05 11 77 00 00 	mov    rax,QWORD PTR [rip+0x7711]        # 11440 <rax>
    9d2f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9d32:	48 89 10             	mov    QWORD PTR [rax],rdx
    9d35:	48 8b 05 04 77 00 00 	mov    rax,QWORD PTR [rip+0x7704]        # 11440 <rax>
    9d3c:	48 8b 15 75 77 00 00 	mov    rdx,QWORD PTR [rip+0x7775]        # 114b8 <rdx>
    9d43:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9d46:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9d49:	48 89 02             	mov    QWORD PTR [rdx],rax
    9d4c:	e9 c4 1a 00 00       	jmp    b815 <fib_switch+0x40d8>
    9d51:	90                   	nop
    9d52:	48 8b 15 17 79 00 00 	mov    rdx,QWORD PTR [rip+0x7917]        # 11670 <s_bss>
    9d59:	48 8b 05 e0 76 00 00 	mov    rax,QWORD PTR [rip+0x76e0]        # 11440 <rax>
    9d60:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9d64:	48 89 10             	mov    QWORD PTR [rax],rdx
    9d67:	48 8b 05 72 77 00 00 	mov    rax,QWORD PTR [rip+0x7772]        # 114e0 <rsi>
    9d6e:	48 b9 d9 bb 19 9a af 	movabs rcx,0x3af9a19bbd9
    9d75:	03 00 00 
    9d78:	48 89 08             	mov    QWORD PTR [rax],rcx
    9d7b:	48 8b 05 5e 77 00 00 	mov    rax,QWORD PTR [rip+0x775e]        # 114e0 <rsi>
    9d82:	48 8b 15 b7 76 00 00 	mov    rdx,QWORD PTR [rip+0x76b7]        # 11440 <rax>
    9d89:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9d8c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9d8f:	48 89 02             	mov    QWORD PTR [rdx],rax
    9d92:	48 8b 15 d7 78 00 00 	mov    rdx,QWORD PTR [rip+0x78d7]        # 11670 <s_bss>
    9d99:	48 8b 05 a0 76 00 00 	mov    rax,QWORD PTR [rip+0x76a0]        # 11440 <rax>
    9da0:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9da4:	48 89 10             	mov    QWORD PTR [rax],rdx
    9da7:	48 8b 15 c2 78 00 00 	mov    rdx,QWORD PTR [rip+0x78c2]        # 11670 <s_bss>
    9dae:	48 8b 05 03 77 00 00 	mov    rax,QWORD PTR [rip+0x7703]        # 114b8 <rdx>
    9db5:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    9dbc:	48 89 10             	mov    QWORD PTR [rax],rdx
    9dbf:	48 8b 05 f2 76 00 00 	mov    rax,QWORD PTR [rip+0x76f2]        # 114b8 <rdx>
    9dc6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9dc9:	48 89 c2             	mov    rdx,rax
    9dcc:	48 8b 05 e5 76 00 00 	mov    rax,QWORD PTR [rip+0x76e5]        # 114b8 <rdx>
    9dd3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9dd6:	48 89 10             	mov    QWORD PTR [rax],rdx
    9dd9:	48 8b 05 d8 76 00 00 	mov    rax,QWORD PTR [rip+0x76d8]        # 114b8 <rdx>
    9de0:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    9de3:	48 8b 05 ce 76 00 00 	mov    rax,QWORD PTR [rip+0x76ce]        # 114b8 <rdx>
    9dea:	48 83 ea 08          	sub    rdx,0x8
    9dee:	48 89 10             	mov    QWORD PTR [rax],rdx
    9df1:	48 8b 05 48 76 00 00 	mov    rax,QWORD PTR [rip+0x7648]        # 11440 <rax>
    9df8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9dfb:	48 89 c2             	mov    rdx,rax
    9dfe:	48 8b 05 3b 76 00 00 	mov    rax,QWORD PTR [rip+0x763b]        # 11440 <rax>
    9e05:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9e08:	48 89 10             	mov    QWORD PTR [rax],rdx
    9e0b:	48 8b 05 2e 76 00 00 	mov    rax,QWORD PTR [rip+0x762e]        # 11440 <rax>
    9e12:	48 8b 15 9f 76 00 00 	mov    rdx,QWORD PTR [rip+0x769f]        # 114b8 <rdx>
    9e19:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9e1c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9e1f:	48 89 02             	mov    QWORD PTR [rdx],rax
    9e22:	e9 ee 19 00 00       	jmp    b815 <fib_switch+0x40d8>
    9e27:	90                   	nop
    9e28:	48 8b 15 41 78 00 00 	mov    rdx,QWORD PTR [rip+0x7841]        # 11670 <s_bss>
    9e2f:	48 8b 05 0a 76 00 00 	mov    rax,QWORD PTR [rip+0x760a]        # 11440 <rax>
    9e36:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9e3a:	48 89 10             	mov    QWORD PTR [rax],rdx
    9e3d:	48 8b 05 24 76 00 00 	mov    rax,QWORD PTR [rip+0x7624]        # 11468 <rbx>
    9e44:	48 be e2 64 b0 c7 f6 	movabs rsi,0x5f6c7b064e2
    9e4b:	05 00 00 
    9e4e:	48 89 30             	mov    QWORD PTR [rax],rsi
    9e51:	48 8b 05 10 76 00 00 	mov    rax,QWORD PTR [rip+0x7610]        # 11468 <rbx>
    9e58:	48 8b 15 e1 75 00 00 	mov    rdx,QWORD PTR [rip+0x75e1]        # 11440 <rax>
    9e5f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9e62:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9e65:	48 89 02             	mov    QWORD PTR [rdx],rax
    9e68:	48 8b 15 01 78 00 00 	mov    rdx,QWORD PTR [rip+0x7801]        # 11670 <s_bss>
    9e6f:	48 8b 05 ca 75 00 00 	mov    rax,QWORD PTR [rip+0x75ca]        # 11440 <rax>
    9e76:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9e7a:	48 89 10             	mov    QWORD PTR [rax],rdx
    9e7d:	48 8b 15 ec 77 00 00 	mov    rdx,QWORD PTR [rip+0x77ec]        # 11670 <s_bss>
    9e84:	48 8b 05 2d 76 00 00 	mov    rax,QWORD PTR [rip+0x762d]        # 114b8 <rdx>
    9e8b:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    9e92:	48 89 10             	mov    QWORD PTR [rax],rdx
    9e95:	48 8b 05 1c 76 00 00 	mov    rax,QWORD PTR [rip+0x761c]        # 114b8 <rdx>
    9e9c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9e9f:	48 89 c2             	mov    rdx,rax
    9ea2:	48 8b 05 0f 76 00 00 	mov    rax,QWORD PTR [rip+0x760f]        # 114b8 <rdx>
    9ea9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9eac:	48 89 10             	mov    QWORD PTR [rax],rdx
    9eaf:	48 8b 05 02 76 00 00 	mov    rax,QWORD PTR [rip+0x7602]        # 114b8 <rdx>
    9eb6:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    9eb9:	48 8b 05 f8 75 00 00 	mov    rax,QWORD PTR [rip+0x75f8]        # 114b8 <rdx>
    9ec0:	48 83 ea 08          	sub    rdx,0x8
    9ec4:	48 89 10             	mov    QWORD PTR [rax],rdx
    9ec7:	48 8b 05 72 75 00 00 	mov    rax,QWORD PTR [rip+0x7572]        # 11440 <rax>
    9ece:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9ed1:	48 89 c2             	mov    rdx,rax
    9ed4:	48 8b 05 65 75 00 00 	mov    rax,QWORD PTR [rip+0x7565]        # 11440 <rax>
    9edb:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9ede:	48 89 10             	mov    QWORD PTR [rax],rdx
    9ee1:	48 8b 05 58 75 00 00 	mov    rax,QWORD PTR [rip+0x7558]        # 11440 <rax>
    9ee8:	48 8b 15 c9 75 00 00 	mov    rdx,QWORD PTR [rip+0x75c9]        # 114b8 <rdx>
    9eef:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9ef2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9ef5:	48 89 02             	mov    QWORD PTR [rdx],rax
    9ef8:	e9 18 19 00 00       	jmp    b815 <fib_switch+0x40d8>
    9efd:	90                   	nop
    9efe:	48 8b 15 6b 77 00 00 	mov    rdx,QWORD PTR [rip+0x776b]        # 11670 <s_bss>
    9f05:	48 8b 05 34 75 00 00 	mov    rax,QWORD PTR [rip+0x7534]        # 11440 <rax>
    9f0c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9f10:	48 89 10             	mov    QWORD PTR [rax],rdx
    9f13:	48 8b 05 e6 75 00 00 	mov    rax,QWORD PTR [rip+0x75e6]        # 11500 <rdi>
    9f1a:	48 bf bb 20 ca 61 a6 	movabs rdi,0x9a661ca20bb
    9f21:	09 00 00 
    9f24:	48 89 38             	mov    QWORD PTR [rax],rdi
    9f27:	48 8b 05 d2 75 00 00 	mov    rax,QWORD PTR [rip+0x75d2]        # 11500 <rdi>
    9f2e:	48 8b 15 0b 75 00 00 	mov    rdx,QWORD PTR [rip+0x750b]        # 11440 <rax>
    9f35:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9f38:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9f3b:	48 89 02             	mov    QWORD PTR [rdx],rax
    9f3e:	48 8b 15 2b 77 00 00 	mov    rdx,QWORD PTR [rip+0x772b]        # 11670 <s_bss>
    9f45:	48 8b 05 f4 74 00 00 	mov    rax,QWORD PTR [rip+0x74f4]        # 11440 <rax>
    9f4c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9f50:	48 89 10             	mov    QWORD PTR [rax],rdx
    9f53:	48 8b 15 16 77 00 00 	mov    rdx,QWORD PTR [rip+0x7716]        # 11670 <s_bss>
    9f5a:	48 8b 05 57 75 00 00 	mov    rax,QWORD PTR [rip+0x7557]        # 114b8 <rdx>
    9f61:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    9f68:	48 89 10             	mov    QWORD PTR [rax],rdx
    9f6b:	48 8b 05 46 75 00 00 	mov    rax,QWORD PTR [rip+0x7546]        # 114b8 <rdx>
    9f72:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9f75:	48 89 c2             	mov    rdx,rax
    9f78:	48 8b 05 39 75 00 00 	mov    rax,QWORD PTR [rip+0x7539]        # 114b8 <rdx>
    9f7f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9f82:	48 89 10             	mov    QWORD PTR [rax],rdx
    9f85:	48 8b 05 2c 75 00 00 	mov    rax,QWORD PTR [rip+0x752c]        # 114b8 <rdx>
    9f8c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    9f8f:	48 8b 05 22 75 00 00 	mov    rax,QWORD PTR [rip+0x7522]        # 114b8 <rdx>
    9f96:	48 83 ea 08          	sub    rdx,0x8
    9f9a:	48 89 10             	mov    QWORD PTR [rax],rdx
    9f9d:	48 8b 05 9c 74 00 00 	mov    rax,QWORD PTR [rip+0x749c]        # 11440 <rax>
    9fa4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9fa7:	48 89 c2             	mov    rdx,rax
    9faa:	48 8b 05 8f 74 00 00 	mov    rax,QWORD PTR [rip+0x748f]        # 11440 <rax>
    9fb1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9fb4:	48 89 10             	mov    QWORD PTR [rax],rdx
    9fb7:	48 8b 05 82 74 00 00 	mov    rax,QWORD PTR [rip+0x7482]        # 11440 <rax>
    9fbe:	48 8b 15 f3 74 00 00 	mov    rdx,QWORD PTR [rip+0x74f3]        # 114b8 <rdx>
    9fc5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    9fc8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    9fcb:	48 89 02             	mov    QWORD PTR [rdx],rax
    9fce:	e9 42 18 00 00       	jmp    b815 <fib_switch+0x40d8>
    9fd3:	90                   	nop
    9fd4:	48 8b 15 95 76 00 00 	mov    rdx,QWORD PTR [rip+0x7695]        # 11670 <s_bss>
    9fdb:	48 8b 05 5e 74 00 00 	mov    rax,QWORD PTR [rip+0x745e]        # 11440 <rax>
    9fe2:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    9fe6:	48 89 10             	mov    QWORD PTR [rax],rdx
    9fe9:	48 8b 05 a0 74 00 00 	mov    rax,QWORD PTR [rip+0x74a0]        # 11490 <rcx>
    9ff0:	48 bb 9d 85 7a 29 9d 	movabs rbx,0xf9d297a859d
    9ff7:	0f 00 00 
    9ffa:	48 89 18             	mov    QWORD PTR [rax],rbx
    9ffd:	48 8b 05 8c 74 00 00 	mov    rax,QWORD PTR [rip+0x748c]        # 11490 <rcx>
    a004:	48 8b 15 35 74 00 00 	mov    rdx,QWORD PTR [rip+0x7435]        # 11440 <rax>
    a00b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a00e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a011:	48 89 02             	mov    QWORD PTR [rdx],rax
    a014:	48 8b 15 55 76 00 00 	mov    rdx,QWORD PTR [rip+0x7655]        # 11670 <s_bss>
    a01b:	48 8b 05 1e 74 00 00 	mov    rax,QWORD PTR [rip+0x741e]        # 11440 <rax>
    a022:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a026:	48 89 10             	mov    QWORD PTR [rax],rdx
    a029:	48 8b 15 40 76 00 00 	mov    rdx,QWORD PTR [rip+0x7640]        # 11670 <s_bss>
    a030:	48 8b 05 81 74 00 00 	mov    rax,QWORD PTR [rip+0x7481]        # 114b8 <rdx>
    a037:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    a03e:	48 89 10             	mov    QWORD PTR [rax],rdx
    a041:	48 8b 05 70 74 00 00 	mov    rax,QWORD PTR [rip+0x7470]        # 114b8 <rdx>
    a048:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a04b:	48 89 c2             	mov    rdx,rax
    a04e:	48 8b 05 63 74 00 00 	mov    rax,QWORD PTR [rip+0x7463]        # 114b8 <rdx>
    a055:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a058:	48 89 10             	mov    QWORD PTR [rax],rdx
    a05b:	48 8b 05 56 74 00 00 	mov    rax,QWORD PTR [rip+0x7456]        # 114b8 <rdx>
    a062:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    a065:	48 8b 05 4c 74 00 00 	mov    rax,QWORD PTR [rip+0x744c]        # 114b8 <rdx>
    a06c:	48 83 ea 08          	sub    rdx,0x8
    a070:	48 89 10             	mov    QWORD PTR [rax],rdx
    a073:	48 8b 05 c6 73 00 00 	mov    rax,QWORD PTR [rip+0x73c6]        # 11440 <rax>
    a07a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a07d:	48 89 c2             	mov    rdx,rax
    a080:	48 8b 05 b9 73 00 00 	mov    rax,QWORD PTR [rip+0x73b9]        # 11440 <rax>
    a087:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a08a:	48 89 10             	mov    QWORD PTR [rax],rdx
    a08d:	48 8b 05 ac 73 00 00 	mov    rax,QWORD PTR [rip+0x73ac]        # 11440 <rax>
    a094:	48 8b 15 1d 74 00 00 	mov    rdx,QWORD PTR [rip+0x741d]        # 114b8 <rdx>
    a09b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a09e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a0a1:	48 89 02             	mov    QWORD PTR [rdx],rax
    a0a4:	e9 6c 17 00 00       	jmp    b815 <fib_switch+0x40d8>
    a0a9:	90                   	nop
    a0aa:	48 8b 15 bf 75 00 00 	mov    rdx,QWORD PTR [rip+0x75bf]        # 11670 <s_bss>
    a0b1:	48 8b 05 88 73 00 00 	mov    rax,QWORD PTR [rip+0x7388]        # 11440 <rax>
    a0b8:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a0bc:	48 89 10             	mov    QWORD PTR [rax],rdx
    a0bf:	48 8b 05 1a 74 00 00 	mov    rax,QWORD PTR [rip+0x741a]        # 114e0 <rsi>
    a0c6:	48 b9 58 a6 44 8b 43 	movabs rcx,0x19438b44a658
    a0cd:	19 00 00 
    a0d0:	48 89 08             	mov    QWORD PTR [rax],rcx
    a0d3:	48 8b 05 06 74 00 00 	mov    rax,QWORD PTR [rip+0x7406]        # 114e0 <rsi>
    a0da:	48 8b 15 5f 73 00 00 	mov    rdx,QWORD PTR [rip+0x735f]        # 11440 <rax>
    a0e1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a0e4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a0e7:	48 89 02             	mov    QWORD PTR [rdx],rax
    a0ea:	48 8b 15 7f 75 00 00 	mov    rdx,QWORD PTR [rip+0x757f]        # 11670 <s_bss>
    a0f1:	48 8b 05 48 73 00 00 	mov    rax,QWORD PTR [rip+0x7348]        # 11440 <rax>
    a0f8:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a0fc:	48 89 10             	mov    QWORD PTR [rax],rdx
    a0ff:	48 8b 15 6a 75 00 00 	mov    rdx,QWORD PTR [rip+0x756a]        # 11670 <s_bss>
    a106:	48 8b 05 ab 73 00 00 	mov    rax,QWORD PTR [rip+0x73ab]        # 114b8 <rdx>
    a10d:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    a114:	48 89 10             	mov    QWORD PTR [rax],rdx
    a117:	48 8b 05 9a 73 00 00 	mov    rax,QWORD PTR [rip+0x739a]        # 114b8 <rdx>
    a11e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a121:	48 89 c2             	mov    rdx,rax
    a124:	48 8b 05 8d 73 00 00 	mov    rax,QWORD PTR [rip+0x738d]        # 114b8 <rdx>
    a12b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a12e:	48 89 10             	mov    QWORD PTR [rax],rdx
    a131:	48 8b 05 80 73 00 00 	mov    rax,QWORD PTR [rip+0x7380]        # 114b8 <rdx>
    a138:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    a13b:	48 8b 05 76 73 00 00 	mov    rax,QWORD PTR [rip+0x7376]        # 114b8 <rdx>
    a142:	48 83 ea 08          	sub    rdx,0x8
    a146:	48 89 10             	mov    QWORD PTR [rax],rdx
    a149:	48 8b 05 f0 72 00 00 	mov    rax,QWORD PTR [rip+0x72f0]        # 11440 <rax>
    a150:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a153:	48 89 c2             	mov    rdx,rax
    a156:	48 8b 05 e3 72 00 00 	mov    rax,QWORD PTR [rip+0x72e3]        # 11440 <rax>
    a15d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a160:	48 89 10             	mov    QWORD PTR [rax],rdx
    a163:	48 8b 05 d6 72 00 00 	mov    rax,QWORD PTR [rip+0x72d6]        # 11440 <rax>
    a16a:	48 8b 15 47 73 00 00 	mov    rdx,QWORD PTR [rip+0x7347]        # 114b8 <rdx>
    a171:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a174:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a177:	48 89 02             	mov    QWORD PTR [rdx],rax
    a17a:	e9 96 16 00 00       	jmp    b815 <fib_switch+0x40d8>
    a17f:	90                   	nop
    a180:	48 8b 15 e9 74 00 00 	mov    rdx,QWORD PTR [rip+0x74e9]        # 11670 <s_bss>
    a187:	48 8b 05 b2 72 00 00 	mov    rax,QWORD PTR [rip+0x72b2]        # 11440 <rax>
    a18e:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a192:	48 89 10             	mov    QWORD PTR [rax],rdx
    a195:	48 8b 05 cc 72 00 00 	mov    rax,QWORD PTR [rip+0x72cc]        # 11468 <rbx>
    a19c:	48 be f5 2b bf b4 e0 	movabs rsi,0x28e0b4bf2bf5
    a1a3:	28 00 00 
    a1a6:	48 89 30             	mov    QWORD PTR [rax],rsi
    a1a9:	48 8b 05 b8 72 00 00 	mov    rax,QWORD PTR [rip+0x72b8]        # 11468 <rbx>
    a1b0:	48 8b 15 89 72 00 00 	mov    rdx,QWORD PTR [rip+0x7289]        # 11440 <rax>
    a1b7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a1ba:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a1bd:	48 89 02             	mov    QWORD PTR [rdx],rax
    a1c0:	48 8b 15 a9 74 00 00 	mov    rdx,QWORD PTR [rip+0x74a9]        # 11670 <s_bss>
    a1c7:	48 8b 05 72 72 00 00 	mov    rax,QWORD PTR [rip+0x7272]        # 11440 <rax>
    a1ce:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a1d2:	48 89 10             	mov    QWORD PTR [rax],rdx
    a1d5:	48 8b 15 94 74 00 00 	mov    rdx,QWORD PTR [rip+0x7494]        # 11670 <s_bss>
    a1dc:	48 8b 05 d5 72 00 00 	mov    rax,QWORD PTR [rip+0x72d5]        # 114b8 <rdx>
    a1e3:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    a1ea:	48 89 10             	mov    QWORD PTR [rax],rdx
    a1ed:	48 8b 05 c4 72 00 00 	mov    rax,QWORD PTR [rip+0x72c4]        # 114b8 <rdx>
    a1f4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a1f7:	48 89 c2             	mov    rdx,rax
    a1fa:	48 8b 05 b7 72 00 00 	mov    rax,QWORD PTR [rip+0x72b7]        # 114b8 <rdx>
    a201:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a204:	48 89 10             	mov    QWORD PTR [rax],rdx
    a207:	48 8b 05 aa 72 00 00 	mov    rax,QWORD PTR [rip+0x72aa]        # 114b8 <rdx>
    a20e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    a211:	48 8b 05 a0 72 00 00 	mov    rax,QWORD PTR [rip+0x72a0]        # 114b8 <rdx>
    a218:	48 83 ea 08          	sub    rdx,0x8
    a21c:	48 89 10             	mov    QWORD PTR [rax],rdx
    a21f:	48 8b 05 1a 72 00 00 	mov    rax,QWORD PTR [rip+0x721a]        # 11440 <rax>
    a226:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a229:	48 89 c2             	mov    rdx,rax
    a22c:	48 8b 05 0d 72 00 00 	mov    rax,QWORD PTR [rip+0x720d]        # 11440 <rax>
    a233:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a236:	48 89 10             	mov    QWORD PTR [rax],rdx
    a239:	48 8b 05 00 72 00 00 	mov    rax,QWORD PTR [rip+0x7200]        # 11440 <rax>
    a240:	48 8b 15 71 72 00 00 	mov    rdx,QWORD PTR [rip+0x7271]        # 114b8 <rdx>
    a247:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a24a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a24d:	48 89 02             	mov    QWORD PTR [rdx],rax
    a250:	e9 c0 15 00 00       	jmp    b815 <fib_switch+0x40d8>
    a255:	90                   	nop
    a256:	48 8b 15 13 74 00 00 	mov    rdx,QWORD PTR [rip+0x7413]        # 11670 <s_bss>
    a25d:	48 8b 05 dc 71 00 00 	mov    rax,QWORD PTR [rip+0x71dc]        # 11440 <rax>
    a264:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a268:	48 89 10             	mov    QWORD PTR [rax],rdx
    a26b:	48 8b 05 8e 72 00 00 	mov    rax,QWORD PTR [rip+0x728e]        # 11500 <rdi>
    a272:	48 bf 4d d2 03 40 24 	movabs rdi,0x42244003d24d
    a279:	42 00 00 
    a27c:	48 89 38             	mov    QWORD PTR [rax],rdi
    a27f:	48 8b 05 7a 72 00 00 	mov    rax,QWORD PTR [rip+0x727a]        # 11500 <rdi>
    a286:	48 8b 15 b3 71 00 00 	mov    rdx,QWORD PTR [rip+0x71b3]        # 11440 <rax>
    a28d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a290:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a293:	48 89 02             	mov    QWORD PTR [rdx],rax
    a296:	48 8b 15 d3 73 00 00 	mov    rdx,QWORD PTR [rip+0x73d3]        # 11670 <s_bss>
    a29d:	48 8b 05 9c 71 00 00 	mov    rax,QWORD PTR [rip+0x719c]        # 11440 <rax>
    a2a4:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a2a8:	48 89 10             	mov    QWORD PTR [rax],rdx
    a2ab:	48 8b 15 be 73 00 00 	mov    rdx,QWORD PTR [rip+0x73be]        # 11670 <s_bss>
    a2b2:	48 8b 05 ff 71 00 00 	mov    rax,QWORD PTR [rip+0x71ff]        # 114b8 <rdx>
    a2b9:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    a2c0:	48 89 10             	mov    QWORD PTR [rax],rdx
    a2c3:	48 8b 05 ee 71 00 00 	mov    rax,QWORD PTR [rip+0x71ee]        # 114b8 <rdx>
    a2ca:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a2cd:	48 89 c2             	mov    rdx,rax
    a2d0:	48 8b 05 e1 71 00 00 	mov    rax,QWORD PTR [rip+0x71e1]        # 114b8 <rdx>
    a2d7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a2da:	48 89 10             	mov    QWORD PTR [rax],rdx
    a2dd:	48 8b 05 d4 71 00 00 	mov    rax,QWORD PTR [rip+0x71d4]        # 114b8 <rdx>
    a2e4:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    a2e7:	48 8b 05 ca 71 00 00 	mov    rax,QWORD PTR [rip+0x71ca]        # 114b8 <rdx>
    a2ee:	48 83 ea 08          	sub    rdx,0x8
    a2f2:	48 89 10             	mov    QWORD PTR [rax],rdx
    a2f5:	48 8b 05 44 71 00 00 	mov    rax,QWORD PTR [rip+0x7144]        # 11440 <rax>
    a2fc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a2ff:	48 89 c2             	mov    rdx,rax
    a302:	48 8b 05 37 71 00 00 	mov    rax,QWORD PTR [rip+0x7137]        # 11440 <rax>
    a309:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a30c:	48 89 10             	mov    QWORD PTR [rax],rdx
    a30f:	48 8b 05 2a 71 00 00 	mov    rax,QWORD PTR [rip+0x712a]        # 11440 <rax>
    a316:	48 8b 15 9b 71 00 00 	mov    rdx,QWORD PTR [rip+0x719b]        # 114b8 <rdx>
    a31d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a320:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a323:	48 89 02             	mov    QWORD PTR [rdx],rax
    a326:	e9 ea 14 00 00       	jmp    b815 <fib_switch+0x40d8>
    a32b:	90                   	nop
    a32c:	48 8b 15 3d 73 00 00 	mov    rdx,QWORD PTR [rip+0x733d]        # 11670 <s_bss>
    a333:	48 8b 05 06 71 00 00 	mov    rax,QWORD PTR [rip+0x7106]        # 11440 <rax>
    a33a:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a33e:	48 89 10             	mov    QWORD PTR [rax],rdx
    a341:	48 8b 05 48 71 00 00 	mov    rax,QWORD PTR [rip+0x7148]        # 11490 <rcx>
    a348:	48 bb 42 fe c2 f4 04 	movabs rbx,0x6b04f4c2fe42
    a34f:	6b 00 00 
    a352:	48 89 18             	mov    QWORD PTR [rax],rbx
    a355:	48 8b 05 34 71 00 00 	mov    rax,QWORD PTR [rip+0x7134]        # 11490 <rcx>
    a35c:	48 8b 15 dd 70 00 00 	mov    rdx,QWORD PTR [rip+0x70dd]        # 11440 <rax>
    a363:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a366:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a369:	48 89 02             	mov    QWORD PTR [rdx],rax
    a36c:	48 8b 15 fd 72 00 00 	mov    rdx,QWORD PTR [rip+0x72fd]        # 11670 <s_bss>
    a373:	48 8b 05 c6 70 00 00 	mov    rax,QWORD PTR [rip+0x70c6]        # 11440 <rax>
    a37a:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a37e:	48 89 10             	mov    QWORD PTR [rax],rdx
    a381:	48 8b 15 e8 72 00 00 	mov    rdx,QWORD PTR [rip+0x72e8]        # 11670 <s_bss>
    a388:	48 8b 05 29 71 00 00 	mov    rax,QWORD PTR [rip+0x7129]        # 114b8 <rdx>
    a38f:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    a396:	48 89 10             	mov    QWORD PTR [rax],rdx
    a399:	48 8b 05 18 71 00 00 	mov    rax,QWORD PTR [rip+0x7118]        # 114b8 <rdx>
    a3a0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a3a3:	48 89 c2             	mov    rdx,rax
    a3a6:	48 8b 05 0b 71 00 00 	mov    rax,QWORD PTR [rip+0x710b]        # 114b8 <rdx>
    a3ad:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a3b0:	48 89 10             	mov    QWORD PTR [rax],rdx
    a3b3:	48 8b 05 fe 70 00 00 	mov    rax,QWORD PTR [rip+0x70fe]        # 114b8 <rdx>
    a3ba:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    a3bd:	48 8b 05 f4 70 00 00 	mov    rax,QWORD PTR [rip+0x70f4]        # 114b8 <rdx>
    a3c4:	48 83 ea 08          	sub    rdx,0x8
    a3c8:	48 89 10             	mov    QWORD PTR [rax],rdx
    a3cb:	48 8b 05 6e 70 00 00 	mov    rax,QWORD PTR [rip+0x706e]        # 11440 <rax>
    a3d2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a3d5:	48 89 c2             	mov    rdx,rax
    a3d8:	48 8b 05 61 70 00 00 	mov    rax,QWORD PTR [rip+0x7061]        # 11440 <rax>
    a3df:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a3e2:	48 89 10             	mov    QWORD PTR [rax],rdx
    a3e5:	48 8b 05 54 70 00 00 	mov    rax,QWORD PTR [rip+0x7054]        # 11440 <rax>
    a3ec:	48 8b 15 c5 70 00 00 	mov    rdx,QWORD PTR [rip+0x70c5]        # 114b8 <rdx>
    a3f3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a3f6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a3f9:	48 89 02             	mov    QWORD PTR [rdx],rax
    a3fc:	e9 14 14 00 00       	jmp    b815 <fib_switch+0x40d8>
    a401:	90                   	nop
    a402:	48 8b 15 67 72 00 00 	mov    rdx,QWORD PTR [rip+0x7267]        # 11670 <s_bss>
    a409:	48 8b 05 30 70 00 00 	mov    rax,QWORD PTR [rip+0x7030]        # 11440 <rax>
    a410:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a414:	48 89 10             	mov    QWORD PTR [rax],rdx
    a417:	48 8b 05 c2 70 00 00 	mov    rax,QWORD PTR [rip+0x70c2]        # 114e0 <rsi>
    a41e:	48 b9 8f d0 c6 34 29 	movabs rcx,0xad2934c6d08f
    a425:	ad 00 00 
    a428:	48 89 08             	mov    QWORD PTR [rax],rcx
    a42b:	48 8b 05 ae 70 00 00 	mov    rax,QWORD PTR [rip+0x70ae]        # 114e0 <rsi>
    a432:	48 8b 15 07 70 00 00 	mov    rdx,QWORD PTR [rip+0x7007]        # 11440 <rax>
    a439:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a43c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a43f:	48 89 02             	mov    QWORD PTR [rdx],rax
    a442:	48 8b 15 27 72 00 00 	mov    rdx,QWORD PTR [rip+0x7227]        # 11670 <s_bss>
    a449:	48 8b 05 f0 6f 00 00 	mov    rax,QWORD PTR [rip+0x6ff0]        # 11440 <rax>
    a450:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a454:	48 89 10             	mov    QWORD PTR [rax],rdx
    a457:	48 8b 15 12 72 00 00 	mov    rdx,QWORD PTR [rip+0x7212]        # 11670 <s_bss>
    a45e:	48 8b 05 53 70 00 00 	mov    rax,QWORD PTR [rip+0x7053]        # 114b8 <rdx>
    a465:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    a46c:	48 89 10             	mov    QWORD PTR [rax],rdx
    a46f:	48 8b 05 42 70 00 00 	mov    rax,QWORD PTR [rip+0x7042]        # 114b8 <rdx>
    a476:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a479:	48 89 c2             	mov    rdx,rax
    a47c:	48 8b 05 35 70 00 00 	mov    rax,QWORD PTR [rip+0x7035]        # 114b8 <rdx>
    a483:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a486:	48 89 10             	mov    QWORD PTR [rax],rdx
    a489:	48 8b 05 28 70 00 00 	mov    rax,QWORD PTR [rip+0x7028]        # 114b8 <rdx>
    a490:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    a493:	48 8b 05 1e 70 00 00 	mov    rax,QWORD PTR [rip+0x701e]        # 114b8 <rdx>
    a49a:	48 83 ea 08          	sub    rdx,0x8
    a49e:	48 89 10             	mov    QWORD PTR [rax],rdx
    a4a1:	48 8b 05 98 6f 00 00 	mov    rax,QWORD PTR [rip+0x6f98]        # 11440 <rax>
    a4a8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a4ab:	48 89 c2             	mov    rdx,rax
    a4ae:	48 8b 05 8b 6f 00 00 	mov    rax,QWORD PTR [rip+0x6f8b]        # 11440 <rax>
    a4b5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a4b8:	48 89 10             	mov    QWORD PTR [rax],rdx
    a4bb:	48 8b 05 7e 6f 00 00 	mov    rax,QWORD PTR [rip+0x6f7e]        # 11440 <rax>
    a4c2:	48 8b 15 ef 6f 00 00 	mov    rdx,QWORD PTR [rip+0x6fef]        # 114b8 <rdx>
    a4c9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a4cc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a4cf:	48 89 02             	mov    QWORD PTR [rdx],rax
    a4d2:	e9 3e 13 00 00       	jmp    b815 <fib_switch+0x40d8>
    a4d7:	90                   	nop
    a4d8:	48 8b 15 91 71 00 00 	mov    rdx,QWORD PTR [rip+0x7191]        # 11670 <s_bss>
    a4df:	48 8b 05 5a 6f 00 00 	mov    rax,QWORD PTR [rip+0x6f5a]        # 11440 <rax>
    a4e6:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a4ea:	48 89 10             	mov    QWORD PTR [rax],rdx
    a4ed:	48 8b 05 74 6f 00 00 	mov    rax,QWORD PTR [rip+0x6f74]        # 11468 <rbx>
    a4f4:	48 be d1 ce 89 29 2e 	movabs rsi,0x1182e2989ced1
    a4fb:	18 01 00 
    a4fe:	48 89 30             	mov    QWORD PTR [rax],rsi
    a501:	48 8b 05 60 6f 00 00 	mov    rax,QWORD PTR [rip+0x6f60]        # 11468 <rbx>
    a508:	48 8b 15 31 6f 00 00 	mov    rdx,QWORD PTR [rip+0x6f31]        # 11440 <rax>
    a50f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a512:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a515:	48 89 02             	mov    QWORD PTR [rdx],rax
    a518:	48 8b 15 51 71 00 00 	mov    rdx,QWORD PTR [rip+0x7151]        # 11670 <s_bss>
    a51f:	48 8b 05 1a 6f 00 00 	mov    rax,QWORD PTR [rip+0x6f1a]        # 11440 <rax>
    a526:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a52a:	48 89 10             	mov    QWORD PTR [rax],rdx
    a52d:	48 8b 15 3c 71 00 00 	mov    rdx,QWORD PTR [rip+0x713c]        # 11670 <s_bss>
    a534:	48 8b 05 7d 6f 00 00 	mov    rax,QWORD PTR [rip+0x6f7d]        # 114b8 <rdx>
    a53b:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    a542:	48 89 10             	mov    QWORD PTR [rax],rdx
    a545:	48 8b 05 6c 6f 00 00 	mov    rax,QWORD PTR [rip+0x6f6c]        # 114b8 <rdx>
    a54c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a54f:	48 89 c2             	mov    rdx,rax
    a552:	48 8b 05 5f 6f 00 00 	mov    rax,QWORD PTR [rip+0x6f5f]        # 114b8 <rdx>
    a559:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a55c:	48 89 10             	mov    QWORD PTR [rax],rdx
    a55f:	48 8b 05 52 6f 00 00 	mov    rax,QWORD PTR [rip+0x6f52]        # 114b8 <rdx>
    a566:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    a569:	48 8b 05 48 6f 00 00 	mov    rax,QWORD PTR [rip+0x6f48]        # 114b8 <rdx>
    a570:	48 83 ea 08          	sub    rdx,0x8
    a574:	48 89 10             	mov    QWORD PTR [rax],rdx
    a577:	48 8b 05 c2 6e 00 00 	mov    rax,QWORD PTR [rip+0x6ec2]        # 11440 <rax>
    a57e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a581:	48 89 c2             	mov    rdx,rax
    a584:	48 8b 05 b5 6e 00 00 	mov    rax,QWORD PTR [rip+0x6eb5]        # 11440 <rax>
    a58b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a58e:	48 89 10             	mov    QWORD PTR [rax],rdx
    a591:	48 8b 05 a8 6e 00 00 	mov    rax,QWORD PTR [rip+0x6ea8]        # 11440 <rax>
    a598:	48 8b 15 19 6f 00 00 	mov    rdx,QWORD PTR [rip+0x6f19]        # 114b8 <rdx>
    a59f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a5a2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a5a5:	48 89 02             	mov    QWORD PTR [rdx],rax
    a5a8:	e9 68 12 00 00       	jmp    b815 <fib_switch+0x40d8>
    a5ad:	90                   	nop
    a5ae:	48 8b 15 bb 70 00 00 	mov    rdx,QWORD PTR [rip+0x70bb]        # 11670 <s_bss>
    a5b5:	48 8b 05 84 6e 00 00 	mov    rax,QWORD PTR [rip+0x6e84]        # 11440 <rax>
    a5bc:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a5c0:	48 89 10             	mov    QWORD PTR [rax],rdx
    a5c3:	48 8b 05 36 6f 00 00 	mov    rax,QWORD PTR [rip+0x6f36]        # 11500 <rdi>
    a5ca:	48 bf 60 9f 50 5e 57 	movabs rdi,0x1c5575e509f60
    a5d1:	c5 01 00 
    a5d4:	48 89 38             	mov    QWORD PTR [rax],rdi
    a5d7:	48 8b 05 22 6f 00 00 	mov    rax,QWORD PTR [rip+0x6f22]        # 11500 <rdi>
    a5de:	48 8b 15 5b 6e 00 00 	mov    rdx,QWORD PTR [rip+0x6e5b]        # 11440 <rax>
    a5e5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a5e8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a5eb:	48 89 02             	mov    QWORD PTR [rdx],rax
    a5ee:	48 8b 15 7b 70 00 00 	mov    rdx,QWORD PTR [rip+0x707b]        # 11670 <s_bss>
    a5f5:	48 8b 05 44 6e 00 00 	mov    rax,QWORD PTR [rip+0x6e44]        # 11440 <rax>
    a5fc:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a600:	48 89 10             	mov    QWORD PTR [rax],rdx
    a603:	48 8b 15 66 70 00 00 	mov    rdx,QWORD PTR [rip+0x7066]        # 11670 <s_bss>
    a60a:	48 8b 05 a7 6e 00 00 	mov    rax,QWORD PTR [rip+0x6ea7]        # 114b8 <rdx>
    a611:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    a618:	48 89 10             	mov    QWORD PTR [rax],rdx
    a61b:	48 8b 05 96 6e 00 00 	mov    rax,QWORD PTR [rip+0x6e96]        # 114b8 <rdx>
    a622:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a625:	48 89 c2             	mov    rdx,rax
    a628:	48 8b 05 89 6e 00 00 	mov    rax,QWORD PTR [rip+0x6e89]        # 114b8 <rdx>
    a62f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a632:	48 89 10             	mov    QWORD PTR [rax],rdx
    a635:	48 8b 05 7c 6e 00 00 	mov    rax,QWORD PTR [rip+0x6e7c]        # 114b8 <rdx>
    a63c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    a63f:	48 8b 05 72 6e 00 00 	mov    rax,QWORD PTR [rip+0x6e72]        # 114b8 <rdx>
    a646:	48 83 ea 08          	sub    rdx,0x8
    a64a:	48 89 10             	mov    QWORD PTR [rax],rdx
    a64d:	48 8b 05 ec 6d 00 00 	mov    rax,QWORD PTR [rip+0x6dec]        # 11440 <rax>
    a654:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a657:	48 89 c2             	mov    rdx,rax
    a65a:	48 8b 05 df 6d 00 00 	mov    rax,QWORD PTR [rip+0x6ddf]        # 11440 <rax>
    a661:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a664:	48 89 10             	mov    QWORD PTR [rax],rdx
    a667:	48 8b 05 d2 6d 00 00 	mov    rax,QWORD PTR [rip+0x6dd2]        # 11440 <rax>
    a66e:	48 8b 15 43 6e 00 00 	mov    rdx,QWORD PTR [rip+0x6e43]        # 114b8 <rdx>
    a675:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a678:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a67b:	48 89 02             	mov    QWORD PTR [rdx],rax
    a67e:	e9 92 11 00 00       	jmp    b815 <fib_switch+0x40d8>
    a683:	90                   	nop
    a684:	48 8b 15 e5 6f 00 00 	mov    rdx,QWORD PTR [rip+0x6fe5]        # 11670 <s_bss>
    a68b:	48 8b 05 ae 6d 00 00 	mov    rax,QWORD PTR [rip+0x6dae]        # 11440 <rax>
    a692:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a696:	48 89 10             	mov    QWORD PTR [rax],rdx
    a699:	48 8b 05 f0 6d 00 00 	mov    rax,QWORD PTR [rip+0x6df0]        # 11490 <rcx>
    a6a0:	48 bb 31 6e da 87 85 	movabs rbx,0x2dd8587da6e31
    a6a7:	dd 02 00 
    a6aa:	48 89 18             	mov    QWORD PTR [rax],rbx
    a6ad:	48 8b 05 dc 6d 00 00 	mov    rax,QWORD PTR [rip+0x6ddc]        # 11490 <rcx>
    a6b4:	48 8b 15 85 6d 00 00 	mov    rdx,QWORD PTR [rip+0x6d85]        # 11440 <rax>
    a6bb:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a6be:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a6c1:	48 89 02             	mov    QWORD PTR [rdx],rax
    a6c4:	48 8b 15 a5 6f 00 00 	mov    rdx,QWORD PTR [rip+0x6fa5]        # 11670 <s_bss>
    a6cb:	48 8b 05 6e 6d 00 00 	mov    rax,QWORD PTR [rip+0x6d6e]        # 11440 <rax>
    a6d2:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a6d6:	48 89 10             	mov    QWORD PTR [rax],rdx
    a6d9:	48 8b 15 90 6f 00 00 	mov    rdx,QWORD PTR [rip+0x6f90]        # 11670 <s_bss>
    a6e0:	48 8b 05 d1 6d 00 00 	mov    rax,QWORD PTR [rip+0x6dd1]        # 114b8 <rdx>
    a6e7:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    a6ee:	48 89 10             	mov    QWORD PTR [rax],rdx
    a6f1:	48 8b 05 c0 6d 00 00 	mov    rax,QWORD PTR [rip+0x6dc0]        # 114b8 <rdx>
    a6f8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a6fb:	48 89 c2             	mov    rdx,rax
    a6fe:	48 8b 05 b3 6d 00 00 	mov    rax,QWORD PTR [rip+0x6db3]        # 114b8 <rdx>
    a705:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a708:	48 89 10             	mov    QWORD PTR [rax],rdx
    a70b:	48 8b 05 a6 6d 00 00 	mov    rax,QWORD PTR [rip+0x6da6]        # 114b8 <rdx>
    a712:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    a715:	48 8b 05 9c 6d 00 00 	mov    rax,QWORD PTR [rip+0x6d9c]        # 114b8 <rdx>
    a71c:	48 83 ea 08          	sub    rdx,0x8
    a720:	48 89 10             	mov    QWORD PTR [rax],rdx
    a723:	48 8b 05 16 6d 00 00 	mov    rax,QWORD PTR [rip+0x6d16]        # 11440 <rax>
    a72a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a72d:	48 89 c2             	mov    rdx,rax
    a730:	48 8b 05 09 6d 00 00 	mov    rax,QWORD PTR [rip+0x6d09]        # 11440 <rax>
    a737:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a73a:	48 89 10             	mov    QWORD PTR [rax],rdx
    a73d:	48 8b 05 fc 6c 00 00 	mov    rax,QWORD PTR [rip+0x6cfc]        # 11440 <rax>
    a744:	48 8b 15 6d 6d 00 00 	mov    rdx,QWORD PTR [rip+0x6d6d]        # 114b8 <rdx>
    a74b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a74e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a751:	48 89 02             	mov    QWORD PTR [rdx],rax
    a754:	e9 bc 10 00 00       	jmp    b815 <fib_switch+0x40d8>
    a759:	90                   	nop
    a75a:	48 8b 15 0f 6f 00 00 	mov    rdx,QWORD PTR [rip+0x6f0f]        # 11670 <s_bss>
    a761:	48 8b 05 d8 6c 00 00 	mov    rax,QWORD PTR [rip+0x6cd8]        # 11440 <rax>
    a768:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a76c:	48 89 10             	mov    QWORD PTR [rax],rdx
    a76f:	48 8b 05 6a 6d 00 00 	mov    rax,QWORD PTR [rip+0x6d6a]        # 114e0 <rsi>
    a776:	48 b9 91 0d 2b e6 dc 	movabs rcx,0x4a2dce62b0d91
    a77d:	a2 04 00 
    a780:	48 89 08             	mov    QWORD PTR [rax],rcx
    a783:	48 8b 05 56 6d 00 00 	mov    rax,QWORD PTR [rip+0x6d56]        # 114e0 <rsi>
    a78a:	48 8b 15 af 6c 00 00 	mov    rdx,QWORD PTR [rip+0x6caf]        # 11440 <rax>
    a791:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a794:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a797:	48 89 02             	mov    QWORD PTR [rdx],rax
    a79a:	48 8b 15 cf 6e 00 00 	mov    rdx,QWORD PTR [rip+0x6ecf]        # 11670 <s_bss>
    a7a1:	48 8b 05 98 6c 00 00 	mov    rax,QWORD PTR [rip+0x6c98]        # 11440 <rax>
    a7a8:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a7ac:	48 89 10             	mov    QWORD PTR [rax],rdx
    a7af:	48 8b 15 ba 6e 00 00 	mov    rdx,QWORD PTR [rip+0x6eba]        # 11670 <s_bss>
    a7b6:	48 8b 05 fb 6c 00 00 	mov    rax,QWORD PTR [rip+0x6cfb]        # 114b8 <rdx>
    a7bd:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    a7c4:	48 89 10             	mov    QWORD PTR [rax],rdx
    a7c7:	48 8b 05 ea 6c 00 00 	mov    rax,QWORD PTR [rip+0x6cea]        # 114b8 <rdx>
    a7ce:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a7d1:	48 89 c2             	mov    rdx,rax
    a7d4:	48 8b 05 dd 6c 00 00 	mov    rax,QWORD PTR [rip+0x6cdd]        # 114b8 <rdx>
    a7db:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a7de:	48 89 10             	mov    QWORD PTR [rax],rdx
    a7e1:	48 8b 05 d0 6c 00 00 	mov    rax,QWORD PTR [rip+0x6cd0]        # 114b8 <rdx>
    a7e8:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    a7eb:	48 8b 05 c6 6c 00 00 	mov    rax,QWORD PTR [rip+0x6cc6]        # 114b8 <rdx>
    a7f2:	48 83 ea 08          	sub    rdx,0x8
    a7f6:	48 89 10             	mov    QWORD PTR [rax],rdx
    a7f9:	48 8b 05 40 6c 00 00 	mov    rax,QWORD PTR [rip+0x6c40]        # 11440 <rax>
    a800:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a803:	48 89 c2             	mov    rdx,rax
    a806:	48 8b 05 33 6c 00 00 	mov    rax,QWORD PTR [rip+0x6c33]        # 11440 <rax>
    a80d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a810:	48 89 10             	mov    QWORD PTR [rax],rdx
    a813:	48 8b 05 26 6c 00 00 	mov    rax,QWORD PTR [rip+0x6c26]        # 11440 <rax>
    a81a:	48 8b 15 97 6c 00 00 	mov    rdx,QWORD PTR [rip+0x6c97]        # 114b8 <rdx>
    a821:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a824:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a827:	48 89 02             	mov    QWORD PTR [rdx],rax
    a82a:	e9 e6 0f 00 00       	jmp    b815 <fib_switch+0x40d8>
    a82f:	90                   	nop
    a830:	48 8b 15 39 6e 00 00 	mov    rdx,QWORD PTR [rip+0x6e39]        # 11670 <s_bss>
    a837:	48 8b 05 02 6c 00 00 	mov    rax,QWORD PTR [rip+0x6c02]        # 11440 <rax>
    a83e:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a842:	48 89 10             	mov    QWORD PTR [rax],rdx
    a845:	48 8b 05 1c 6c 00 00 	mov    rax,QWORD PTR [rip+0x6c1c]        # 11468 <rbx>
    a84c:	48 be c2 7b 05 6e 62 	movabs rsi,0x780626e057bc2
    a853:	80 07 00 
    a856:	48 89 30             	mov    QWORD PTR [rax],rsi
    a859:	48 8b 05 08 6c 00 00 	mov    rax,QWORD PTR [rip+0x6c08]        # 11468 <rbx>
    a860:	48 8b 15 d9 6b 00 00 	mov    rdx,QWORD PTR [rip+0x6bd9]        # 11440 <rax>
    a867:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a86a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a86d:	48 89 02             	mov    QWORD PTR [rdx],rax
    a870:	48 8b 15 f9 6d 00 00 	mov    rdx,QWORD PTR [rip+0x6df9]        # 11670 <s_bss>
    a877:	48 8b 05 c2 6b 00 00 	mov    rax,QWORD PTR [rip+0x6bc2]        # 11440 <rax>
    a87e:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a882:	48 89 10             	mov    QWORD PTR [rax],rdx
    a885:	48 8b 15 e4 6d 00 00 	mov    rdx,QWORD PTR [rip+0x6de4]        # 11670 <s_bss>
    a88c:	48 8b 05 25 6c 00 00 	mov    rax,QWORD PTR [rip+0x6c25]        # 114b8 <rdx>
    a893:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    a89a:	48 89 10             	mov    QWORD PTR [rax],rdx
    a89d:	48 8b 05 14 6c 00 00 	mov    rax,QWORD PTR [rip+0x6c14]        # 114b8 <rdx>
    a8a4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a8a7:	48 89 c2             	mov    rdx,rax
    a8aa:	48 8b 05 07 6c 00 00 	mov    rax,QWORD PTR [rip+0x6c07]        # 114b8 <rdx>
    a8b1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a8b4:	48 89 10             	mov    QWORD PTR [rax],rdx
    a8b7:	48 8b 05 fa 6b 00 00 	mov    rax,QWORD PTR [rip+0x6bfa]        # 114b8 <rdx>
    a8be:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    a8c1:	48 8b 05 f0 6b 00 00 	mov    rax,QWORD PTR [rip+0x6bf0]        # 114b8 <rdx>
    a8c8:	48 83 ea 08          	sub    rdx,0x8
    a8cc:	48 89 10             	mov    QWORD PTR [rax],rdx
    a8cf:	48 8b 05 6a 6b 00 00 	mov    rax,QWORD PTR [rip+0x6b6a]        # 11440 <rax>
    a8d6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a8d9:	48 89 c2             	mov    rdx,rax
    a8dc:	48 8b 05 5d 6b 00 00 	mov    rax,QWORD PTR [rip+0x6b5d]        # 11440 <rax>
    a8e3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a8e6:	48 89 10             	mov    QWORD PTR [rax],rdx
    a8e9:	48 8b 05 50 6b 00 00 	mov    rax,QWORD PTR [rip+0x6b50]        # 11440 <rax>
    a8f0:	48 8b 15 c1 6b 00 00 	mov    rdx,QWORD PTR [rip+0x6bc1]        # 114b8 <rdx>
    a8f7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a8fa:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a8fd:	48 89 02             	mov    QWORD PTR [rdx],rax
    a900:	e9 10 0f 00 00       	jmp    b815 <fib_switch+0x40d8>
    a905:	90                   	nop
    a906:	48 8b 15 63 6d 00 00 	mov    rdx,QWORD PTR [rip+0x6d63]        # 11670 <s_bss>
    a90d:	48 8b 05 2c 6b 00 00 	mov    rax,QWORD PTR [rip+0x6b2c]        # 11440 <rax>
    a914:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a918:	48 89 10             	mov    QWORD PTR [rax],rdx
    a91b:	48 8b 05 de 6b 00 00 	mov    rax,QWORD PTR [rip+0x6bde]        # 11500 <rdi>
    a922:	48 bf 53 89 30 54 3f 	movabs rdi,0xc233f54308953
    a929:	23 0c 00 
    a92c:	48 89 38             	mov    QWORD PTR [rax],rdi
    a92f:	48 8b 05 ca 6b 00 00 	mov    rax,QWORD PTR [rip+0x6bca]        # 11500 <rdi>
    a936:	48 8b 15 03 6b 00 00 	mov    rdx,QWORD PTR [rip+0x6b03]        # 11440 <rax>
    a93d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a940:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a943:	48 89 02             	mov    QWORD PTR [rdx],rax
    a946:	48 8b 15 23 6d 00 00 	mov    rdx,QWORD PTR [rip+0x6d23]        # 11670 <s_bss>
    a94d:	48 8b 05 ec 6a 00 00 	mov    rax,QWORD PTR [rip+0x6aec]        # 11440 <rax>
    a954:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a958:	48 89 10             	mov    QWORD PTR [rax],rdx
    a95b:	48 8b 15 0e 6d 00 00 	mov    rdx,QWORD PTR [rip+0x6d0e]        # 11670 <s_bss>
    a962:	48 8b 05 4f 6b 00 00 	mov    rax,QWORD PTR [rip+0x6b4f]        # 114b8 <rdx>
    a969:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    a970:	48 89 10             	mov    QWORD PTR [rax],rdx
    a973:	48 8b 05 3e 6b 00 00 	mov    rax,QWORD PTR [rip+0x6b3e]        # 114b8 <rdx>
    a97a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a97d:	48 89 c2             	mov    rdx,rax
    a980:	48 8b 05 31 6b 00 00 	mov    rax,QWORD PTR [rip+0x6b31]        # 114b8 <rdx>
    a987:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a98a:	48 89 10             	mov    QWORD PTR [rax],rdx
    a98d:	48 8b 05 24 6b 00 00 	mov    rax,QWORD PTR [rip+0x6b24]        # 114b8 <rdx>
    a994:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    a997:	48 8b 05 1a 6b 00 00 	mov    rax,QWORD PTR [rip+0x6b1a]        # 114b8 <rdx>
    a99e:	48 83 ea 08          	sub    rdx,0x8
    a9a2:	48 89 10             	mov    QWORD PTR [rax],rdx
    a9a5:	48 8b 05 94 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a94]        # 11440 <rax>
    a9ac:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a9af:	48 89 c2             	mov    rdx,rax
    a9b2:	48 8b 05 87 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a87]        # 11440 <rax>
    a9b9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a9bc:	48 89 10             	mov    QWORD PTR [rax],rdx
    a9bf:	48 8b 05 7a 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a7a]        # 11440 <rax>
    a9c6:	48 8b 15 eb 6a 00 00 	mov    rdx,QWORD PTR [rip+0x6aeb]        # 114b8 <rdx>
    a9cd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    a9d0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    a9d3:	48 89 02             	mov    QWORD PTR [rdx],rax
    a9d6:	e9 3a 0e 00 00       	jmp    b815 <fib_switch+0x40d8>
    a9db:	90                   	nop
    a9dc:	48 8b 15 8d 6c 00 00 	mov    rdx,QWORD PTR [rip+0x6c8d]        # 11670 <s_bss>
    a9e3:	48 8b 05 56 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a56]        # 11440 <rax>
    a9ea:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    a9ee:	48 89 10             	mov    QWORD PTR [rax],rdx
    a9f1:	48 8b 05 98 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a98]        # 11490 <rcx>
    a9f8:	48 bb 15 05 36 c2 a1 	movabs rbx,0x13a3a1c2360515
    a9ff:	a3 13 00 
    aa02:	48 89 18             	mov    QWORD PTR [rax],rbx
    aa05:	48 8b 05 84 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a84]        # 11490 <rcx>
    aa0c:	48 8b 15 2d 6a 00 00 	mov    rdx,QWORD PTR [rip+0x6a2d]        # 11440 <rax>
    aa13:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    aa16:	48 8b 00             	mov    rax,QWORD PTR [rax]
    aa19:	48 89 02             	mov    QWORD PTR [rdx],rax
    aa1c:	48 8b 15 4d 6c 00 00 	mov    rdx,QWORD PTR [rip+0x6c4d]        # 11670 <s_bss>
    aa23:	48 8b 05 16 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a16]        # 11440 <rax>
    aa2a:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    aa2e:	48 89 10             	mov    QWORD PTR [rax],rdx
    aa31:	48 8b 15 38 6c 00 00 	mov    rdx,QWORD PTR [rip+0x6c38]        # 11670 <s_bss>
    aa38:	48 8b 05 79 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a79]        # 114b8 <rdx>
    aa3f:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    aa46:	48 89 10             	mov    QWORD PTR [rax],rdx
    aa49:	48 8b 05 68 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a68]        # 114b8 <rdx>
    aa50:	48 8b 00             	mov    rax,QWORD PTR [rax]
    aa53:	48 89 c2             	mov    rdx,rax
    aa56:	48 8b 05 5b 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a5b]        # 114b8 <rdx>
    aa5d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    aa60:	48 89 10             	mov    QWORD PTR [rax],rdx
    aa63:	48 8b 05 4e 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a4e]        # 114b8 <rdx>
    aa6a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    aa6d:	48 8b 05 44 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a44]        # 114b8 <rdx>
    aa74:	48 83 ea 08          	sub    rdx,0x8
    aa78:	48 89 10             	mov    QWORD PTR [rax],rdx
    aa7b:	48 8b 05 be 69 00 00 	mov    rax,QWORD PTR [rip+0x69be]        # 11440 <rax>
    aa82:	48 8b 00             	mov    rax,QWORD PTR [rax]
    aa85:	48 89 c2             	mov    rdx,rax
    aa88:	48 8b 05 b1 69 00 00 	mov    rax,QWORD PTR [rip+0x69b1]        # 11440 <rax>
    aa8f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    aa92:	48 89 10             	mov    QWORD PTR [rax],rdx
    aa95:	48 8b 05 a4 69 00 00 	mov    rax,QWORD PTR [rip+0x69a4]        # 11440 <rax>
    aa9c:	48 8b 15 15 6a 00 00 	mov    rdx,QWORD PTR [rip+0x6a15]        # 114b8 <rdx>
    aaa3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    aaa6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    aaa9:	48 89 02             	mov    QWORD PTR [rdx],rax
    aaac:	e9 64 0d 00 00       	jmp    b815 <fib_switch+0x40d8>
    aab1:	90                   	nop
    aab2:	48 8b 15 b7 6b 00 00 	mov    rdx,QWORD PTR [rip+0x6bb7]        # 11670 <s_bss>
    aab9:	48 8b 05 80 69 00 00 	mov    rax,QWORD PTR [rip+0x6980]        # 11440 <rax>
    aac0:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    aac4:	48 89 10             	mov    QWORD PTR [rax],rdx
    aac7:	48 8b 05 12 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a12]        # 114e0 <rsi>
    aace:	48 b9 68 8e 66 16 e1 	movabs rcx,0x1fc6e116668e68
    aad5:	c6 1f 00 
    aad8:	48 89 08             	mov    QWORD PTR [rax],rcx
    aadb:	48 8b 05 fe 69 00 00 	mov    rax,QWORD PTR [rip+0x69fe]        # 114e0 <rsi>
    aae2:	48 8b 15 57 69 00 00 	mov    rdx,QWORD PTR [rip+0x6957]        # 11440 <rax>
    aae9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    aaec:	48 8b 00             	mov    rax,QWORD PTR [rax]
    aaef:	48 89 02             	mov    QWORD PTR [rdx],rax
    aaf2:	48 8b 15 77 6b 00 00 	mov    rdx,QWORD PTR [rip+0x6b77]        # 11670 <s_bss>
    aaf9:	48 8b 05 40 69 00 00 	mov    rax,QWORD PTR [rip+0x6940]        # 11440 <rax>
    ab00:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    ab04:	48 89 10             	mov    QWORD PTR [rax],rdx
    ab07:	48 8b 15 62 6b 00 00 	mov    rdx,QWORD PTR [rip+0x6b62]        # 11670 <s_bss>
    ab0e:	48 8b 05 a3 69 00 00 	mov    rax,QWORD PTR [rip+0x69a3]        # 114b8 <rdx>
    ab15:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    ab1c:	48 89 10             	mov    QWORD PTR [rax],rdx
    ab1f:	48 8b 05 92 69 00 00 	mov    rax,QWORD PTR [rip+0x6992]        # 114b8 <rdx>
    ab26:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ab29:	48 89 c2             	mov    rdx,rax
    ab2c:	48 8b 05 85 69 00 00 	mov    rax,QWORD PTR [rip+0x6985]        # 114b8 <rdx>
    ab33:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ab36:	48 89 10             	mov    QWORD PTR [rax],rdx
    ab39:	48 8b 05 78 69 00 00 	mov    rax,QWORD PTR [rip+0x6978]        # 114b8 <rdx>
    ab40:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    ab43:	48 8b 05 6e 69 00 00 	mov    rax,QWORD PTR [rip+0x696e]        # 114b8 <rdx>
    ab4a:	48 83 ea 08          	sub    rdx,0x8
    ab4e:	48 89 10             	mov    QWORD PTR [rax],rdx
    ab51:	48 8b 05 e8 68 00 00 	mov    rax,QWORD PTR [rip+0x68e8]        # 11440 <rax>
    ab58:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ab5b:	48 89 c2             	mov    rdx,rax
    ab5e:	48 8b 05 db 68 00 00 	mov    rax,QWORD PTR [rip+0x68db]        # 11440 <rax>
    ab65:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ab68:	48 89 10             	mov    QWORD PTR [rax],rdx
    ab6b:	48 8b 05 ce 68 00 00 	mov    rax,QWORD PTR [rip+0x68ce]        # 11440 <rax>
    ab72:	48 8b 15 3f 69 00 00 	mov    rdx,QWORD PTR [rip+0x693f]        # 114b8 <rdx>
    ab79:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ab7c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ab7f:	48 89 02             	mov    QWORD PTR [rdx],rax
    ab82:	e9 8e 0c 00 00       	jmp    b815 <fib_switch+0x40d8>
    ab87:	90                   	nop
    ab88:	48 8b 15 e1 6a 00 00 	mov    rdx,QWORD PTR [rip+0x6ae1]        # 11670 <s_bss>
    ab8f:	48 8b 05 aa 68 00 00 	mov    rax,QWORD PTR [rip+0x68aa]        # 11440 <rax>
    ab96:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    ab9a:	48 89 10             	mov    QWORD PTR [rax],rdx
    ab9d:	48 8b 05 c4 68 00 00 	mov    rax,QWORD PTR [rip+0x68c4]        # 11468 <rbx>
    aba4:	48 be 7d 93 9c d8 82 	movabs rsi,0x336a82d89c937d
    abab:	6a 33 00 
    abae:	48 89 30             	mov    QWORD PTR [rax],rsi
    abb1:	48 8b 05 b0 68 00 00 	mov    rax,QWORD PTR [rip+0x68b0]        # 11468 <rbx>
    abb8:	48 8b 15 81 68 00 00 	mov    rdx,QWORD PTR [rip+0x6881]        # 11440 <rax>
    abbf:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    abc2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    abc5:	48 89 02             	mov    QWORD PTR [rdx],rax
    abc8:	48 8b 15 a1 6a 00 00 	mov    rdx,QWORD PTR [rip+0x6aa1]        # 11670 <s_bss>
    abcf:	48 8b 05 6a 68 00 00 	mov    rax,QWORD PTR [rip+0x686a]        # 11440 <rax>
    abd6:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    abda:	48 89 10             	mov    QWORD PTR [rax],rdx
    abdd:	48 8b 15 8c 6a 00 00 	mov    rdx,QWORD PTR [rip+0x6a8c]        # 11670 <s_bss>
    abe4:	48 8b 05 cd 68 00 00 	mov    rax,QWORD PTR [rip+0x68cd]        # 114b8 <rdx>
    abeb:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    abf2:	48 89 10             	mov    QWORD PTR [rax],rdx
    abf5:	48 8b 05 bc 68 00 00 	mov    rax,QWORD PTR [rip+0x68bc]        # 114b8 <rdx>
    abfc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    abff:	48 89 c2             	mov    rdx,rax
    ac02:	48 8b 05 af 68 00 00 	mov    rax,QWORD PTR [rip+0x68af]        # 114b8 <rdx>
    ac09:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ac0c:	48 89 10             	mov    QWORD PTR [rax],rdx
    ac0f:	48 8b 05 a2 68 00 00 	mov    rax,QWORD PTR [rip+0x68a2]        # 114b8 <rdx>
    ac16:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    ac19:	48 8b 05 98 68 00 00 	mov    rax,QWORD PTR [rip+0x6898]        # 114b8 <rdx>
    ac20:	48 83 ea 08          	sub    rdx,0x8
    ac24:	48 89 10             	mov    QWORD PTR [rax],rdx
    ac27:	48 8b 05 12 68 00 00 	mov    rax,QWORD PTR [rip+0x6812]        # 11440 <rax>
    ac2e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ac31:	48 89 c2             	mov    rdx,rax
    ac34:	48 8b 05 05 68 00 00 	mov    rax,QWORD PTR [rip+0x6805]        # 11440 <rax>
    ac3b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ac3e:	48 89 10             	mov    QWORD PTR [rax],rdx
    ac41:	48 8b 05 f8 67 00 00 	mov    rax,QWORD PTR [rip+0x67f8]        # 11440 <rax>
    ac48:	48 8b 15 69 68 00 00 	mov    rdx,QWORD PTR [rip+0x6869]        # 114b8 <rdx>
    ac4f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ac52:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ac55:	48 89 02             	mov    QWORD PTR [rdx],rax
    ac58:	e9 b8 0b 00 00       	jmp    b815 <fib_switch+0x40d8>
    ac5d:	90                   	nop
    ac5e:	48 8b 15 0b 6a 00 00 	mov    rdx,QWORD PTR [rip+0x6a0b]        # 11670 <s_bss>
    ac65:	48 8b 05 d4 67 00 00 	mov    rax,QWORD PTR [rip+0x67d4]        # 11440 <rax>
    ac6c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    ac70:	48 89 10             	mov    QWORD PTR [rax],rdx
    ac73:	48 8b 05 86 68 00 00 	mov    rax,QWORD PTR [rip+0x6886]        # 11500 <rdi>
    ac7a:	48 bf e5 21 03 ef 63 	movabs rdi,0x533163ef0321e5
    ac81:	31 53 00 
    ac84:	48 89 38             	mov    QWORD PTR [rax],rdi
    ac87:	48 8b 05 72 68 00 00 	mov    rax,QWORD PTR [rip+0x6872]        # 11500 <rdi>
    ac8e:	48 8b 15 ab 67 00 00 	mov    rdx,QWORD PTR [rip+0x67ab]        # 11440 <rax>
    ac95:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ac98:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ac9b:	48 89 02             	mov    QWORD PTR [rdx],rax
    ac9e:	48 8b 15 cb 69 00 00 	mov    rdx,QWORD PTR [rip+0x69cb]        # 11670 <s_bss>
    aca5:	48 8b 05 94 67 00 00 	mov    rax,QWORD PTR [rip+0x6794]        # 11440 <rax>
    acac:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    acb0:	48 89 10             	mov    QWORD PTR [rax],rdx
    acb3:	48 8b 15 b6 69 00 00 	mov    rdx,QWORD PTR [rip+0x69b6]        # 11670 <s_bss>
    acba:	48 8b 05 f7 67 00 00 	mov    rax,QWORD PTR [rip+0x67f7]        # 114b8 <rdx>
    acc1:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    acc8:	48 89 10             	mov    QWORD PTR [rax],rdx
    accb:	48 8b 05 e6 67 00 00 	mov    rax,QWORD PTR [rip+0x67e6]        # 114b8 <rdx>
    acd2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    acd5:	48 89 c2             	mov    rdx,rax
    acd8:	48 8b 05 d9 67 00 00 	mov    rax,QWORD PTR [rip+0x67d9]        # 114b8 <rdx>
    acdf:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ace2:	48 89 10             	mov    QWORD PTR [rax],rdx
    ace5:	48 8b 05 cc 67 00 00 	mov    rax,QWORD PTR [rip+0x67cc]        # 114b8 <rdx>
    acec:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    acef:	48 8b 05 c2 67 00 00 	mov    rax,QWORD PTR [rip+0x67c2]        # 114b8 <rdx>
    acf6:	48 83 ea 08          	sub    rdx,0x8
    acfa:	48 89 10             	mov    QWORD PTR [rax],rdx
    acfd:	48 8b 05 3c 67 00 00 	mov    rax,QWORD PTR [rip+0x673c]        # 11440 <rax>
    ad04:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ad07:	48 89 c2             	mov    rdx,rax
    ad0a:	48 8b 05 2f 67 00 00 	mov    rax,QWORD PTR [rip+0x672f]        # 11440 <rax>
    ad11:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ad14:	48 89 10             	mov    QWORD PTR [rax],rdx
    ad17:	48 8b 05 22 67 00 00 	mov    rax,QWORD PTR [rip+0x6722]        # 11440 <rax>
    ad1e:	48 8b 15 93 67 00 00 	mov    rdx,QWORD PTR [rip+0x6793]        # 114b8 <rdx>
    ad25:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ad28:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ad2b:	48 89 02             	mov    QWORD PTR [rdx],rax
    ad2e:	e9 e2 0a 00 00       	jmp    b815 <fib_switch+0x40d8>
    ad33:	90                   	nop
    ad34:	48 8b 15 35 69 00 00 	mov    rdx,QWORD PTR [rip+0x6935]        # 11670 <s_bss>
    ad3b:	48 8b 05 fe 66 00 00 	mov    rax,QWORD PTR [rip+0x66fe]        # 11440 <rax>
    ad42:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    ad46:	48 89 10             	mov    QWORD PTR [rax],rdx
    ad49:	48 8b 05 40 67 00 00 	mov    rax,QWORD PTR [rip+0x6740]        # 11490 <rcx>
    ad50:	48 bb 62 b5 9f c7 e6 	movabs rbx,0x869be6c79fb562
    ad57:	9b 86 00 
    ad5a:	48 89 18             	mov    QWORD PTR [rax],rbx
    ad5d:	48 8b 05 2c 67 00 00 	mov    rax,QWORD PTR [rip+0x672c]        # 11490 <rcx>
    ad64:	48 8b 15 d5 66 00 00 	mov    rdx,QWORD PTR [rip+0x66d5]        # 11440 <rax>
    ad6b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ad6e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ad71:	48 89 02             	mov    QWORD PTR [rdx],rax
    ad74:	48 8b 15 f5 68 00 00 	mov    rdx,QWORD PTR [rip+0x68f5]        # 11670 <s_bss>
    ad7b:	48 8b 05 be 66 00 00 	mov    rax,QWORD PTR [rip+0x66be]        # 11440 <rax>
    ad82:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    ad86:	48 89 10             	mov    QWORD PTR [rax],rdx
    ad89:	48 8b 15 e0 68 00 00 	mov    rdx,QWORD PTR [rip+0x68e0]        # 11670 <s_bss>
    ad90:	48 8b 05 21 67 00 00 	mov    rax,QWORD PTR [rip+0x6721]        # 114b8 <rdx>
    ad97:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    ad9e:	48 89 10             	mov    QWORD PTR [rax],rdx
    ada1:	48 8b 05 10 67 00 00 	mov    rax,QWORD PTR [rip+0x6710]        # 114b8 <rdx>
    ada8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    adab:	48 89 c2             	mov    rdx,rax
    adae:	48 8b 05 03 67 00 00 	mov    rax,QWORD PTR [rip+0x6703]        # 114b8 <rdx>
    adb5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    adb8:	48 89 10             	mov    QWORD PTR [rax],rdx
    adbb:	48 8b 05 f6 66 00 00 	mov    rax,QWORD PTR [rip+0x66f6]        # 114b8 <rdx>
    adc2:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    adc5:	48 8b 05 ec 66 00 00 	mov    rax,QWORD PTR [rip+0x66ec]        # 114b8 <rdx>
    adcc:	48 83 ea 08          	sub    rdx,0x8
    add0:	48 89 10             	mov    QWORD PTR [rax],rdx
    add3:	48 8b 05 66 66 00 00 	mov    rax,QWORD PTR [rip+0x6666]        # 11440 <rax>
    adda:	48 8b 00             	mov    rax,QWORD PTR [rax]
    addd:	48 89 c2             	mov    rdx,rax
    ade0:	48 8b 05 59 66 00 00 	mov    rax,QWORD PTR [rip+0x6659]        # 11440 <rax>
    ade7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    adea:	48 89 10             	mov    QWORD PTR [rax],rdx
    aded:	48 8b 05 4c 66 00 00 	mov    rax,QWORD PTR [rip+0x664c]        # 11440 <rax>
    adf4:	48 8b 15 bd 66 00 00 	mov    rdx,QWORD PTR [rip+0x66bd]        # 114b8 <rdx>
    adfb:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    adfe:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ae01:	48 89 02             	mov    QWORD PTR [rdx],rax
    ae04:	e9 0c 0a 00 00       	jmp    b815 <fib_switch+0x40d8>
    ae09:	90                   	nop
    ae0a:	48 8b 15 5f 68 00 00 	mov    rdx,QWORD PTR [rip+0x685f]        # 11670 <s_bss>
    ae11:	48 8b 05 28 66 00 00 	mov    rax,QWORD PTR [rip+0x6628]        # 11440 <rax>
    ae18:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    ae1c:	48 89 10             	mov    QWORD PTR [rax],rdx
    ae1f:	48 8b 05 ba 66 00 00 	mov    rax,QWORD PTR [rip+0x66ba]        # 114e0 <rsi>
    ae26:	48 b9 47 d7 a2 b6 4a 	movabs rcx,0xd9cd4ab6a2d747
    ae2d:	cd d9 00 
    ae30:	48 89 08             	mov    QWORD PTR [rax],rcx
    ae33:	48 8b 05 a6 66 00 00 	mov    rax,QWORD PTR [rip+0x66a6]        # 114e0 <rsi>
    ae3a:	48 8b 15 ff 65 00 00 	mov    rdx,QWORD PTR [rip+0x65ff]        # 11440 <rax>
    ae41:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ae44:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ae47:	48 89 02             	mov    QWORD PTR [rdx],rax
    ae4a:	48 8b 15 1f 68 00 00 	mov    rdx,QWORD PTR [rip+0x681f]        # 11670 <s_bss>
    ae51:	48 8b 05 e8 65 00 00 	mov    rax,QWORD PTR [rip+0x65e8]        # 11440 <rax>
    ae58:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    ae5c:	48 89 10             	mov    QWORD PTR [rax],rdx
    ae5f:	48 8b 15 0a 68 00 00 	mov    rdx,QWORD PTR [rip+0x680a]        # 11670 <s_bss>
    ae66:	48 8b 05 4b 66 00 00 	mov    rax,QWORD PTR [rip+0x664b]        # 114b8 <rdx>
    ae6d:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    ae74:	48 89 10             	mov    QWORD PTR [rax],rdx
    ae77:	48 8b 05 3a 66 00 00 	mov    rax,QWORD PTR [rip+0x663a]        # 114b8 <rdx>
    ae7e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ae81:	48 89 c2             	mov    rdx,rax
    ae84:	48 8b 05 2d 66 00 00 	mov    rax,QWORD PTR [rip+0x662d]        # 114b8 <rdx>
    ae8b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ae8e:	48 89 10             	mov    QWORD PTR [rax],rdx
    ae91:	48 8b 05 20 66 00 00 	mov    rax,QWORD PTR [rip+0x6620]        # 114b8 <rdx>
    ae98:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    ae9b:	48 8b 05 16 66 00 00 	mov    rax,QWORD PTR [rip+0x6616]        # 114b8 <rdx>
    aea2:	48 83 ea 08          	sub    rdx,0x8
    aea6:	48 89 10             	mov    QWORD PTR [rax],rdx
    aea9:	48 8b 05 90 65 00 00 	mov    rax,QWORD PTR [rip+0x6590]        # 11440 <rax>
    aeb0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    aeb3:	48 89 c2             	mov    rdx,rax
    aeb6:	48 8b 05 83 65 00 00 	mov    rax,QWORD PTR [rip+0x6583]        # 11440 <rax>
    aebd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    aec0:	48 89 10             	mov    QWORD PTR [rax],rdx
    aec3:	48 8b 05 76 65 00 00 	mov    rax,QWORD PTR [rip+0x6576]        # 11440 <rax>
    aeca:	48 8b 15 e7 65 00 00 	mov    rdx,QWORD PTR [rip+0x65e7]        # 114b8 <rdx>
    aed1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    aed4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    aed7:	48 89 02             	mov    QWORD PTR [rdx],rax
    aeda:	e9 36 09 00 00       	jmp    b815 <fib_switch+0x40d8>
    aedf:	90                   	nop
    aee0:	48 8b 15 89 67 00 00 	mov    rdx,QWORD PTR [rip+0x6789]        # 11670 <s_bss>
    aee7:	48 8b 05 52 65 00 00 	mov    rax,QWORD PTR [rip+0x6552]        # 11440 <rax>
    aeee:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    aef2:	48 89 10             	mov    QWORD PTR [rax],rdx
    aef5:	48 8b 05 6c 65 00 00 	mov    rax,QWORD PTR [rip+0x656c]        # 11468 <rbx>
    aefc:	48 be a9 8c 42 7e 31 	movabs rsi,0x16069317e428ca9
    af03:	69 60 01 
    af06:	48 89 30             	mov    QWORD PTR [rax],rsi
    af09:	48 8b 05 58 65 00 00 	mov    rax,QWORD PTR [rip+0x6558]        # 11468 <rbx>
    af10:	48 8b 15 29 65 00 00 	mov    rdx,QWORD PTR [rip+0x6529]        # 11440 <rax>
    af17:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    af1a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    af1d:	48 89 02             	mov    QWORD PTR [rdx],rax
    af20:	48 8b 15 49 67 00 00 	mov    rdx,QWORD PTR [rip+0x6749]        # 11670 <s_bss>
    af27:	48 8b 05 12 65 00 00 	mov    rax,QWORD PTR [rip+0x6512]        # 11440 <rax>
    af2e:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    af32:	48 89 10             	mov    QWORD PTR [rax],rdx
    af35:	48 8b 15 34 67 00 00 	mov    rdx,QWORD PTR [rip+0x6734]        # 11670 <s_bss>
    af3c:	48 8b 05 75 65 00 00 	mov    rax,QWORD PTR [rip+0x6575]        # 114b8 <rdx>
    af43:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    af4a:	48 89 10             	mov    QWORD PTR [rax],rdx
    af4d:	48 8b 05 64 65 00 00 	mov    rax,QWORD PTR [rip+0x6564]        # 114b8 <rdx>
    af54:	48 8b 00             	mov    rax,QWORD PTR [rax]
    af57:	48 89 c2             	mov    rdx,rax
    af5a:	48 8b 05 57 65 00 00 	mov    rax,QWORD PTR [rip+0x6557]        # 114b8 <rdx>
    af61:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    af64:	48 89 10             	mov    QWORD PTR [rax],rdx
    af67:	48 8b 05 4a 65 00 00 	mov    rax,QWORD PTR [rip+0x654a]        # 114b8 <rdx>
    af6e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    af71:	48 8b 05 40 65 00 00 	mov    rax,QWORD PTR [rip+0x6540]        # 114b8 <rdx>
    af78:	48 83 ea 08          	sub    rdx,0x8
    af7c:	48 89 10             	mov    QWORD PTR [rax],rdx
    af7f:	48 8b 05 ba 64 00 00 	mov    rax,QWORD PTR [rip+0x64ba]        # 11440 <rax>
    af86:	48 8b 00             	mov    rax,QWORD PTR [rax]
    af89:	48 89 c2             	mov    rdx,rax
    af8c:	48 8b 05 ad 64 00 00 	mov    rax,QWORD PTR [rip+0x64ad]        # 11440 <rax>
    af93:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    af96:	48 89 10             	mov    QWORD PTR [rax],rdx
    af99:	48 8b 05 a0 64 00 00 	mov    rax,QWORD PTR [rip+0x64a0]        # 11440 <rax>
    afa0:	48 8b 15 11 65 00 00 	mov    rdx,QWORD PTR [rip+0x6511]        # 114b8 <rdx>
    afa7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    afaa:	48 8b 00             	mov    rax,QWORD PTR [rax]
    afad:	48 89 02             	mov    QWORD PTR [rdx],rax
    afb0:	e9 60 08 00 00       	jmp    b815 <fib_switch+0x40d8>
    afb5:	90                   	nop
    afb6:	48 8b 15 b3 66 00 00 	mov    rdx,QWORD PTR [rip+0x66b3]        # 11670 <s_bss>
    afbd:	48 8b 05 7c 64 00 00 	mov    rax,QWORD PTR [rip+0x647c]        # 11440 <rax>
    afc4:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    afc8:	48 89 10             	mov    QWORD PTR [rax],rdx
    afcb:	48 8b 05 2e 65 00 00 	mov    rax,QWORD PTR [rip+0x652e]        # 11500 <rdi>
    afd2:	48 bf f0 63 e5 34 7c 	movabs rdi,0x23a367c34e563f0
    afd9:	36 3a 02 
    afdc:	48 89 38             	mov    QWORD PTR [rax],rdi
    afdf:	48 8b 05 1a 65 00 00 	mov    rax,QWORD PTR [rip+0x651a]        # 11500 <rdi>
    afe6:	48 8b 15 53 64 00 00 	mov    rdx,QWORD PTR [rip+0x6453]        # 11440 <rax>
    afed:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    aff0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    aff3:	48 89 02             	mov    QWORD PTR [rdx],rax
    aff6:	48 8b 15 73 66 00 00 	mov    rdx,QWORD PTR [rip+0x6673]        # 11670 <s_bss>
    affd:	48 8b 05 3c 64 00 00 	mov    rax,QWORD PTR [rip+0x643c]        # 11440 <rax>
    b004:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b008:	48 89 10             	mov    QWORD PTR [rax],rdx
    b00b:	48 8b 15 5e 66 00 00 	mov    rdx,QWORD PTR [rip+0x665e]        # 11670 <s_bss>
    b012:	48 8b 05 9f 64 00 00 	mov    rax,QWORD PTR [rip+0x649f]        # 114b8 <rdx>
    b019:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    b020:	48 89 10             	mov    QWORD PTR [rax],rdx
    b023:	48 8b 05 8e 64 00 00 	mov    rax,QWORD PTR [rip+0x648e]        # 114b8 <rdx>
    b02a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b02d:	48 89 c2             	mov    rdx,rax
    b030:	48 8b 05 81 64 00 00 	mov    rax,QWORD PTR [rip+0x6481]        # 114b8 <rdx>
    b037:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b03a:	48 89 10             	mov    QWORD PTR [rax],rdx
    b03d:	48 8b 05 74 64 00 00 	mov    rax,QWORD PTR [rip+0x6474]        # 114b8 <rdx>
    b044:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    b047:	48 8b 05 6a 64 00 00 	mov    rax,QWORD PTR [rip+0x646a]        # 114b8 <rdx>
    b04e:	48 83 ea 08          	sub    rdx,0x8
    b052:	48 89 10             	mov    QWORD PTR [rax],rdx
    b055:	48 8b 05 e4 63 00 00 	mov    rax,QWORD PTR [rip+0x63e4]        # 11440 <rax>
    b05c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b05f:	48 89 c2             	mov    rdx,rax
    b062:	48 8b 05 d7 63 00 00 	mov    rax,QWORD PTR [rip+0x63d7]        # 11440 <rax>
    b069:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b06c:	48 89 10             	mov    QWORD PTR [rax],rdx
    b06f:	48 8b 05 ca 63 00 00 	mov    rax,QWORD PTR [rip+0x63ca]        # 11440 <rax>
    b076:	48 8b 15 3b 64 00 00 	mov    rdx,QWORD PTR [rip+0x643b]        # 114b8 <rdx>
    b07d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b080:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b083:	48 89 02             	mov    QWORD PTR [rdx],rax
    b086:	e9 8a 07 00 00       	jmp    b815 <fib_switch+0x40d8>
    b08b:	90                   	nop
    b08c:	48 8b 15 dd 65 00 00 	mov    rdx,QWORD PTR [rip+0x65dd]        # 11670 <s_bss>
    b093:	48 8b 05 a6 63 00 00 	mov    rax,QWORD PTR [rip+0x63a6]        # 11440 <rax>
    b09a:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b09e:	48 89 10             	mov    QWORD PTR [rax],rdx
    b0a1:	48 8b 05 e8 63 00 00 	mov    rax,QWORD PTR [rip+0x63e8]        # 11490 <rcx>
    b0a8:	48 bb 99 f0 27 b3 ad 	movabs rbx,0x39a9fadb327f099
    b0af:	9f 9a 03 
    b0b2:	48 89 18             	mov    QWORD PTR [rax],rbx
    b0b5:	48 8b 05 d4 63 00 00 	mov    rax,QWORD PTR [rip+0x63d4]        # 11490 <rcx>
    b0bc:	48 8b 15 7d 63 00 00 	mov    rdx,QWORD PTR [rip+0x637d]        # 11440 <rax>
    b0c3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b0c6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b0c9:	48 89 02             	mov    QWORD PTR [rdx],rax
    b0cc:	48 8b 15 9d 65 00 00 	mov    rdx,QWORD PTR [rip+0x659d]        # 11670 <s_bss>
    b0d3:	48 8b 05 66 63 00 00 	mov    rax,QWORD PTR [rip+0x6366]        # 11440 <rax>
    b0da:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b0de:	48 89 10             	mov    QWORD PTR [rax],rdx
    b0e1:	48 8b 15 88 65 00 00 	mov    rdx,QWORD PTR [rip+0x6588]        # 11670 <s_bss>
    b0e8:	48 8b 05 c9 63 00 00 	mov    rax,QWORD PTR [rip+0x63c9]        # 114b8 <rdx>
    b0ef:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    b0f6:	48 89 10             	mov    QWORD PTR [rax],rdx
    b0f9:	48 8b 05 b8 63 00 00 	mov    rax,QWORD PTR [rip+0x63b8]        # 114b8 <rdx>
    b100:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b103:	48 89 c2             	mov    rdx,rax
    b106:	48 8b 05 ab 63 00 00 	mov    rax,QWORD PTR [rip+0x63ab]        # 114b8 <rdx>
    b10d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b110:	48 89 10             	mov    QWORD PTR [rax],rdx
    b113:	48 8b 05 9e 63 00 00 	mov    rax,QWORD PTR [rip+0x639e]        # 114b8 <rdx>
    b11a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    b11d:	48 8b 05 94 63 00 00 	mov    rax,QWORD PTR [rip+0x6394]        # 114b8 <rdx>
    b124:	48 83 ea 08          	sub    rdx,0x8
    b128:	48 89 10             	mov    QWORD PTR [rax],rdx
    b12b:	48 8b 05 0e 63 00 00 	mov    rax,QWORD PTR [rip+0x630e]        # 11440 <rax>
    b132:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b135:	48 89 c2             	mov    rdx,rax
    b138:	48 8b 05 01 63 00 00 	mov    rax,QWORD PTR [rip+0x6301]        # 11440 <rax>
    b13f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b142:	48 89 10             	mov    QWORD PTR [rax],rdx
    b145:	48 8b 05 f4 62 00 00 	mov    rax,QWORD PTR [rip+0x62f4]        # 11440 <rax>
    b14c:	48 8b 15 65 63 00 00 	mov    rdx,QWORD PTR [rip+0x6365]        # 114b8 <rdx>
    b153:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b156:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b159:	48 89 02             	mov    QWORD PTR [rdx],rax
    b15c:	e9 b4 06 00 00       	jmp    b815 <fib_switch+0x40d8>
    b161:	90                   	nop
    b162:	48 8b 15 07 65 00 00 	mov    rdx,QWORD PTR [rip+0x6507]        # 11670 <s_bss>
    b169:	48 8b 05 d0 62 00 00 	mov    rax,QWORD PTR [rip+0x62d0]        # 11440 <rax>
    b170:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b174:	48 89 10             	mov    QWORD PTR [rax],rdx
    b177:	48 8b 05 62 63 00 00 	mov    rax,QWORD PTR [rip+0x6362]        # 114e0 <rsi>
    b17e:	48 b9 89 54 0d e8 29 	movabs rcx,0x5d4d629e80d5489
    b185:	d6 d4 05 
    b188:	48 89 08             	mov    QWORD PTR [rax],rcx
    b18b:	48 8b 05 4e 63 00 00 	mov    rax,QWORD PTR [rip+0x634e]        # 114e0 <rsi>
    b192:	48 8b 15 a7 62 00 00 	mov    rdx,QWORD PTR [rip+0x62a7]        # 11440 <rax>
    b199:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b19c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b19f:	48 89 02             	mov    QWORD PTR [rdx],rax
    b1a2:	48 8b 15 c7 64 00 00 	mov    rdx,QWORD PTR [rip+0x64c7]        # 11670 <s_bss>
    b1a9:	48 8b 05 90 62 00 00 	mov    rax,QWORD PTR [rip+0x6290]        # 11440 <rax>
    b1b0:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b1b4:	48 89 10             	mov    QWORD PTR [rax],rdx
    b1b7:	48 8b 15 b2 64 00 00 	mov    rdx,QWORD PTR [rip+0x64b2]        # 11670 <s_bss>
    b1be:	48 8b 05 f3 62 00 00 	mov    rax,QWORD PTR [rip+0x62f3]        # 114b8 <rdx>
    b1c5:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    b1cc:	48 89 10             	mov    QWORD PTR [rax],rdx
    b1cf:	48 8b 05 e2 62 00 00 	mov    rax,QWORD PTR [rip+0x62e2]        # 114b8 <rdx>
    b1d6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b1d9:	48 89 c2             	mov    rdx,rax
    b1dc:	48 8b 05 d5 62 00 00 	mov    rax,QWORD PTR [rip+0x62d5]        # 114b8 <rdx>
    b1e3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b1e6:	48 89 10             	mov    QWORD PTR [rax],rdx
    b1e9:	48 8b 05 c8 62 00 00 	mov    rax,QWORD PTR [rip+0x62c8]        # 114b8 <rdx>
    b1f0:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    b1f3:	48 8b 05 be 62 00 00 	mov    rax,QWORD PTR [rip+0x62be]        # 114b8 <rdx>
    b1fa:	48 83 ea 08          	sub    rdx,0x8
    b1fe:	48 89 10             	mov    QWORD PTR [rax],rdx
    b201:	48 8b 05 38 62 00 00 	mov    rax,QWORD PTR [rip+0x6238]        # 11440 <rax>
    b208:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b20b:	48 89 c2             	mov    rdx,rax
    b20e:	48 8b 05 2b 62 00 00 	mov    rax,QWORD PTR [rip+0x622b]        # 11440 <rax>
    b215:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b218:	48 89 10             	mov    QWORD PTR [rax],rdx
    b21b:	48 8b 05 1e 62 00 00 	mov    rax,QWORD PTR [rip+0x621e]        # 11440 <rax>
    b222:	48 8b 15 8f 62 00 00 	mov    rdx,QWORD PTR [rip+0x628f]        # 114b8 <rdx>
    b229:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b22c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b22f:	48 89 02             	mov    QWORD PTR [rdx],rax
    b232:	e9 de 05 00 00       	jmp    b815 <fib_switch+0x40d8>
    b237:	90                   	nop
    b238:	48 8b 15 31 64 00 00 	mov    rdx,QWORD PTR [rip+0x6431]        # 11670 <s_bss>
    b23f:	48 8b 05 fa 61 00 00 	mov    rax,QWORD PTR [rip+0x61fa]        # 11440 <rax>
    b246:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b24a:	48 89 10             	mov    QWORD PTR [rax],rdx
    b24d:	48 8b 05 14 62 00 00 	mov    rax,QWORD PTR [rip+0x6214]        # 11468 <rbx>
    b254:	48 be 22 45 35 9b d7 	movabs rsi,0x96f75d79b354522
    b25b:	75 6f 09 
    b25e:	48 89 30             	mov    QWORD PTR [rax],rsi
    b261:	48 8b 05 00 62 00 00 	mov    rax,QWORD PTR [rip+0x6200]        # 11468 <rbx>
    b268:	48 8b 15 d1 61 00 00 	mov    rdx,QWORD PTR [rip+0x61d1]        # 11440 <rax>
    b26f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b272:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b275:	48 89 02             	mov    QWORD PTR [rdx],rax
    b278:	48 8b 15 f1 63 00 00 	mov    rdx,QWORD PTR [rip+0x63f1]        # 11670 <s_bss>
    b27f:	48 8b 05 ba 61 00 00 	mov    rax,QWORD PTR [rip+0x61ba]        # 11440 <rax>
    b286:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b28a:	48 89 10             	mov    QWORD PTR [rax],rdx
    b28d:	48 8b 15 dc 63 00 00 	mov    rdx,QWORD PTR [rip+0x63dc]        # 11670 <s_bss>
    b294:	48 8b 05 1d 62 00 00 	mov    rax,QWORD PTR [rip+0x621d]        # 114b8 <rdx>
    b29b:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    b2a2:	48 89 10             	mov    QWORD PTR [rax],rdx
    b2a5:	48 8b 05 0c 62 00 00 	mov    rax,QWORD PTR [rip+0x620c]        # 114b8 <rdx>
    b2ac:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b2af:	48 89 c2             	mov    rdx,rax
    b2b2:	48 8b 05 ff 61 00 00 	mov    rax,QWORD PTR [rip+0x61ff]        # 114b8 <rdx>
    b2b9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b2bc:	48 89 10             	mov    QWORD PTR [rax],rdx
    b2bf:	48 8b 05 f2 61 00 00 	mov    rax,QWORD PTR [rip+0x61f2]        # 114b8 <rdx>
    b2c6:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    b2c9:	48 8b 05 e8 61 00 00 	mov    rax,QWORD PTR [rip+0x61e8]        # 114b8 <rdx>
    b2d0:	48 83 ea 08          	sub    rdx,0x8
    b2d4:	48 89 10             	mov    QWORD PTR [rax],rdx
    b2d7:	48 8b 05 62 61 00 00 	mov    rax,QWORD PTR [rip+0x6162]        # 11440 <rax>
    b2de:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b2e1:	48 89 c2             	mov    rdx,rax
    b2e4:	48 8b 05 55 61 00 00 	mov    rax,QWORD PTR [rip+0x6155]        # 11440 <rax>
    b2eb:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b2ee:	48 89 10             	mov    QWORD PTR [rax],rdx
    b2f1:	48 8b 05 48 61 00 00 	mov    rax,QWORD PTR [rip+0x6148]        # 11440 <rax>
    b2f8:	48 8b 15 b9 61 00 00 	mov    rdx,QWORD PTR [rip+0x61b9]        # 114b8 <rdx>
    b2ff:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b302:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b305:	48 89 02             	mov    QWORD PTR [rdx],rax
    b308:	e9 08 05 00 00       	jmp    b815 <fib_switch+0x40d8>
    b30d:	90                   	nop
    b30e:	48 8b 15 5b 63 00 00 	mov    rdx,QWORD PTR [rip+0x635b]        # 11670 <s_bss>
    b315:	48 8b 05 24 61 00 00 	mov    rax,QWORD PTR [rip+0x6124]        # 11440 <rax>
    b31c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b320:	48 89 10             	mov    QWORD PTR [rax],rdx
    b323:	48 8b 05 d6 61 00 00 	mov    rax,QWORD PTR [rip+0x61d6]        # 11500 <rdi>
    b32a:	48 bf ab 99 42 83 01 	movabs rdi,0xf444c01834299ab
    b331:	4c 44 0f 
    b334:	48 89 38             	mov    QWORD PTR [rax],rdi
    b337:	48 8b 05 c2 61 00 00 	mov    rax,QWORD PTR [rip+0x61c2]        # 11500 <rdi>
    b33e:	48 8b 15 fb 60 00 00 	mov    rdx,QWORD PTR [rip+0x60fb]        # 11440 <rax>
    b345:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b348:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b34b:	48 89 02             	mov    QWORD PTR [rdx],rax
    b34e:	48 8b 15 1b 63 00 00 	mov    rdx,QWORD PTR [rip+0x631b]        # 11670 <s_bss>
    b355:	48 8b 05 e4 60 00 00 	mov    rax,QWORD PTR [rip+0x60e4]        # 11440 <rax>
    b35c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b360:	48 89 10             	mov    QWORD PTR [rax],rdx
    b363:	48 8b 15 06 63 00 00 	mov    rdx,QWORD PTR [rip+0x6306]        # 11670 <s_bss>
    b36a:	48 8b 05 47 61 00 00 	mov    rax,QWORD PTR [rip+0x6147]        # 114b8 <rdx>
    b371:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    b378:	48 89 10             	mov    QWORD PTR [rax],rdx
    b37b:	48 8b 05 36 61 00 00 	mov    rax,QWORD PTR [rip+0x6136]        # 114b8 <rdx>
    b382:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b385:	48 89 c2             	mov    rdx,rax
    b388:	48 8b 05 29 61 00 00 	mov    rax,QWORD PTR [rip+0x6129]        # 114b8 <rdx>
    b38f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b392:	48 89 10             	mov    QWORD PTR [rax],rdx
    b395:	48 8b 05 1c 61 00 00 	mov    rax,QWORD PTR [rip+0x611c]        # 114b8 <rdx>
    b39c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    b39f:	48 8b 05 12 61 00 00 	mov    rax,QWORD PTR [rip+0x6112]        # 114b8 <rdx>
    b3a6:	48 83 ea 08          	sub    rdx,0x8
    b3aa:	48 89 10             	mov    QWORD PTR [rax],rdx
    b3ad:	48 8b 05 8c 60 00 00 	mov    rax,QWORD PTR [rip+0x608c]        # 11440 <rax>
    b3b4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b3b7:	48 89 c2             	mov    rdx,rax
    b3ba:	48 8b 05 7f 60 00 00 	mov    rax,QWORD PTR [rip+0x607f]        # 11440 <rax>
    b3c1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b3c4:	48 89 10             	mov    QWORD PTR [rax],rdx
    b3c7:	48 8b 05 72 60 00 00 	mov    rax,QWORD PTR [rip+0x6072]        # 11440 <rax>
    b3ce:	48 8b 15 e3 60 00 00 	mov    rdx,QWORD PTR [rip+0x60e3]        # 114b8 <rdx>
    b3d5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b3d8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b3db:	48 89 02             	mov    QWORD PTR [rdx],rax
    b3de:	e9 32 04 00 00       	jmp    b815 <fib_switch+0x40d8>
    b3e3:	90                   	nop
    b3e4:	48 8b 15 85 62 00 00 	mov    rdx,QWORD PTR [rip+0x6285]        # 11670 <s_bss>
    b3eb:	48 8b 05 4e 60 00 00 	mov    rax,QWORD PTR [rip+0x604e]        # 11440 <rax>
    b3f2:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b3f6:	48 89 10             	mov    QWORD PTR [rax],rdx
    b3f9:	48 8b 05 90 60 00 00 	mov    rax,QWORD PTR [rip+0x6090]        # 11490 <rcx>
    b400:	48 bb cd de 77 1e d9 	movabs rbx,0x18b3c1d91e77decd
    b407:	c1 b3 18 
    b40a:	48 89 18             	mov    QWORD PTR [rax],rbx
    b40d:	48 8b 05 7c 60 00 00 	mov    rax,QWORD PTR [rip+0x607c]        # 11490 <rcx>
    b414:	48 8b 15 25 60 00 00 	mov    rdx,QWORD PTR [rip+0x6025]        # 11440 <rax>
    b41b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b41e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b421:	48 89 02             	mov    QWORD PTR [rdx],rax
    b424:	48 8b 15 45 62 00 00 	mov    rdx,QWORD PTR [rip+0x6245]        # 11670 <s_bss>
    b42b:	48 8b 05 0e 60 00 00 	mov    rax,QWORD PTR [rip+0x600e]        # 11440 <rax>
    b432:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b436:	48 89 10             	mov    QWORD PTR [rax],rdx
    b439:	48 8b 15 30 62 00 00 	mov    rdx,QWORD PTR [rip+0x6230]        # 11670 <s_bss>
    b440:	48 8b 05 71 60 00 00 	mov    rax,QWORD PTR [rip+0x6071]        # 114b8 <rdx>
    b447:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    b44e:	48 89 10             	mov    QWORD PTR [rax],rdx
    b451:	48 8b 05 60 60 00 00 	mov    rax,QWORD PTR [rip+0x6060]        # 114b8 <rdx>
    b458:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b45b:	48 89 c2             	mov    rdx,rax
    b45e:	48 8b 05 53 60 00 00 	mov    rax,QWORD PTR [rip+0x6053]        # 114b8 <rdx>
    b465:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b468:	48 89 10             	mov    QWORD PTR [rax],rdx
    b46b:	48 8b 05 46 60 00 00 	mov    rax,QWORD PTR [rip+0x6046]        # 114b8 <rdx>
    b472:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    b475:	48 8b 05 3c 60 00 00 	mov    rax,QWORD PTR [rip+0x603c]        # 114b8 <rdx>
    b47c:	48 83 ea 08          	sub    rdx,0x8
    b480:	48 89 10             	mov    QWORD PTR [rax],rdx
    b483:	48 8b 05 b6 5f 00 00 	mov    rax,QWORD PTR [rip+0x5fb6]        # 11440 <rax>
    b48a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b48d:	48 89 c2             	mov    rdx,rax
    b490:	48 8b 05 a9 5f 00 00 	mov    rax,QWORD PTR [rip+0x5fa9]        # 11440 <rax>
    b497:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b49a:	48 89 10             	mov    QWORD PTR [rax],rdx
    b49d:	48 8b 05 9c 5f 00 00 	mov    rax,QWORD PTR [rip+0x5f9c]        # 11440 <rax>
    b4a4:	48 8b 15 0d 60 00 00 	mov    rdx,QWORD PTR [rip+0x600d]        # 114b8 <rdx>
    b4ab:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b4ae:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b4b1:	48 89 02             	mov    QWORD PTR [rdx],rax
    b4b4:	e9 5c 03 00 00       	jmp    b815 <fib_switch+0x40d8>
    b4b9:	90                   	nop
    b4ba:	48 8b 15 af 61 00 00 	mov    rdx,QWORD PTR [rip+0x61af]        # 11670 <s_bss>
    b4c1:	48 8b 05 78 5f 00 00 	mov    rax,QWORD PTR [rip+0x5f78]        # 11440 <rax>
    b4c8:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b4cc:	48 89 10             	mov    QWORD PTR [rax],rdx
    b4cf:	48 8b 05 0a 60 00 00 	mov    rax,QWORD PTR [rip+0x600a]        # 114e0 <rsi>
    b4d6:	48 b9 78 78 ba a1 da 	movabs rcx,0x27f80ddaa1ba7878
    b4dd:	0d f8 27 
    b4e0:	48 89 08             	mov    QWORD PTR [rax],rcx
    b4e3:	48 8b 05 f6 5f 00 00 	mov    rax,QWORD PTR [rip+0x5ff6]        # 114e0 <rsi>
    b4ea:	48 8b 15 4f 5f 00 00 	mov    rdx,QWORD PTR [rip+0x5f4f]        # 11440 <rax>
    b4f1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b4f4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b4f7:	48 89 02             	mov    QWORD PTR [rdx],rax
    b4fa:	48 8b 15 6f 61 00 00 	mov    rdx,QWORD PTR [rip+0x616f]        # 11670 <s_bss>
    b501:	48 8b 05 38 5f 00 00 	mov    rax,QWORD PTR [rip+0x5f38]        # 11440 <rax>
    b508:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b50c:	48 89 10             	mov    QWORD PTR [rax],rdx
    b50f:	48 8b 15 5a 61 00 00 	mov    rdx,QWORD PTR [rip+0x615a]        # 11670 <s_bss>
    b516:	48 8b 05 9b 5f 00 00 	mov    rax,QWORD PTR [rip+0x5f9b]        # 114b8 <rdx>
    b51d:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    b524:	48 89 10             	mov    QWORD PTR [rax],rdx
    b527:	48 8b 05 8a 5f 00 00 	mov    rax,QWORD PTR [rip+0x5f8a]        # 114b8 <rdx>
    b52e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b531:	48 89 c2             	mov    rdx,rax
    b534:	48 8b 05 7d 5f 00 00 	mov    rax,QWORD PTR [rip+0x5f7d]        # 114b8 <rdx>
    b53b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b53e:	48 89 10             	mov    QWORD PTR [rax],rdx
    b541:	48 8b 05 70 5f 00 00 	mov    rax,QWORD PTR [rip+0x5f70]        # 114b8 <rdx>
    b548:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    b54b:	48 8b 05 66 5f 00 00 	mov    rax,QWORD PTR [rip+0x5f66]        # 114b8 <rdx>
    b552:	48 83 ea 08          	sub    rdx,0x8
    b556:	48 89 10             	mov    QWORD PTR [rax],rdx
    b559:	48 8b 05 e0 5e 00 00 	mov    rax,QWORD PTR [rip+0x5ee0]        # 11440 <rax>
    b560:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b563:	48 89 c2             	mov    rdx,rax
    b566:	48 8b 05 d3 5e 00 00 	mov    rax,QWORD PTR [rip+0x5ed3]        # 11440 <rax>
    b56d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b570:	48 89 10             	mov    QWORD PTR [rax],rdx
    b573:	48 8b 05 c6 5e 00 00 	mov    rax,QWORD PTR [rip+0x5ec6]        # 11440 <rax>
    b57a:	48 8b 15 37 5f 00 00 	mov    rdx,QWORD PTR [rip+0x5f37]        # 114b8 <rdx>
    b581:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b584:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b587:	48 89 02             	mov    QWORD PTR [rdx],rax
    b58a:	e9 86 02 00 00       	jmp    b815 <fib_switch+0x40d8>
    b58f:	90                   	nop
    b590:	48 8b 15 d9 60 00 00 	mov    rdx,QWORD PTR [rip+0x60d9]        # 11670 <s_bss>
    b597:	48 8b 05 a2 5e 00 00 	mov    rax,QWORD PTR [rip+0x5ea2]        # 11440 <rax>
    b59e:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b5a2:	48 89 10             	mov    QWORD PTR [rax],rdx
    b5a5:	48 8b 05 bc 5e 00 00 	mov    rax,QWORD PTR [rip+0x5ebc]        # 11468 <rbx>
    b5ac:	48 be 45 57 32 c0 b3 	movabs rsi,0x40abcfb3c0325745
    b5b3:	cf ab 40 
    b5b6:	48 89 30             	mov    QWORD PTR [rax],rsi
    b5b9:	48 8b 05 a8 5e 00 00 	mov    rax,QWORD PTR [rip+0x5ea8]        # 11468 <rbx>
    b5c0:	48 8b 15 79 5e 00 00 	mov    rdx,QWORD PTR [rip+0x5e79]        # 11440 <rax>
    b5c7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b5ca:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b5cd:	48 89 02             	mov    QWORD PTR [rdx],rax
    b5d0:	48 8b 15 99 60 00 00 	mov    rdx,QWORD PTR [rip+0x6099]        # 11670 <s_bss>
    b5d7:	48 8b 05 62 5e 00 00 	mov    rax,QWORD PTR [rip+0x5e62]        # 11440 <rax>
    b5de:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b5e2:	48 89 10             	mov    QWORD PTR [rax],rdx
    b5e5:	48 8b 15 84 60 00 00 	mov    rdx,QWORD PTR [rip+0x6084]        # 11670 <s_bss>
    b5ec:	48 8b 05 c5 5e 00 00 	mov    rax,QWORD PTR [rip+0x5ec5]        # 114b8 <rdx>
    b5f3:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    b5fa:	48 89 10             	mov    QWORD PTR [rax],rdx
    b5fd:	48 8b 05 b4 5e 00 00 	mov    rax,QWORD PTR [rip+0x5eb4]        # 114b8 <rdx>
    b604:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b607:	48 89 c2             	mov    rdx,rax
    b60a:	48 8b 05 a7 5e 00 00 	mov    rax,QWORD PTR [rip+0x5ea7]        # 114b8 <rdx>
    b611:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b614:	48 89 10             	mov    QWORD PTR [rax],rdx
    b617:	48 8b 05 9a 5e 00 00 	mov    rax,QWORD PTR [rip+0x5e9a]        # 114b8 <rdx>
    b61e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    b621:	48 8b 05 90 5e 00 00 	mov    rax,QWORD PTR [rip+0x5e90]        # 114b8 <rdx>
    b628:	48 83 ea 08          	sub    rdx,0x8
    b62c:	48 89 10             	mov    QWORD PTR [rax],rdx
    b62f:	48 8b 05 0a 5e 00 00 	mov    rax,QWORD PTR [rip+0x5e0a]        # 11440 <rax>
    b636:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b639:	48 89 c2             	mov    rdx,rax
    b63c:	48 8b 05 fd 5d 00 00 	mov    rax,QWORD PTR [rip+0x5dfd]        # 11440 <rax>
    b643:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b646:	48 89 10             	mov    QWORD PTR [rax],rdx
    b649:	48 8b 05 f0 5d 00 00 	mov    rax,QWORD PTR [rip+0x5df0]        # 11440 <rax>
    b650:	48 8b 15 61 5e 00 00 	mov    rdx,QWORD PTR [rip+0x5e61]        # 114b8 <rdx>
    b657:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b65a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b65d:	48 89 02             	mov    QWORD PTR [rdx],rax
    b660:	e9 b0 01 00 00       	jmp    b815 <fib_switch+0x40d8>
    b665:	90                   	nop
    b666:	48 8b 15 03 60 00 00 	mov    rdx,QWORD PTR [rip+0x6003]        # 11670 <s_bss>
    b66d:	48 8b 05 cc 5d 00 00 	mov    rax,QWORD PTR [rip+0x5dcc]        # 11440 <rax>
    b674:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b678:	48 89 10             	mov    QWORD PTR [rax],rdx
    b67b:	48 8b 05 7e 5e 00 00 	mov    rax,QWORD PTR [rip+0x5e7e]        # 11500 <rdi>
    b682:	48 bf bd cf ec 61 8e 	movabs rdi,0x68a3dd8e61eccfbd
    b689:	dd a3 68 
    b68c:	48 89 38             	mov    QWORD PTR [rax],rdi
    b68f:	48 8b 05 6a 5e 00 00 	mov    rax,QWORD PTR [rip+0x5e6a]        # 11500 <rdi>
    b696:	48 8b 15 a3 5d 00 00 	mov    rdx,QWORD PTR [rip+0x5da3]        # 11440 <rax>
    b69d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b6a0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b6a3:	48 89 02             	mov    QWORD PTR [rdx],rax
    b6a6:	48 8b 15 c3 5f 00 00 	mov    rdx,QWORD PTR [rip+0x5fc3]        # 11670 <s_bss>
    b6ad:	48 8b 05 8c 5d 00 00 	mov    rax,QWORD PTR [rip+0x5d8c]        # 11440 <rax>
    b6b4:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b6b8:	48 89 10             	mov    QWORD PTR [rax],rdx
    b6bb:	48 8b 15 ae 5f 00 00 	mov    rdx,QWORD PTR [rip+0x5fae]        # 11670 <s_bss>
    b6c2:	48 8b 05 ef 5d 00 00 	mov    rax,QWORD PTR [rip+0x5def]        # 114b8 <rdx>
    b6c9:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    b6d0:	48 89 10             	mov    QWORD PTR [rax],rdx
    b6d3:	48 8b 05 de 5d 00 00 	mov    rax,QWORD PTR [rip+0x5dde]        # 114b8 <rdx>
    b6da:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b6dd:	48 89 c2             	mov    rdx,rax
    b6e0:	48 8b 05 d1 5d 00 00 	mov    rax,QWORD PTR [rip+0x5dd1]        # 114b8 <rdx>
    b6e7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b6ea:	48 89 10             	mov    QWORD PTR [rax],rdx
    b6ed:	48 8b 05 c4 5d 00 00 	mov    rax,QWORD PTR [rip+0x5dc4]        # 114b8 <rdx>
    b6f4:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    b6f7:	48 8b 05 ba 5d 00 00 	mov    rax,QWORD PTR [rip+0x5dba]        # 114b8 <rdx>
    b6fe:	48 83 ea 08          	sub    rdx,0x8
    b702:	48 89 10             	mov    QWORD PTR [rax],rdx
    b705:	48 8b 05 34 5d 00 00 	mov    rax,QWORD PTR [rip+0x5d34]        # 11440 <rax>
    b70c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b70f:	48 89 c2             	mov    rdx,rax
    b712:	48 8b 05 27 5d 00 00 	mov    rax,QWORD PTR [rip+0x5d27]        # 11440 <rax>
    b719:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b71c:	48 89 10             	mov    QWORD PTR [rax],rdx
    b71f:	48 8b 05 1a 5d 00 00 	mov    rax,QWORD PTR [rip+0x5d1a]        # 11440 <rax>
    b726:	48 8b 15 8b 5d 00 00 	mov    rdx,QWORD PTR [rip+0x5d8b]        # 114b8 <rdx>
    b72d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b730:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b733:	48 89 02             	mov    QWORD PTR [rdx],rax
    b736:	e9 da 00 00 00       	jmp    b815 <fib_switch+0x40d8>
    b73b:	90                   	nop
    b73c:	48 8b 15 2d 5f 00 00 	mov    rdx,QWORD PTR [rip+0x5f2d]        # 11670 <s_bss>
    b743:	48 8b 05 f6 5c 00 00 	mov    rax,QWORD PTR [rip+0x5cf6]        # 11440 <rax>
    b74a:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b74e:	48 89 10             	mov    QWORD PTR [rax],rdx
    b751:	48 8b 05 38 5d 00 00 	mov    rax,QWORD PTR [rip+0x5d38]        # 11490 <rcx>
    b758:	48 bb 02 27 1f 22 42 	movabs rbx,0xa94fad42221f2702
    b75f:	ad 4f a9 
    b762:	48 89 18             	mov    QWORD PTR [rax],rbx
    b765:	48 8b 05 24 5d 00 00 	mov    rax,QWORD PTR [rip+0x5d24]        # 11490 <rcx>
    b76c:	48 8b 15 cd 5c 00 00 	mov    rdx,QWORD PTR [rip+0x5ccd]        # 11440 <rax>
    b773:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b776:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b779:	48 89 02             	mov    QWORD PTR [rdx],rax
    b77c:	48 8b 15 ed 5e 00 00 	mov    rdx,QWORD PTR [rip+0x5eed]        # 11670 <s_bss>
    b783:	48 8b 05 b6 5c 00 00 	mov    rax,QWORD PTR [rip+0x5cb6]        # 11440 <rax>
    b78a:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b78e:	48 89 10             	mov    QWORD PTR [rax],rdx
    b791:	48 8b 15 d8 5e 00 00 	mov    rdx,QWORD PTR [rip+0x5ed8]        # 11670 <s_bss>
    b798:	48 8b 05 19 5d 00 00 	mov    rax,QWORD PTR [rip+0x5d19]        # 114b8 <rdx>
    b79f:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    b7a6:	48 89 10             	mov    QWORD PTR [rax],rdx
    b7a9:	48 8b 05 08 5d 00 00 	mov    rax,QWORD PTR [rip+0x5d08]        # 114b8 <rdx>
    b7b0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b7b3:	48 89 c2             	mov    rdx,rax
    b7b6:	48 8b 05 fb 5c 00 00 	mov    rax,QWORD PTR [rip+0x5cfb]        # 114b8 <rdx>
    b7bd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b7c0:	48 89 10             	mov    QWORD PTR [rax],rdx
    b7c3:	48 8b 05 ee 5c 00 00 	mov    rax,QWORD PTR [rip+0x5cee]        # 114b8 <rdx>
    b7ca:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    b7cd:	48 8b 05 e4 5c 00 00 	mov    rax,QWORD PTR [rip+0x5ce4]        # 114b8 <rdx>
    b7d4:	48 83 ea 08          	sub    rdx,0x8
    b7d8:	48 89 10             	mov    QWORD PTR [rax],rdx
    b7db:	48 8b 05 5e 5c 00 00 	mov    rax,QWORD PTR [rip+0x5c5e]        # 11440 <rax>
    b7e2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b7e5:	48 89 c2             	mov    rdx,rax
    b7e8:	48 8b 05 51 5c 00 00 	mov    rax,QWORD PTR [rip+0x5c51]        # 11440 <rax>
    b7ef:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b7f2:	48 89 10             	mov    QWORD PTR [rax],rdx
    b7f5:	48 8b 05 44 5c 00 00 	mov    rax,QWORD PTR [rip+0x5c44]        # 11440 <rax>
    b7fc:	48 8b 15 b5 5c 00 00 	mov    rdx,QWORD PTR [rip+0x5cb5]        # 114b8 <rdx>
    b803:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b806:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b809:	48 89 02             	mov    QWORD PTR [rdx],rax
    b80c:	eb 07                	jmp    b815 <fib_switch+0x40d8>
    b80e:	90                   	nop
    b80f:	eb 04                	jmp    b815 <fib_switch+0x40d8>
    b811:	90                   	nop
    b812:	eb 01                	jmp    b815 <fib_switch+0x40d8>
    b814:	90                   	nop
    b815:	48 8b 15 54 5e 00 00 	mov    rdx,QWORD PTR [rip+0x5e54]        # 11670 <s_bss>
    b81c:	48 8b 05 1d 5c 00 00 	mov    rax,QWORD PTR [rip+0x5c1d]        # 11440 <rax>
    b823:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    b82a:	48 89 10             	mov    QWORD PTR [rax],rdx
    b82d:	48 8b 05 0c 5c 00 00 	mov    rax,QWORD PTR [rip+0x5c0c]        # 11440 <rax>
    b834:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b837:	48 89 c2             	mov    rdx,rax
    b83a:	48 8b 05 ff 5b 00 00 	mov    rax,QWORD PTR [rip+0x5bff]        # 11440 <rax>
    b841:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b844:	48 89 10             	mov    QWORD PTR [rax],rdx
    b847:	48 8b 05 f2 5b 00 00 	mov    rax,QWORD PTR [rip+0x5bf2]        # 11440 <rax>
    b84e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    b851:	48 8b 05 e8 5b 00 00 	mov    rax,QWORD PTR [rip+0x5be8]        # 11440 <rax>
    b858:	48 83 ea 08          	sub    rdx,0x8
    b85c:	48 89 10             	mov    QWORD PTR [rax],rdx
    b85f:	48 8b 15 da 5b 00 00 	mov    rdx,QWORD PTR [rip+0x5bda]        # 11440 <rax>
    b866:	48 8b 05 4b 5c 00 00 	mov    rax,QWORD PTR [rip+0x5c4b]        # 114b8 <rdx>
    b86d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b870:	48 89 10             	mov    QWORD PTR [rax],rdx
    b873:	48 8b 15 f6 5d 00 00 	mov    rdx,QWORD PTR [rip+0x5df6]        # 11670 <s_bss>
    b87a:	48 8b 05 bf 5b 00 00 	mov    rax,QWORD PTR [rip+0x5bbf]        # 11440 <rax>
    b881:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    b885:	48 89 10             	mov    QWORD PTR [rax],rdx
    b888:	48 8b 05 29 5c 00 00 	mov    rax,QWORD PTR [rip+0x5c29]        # 114b8 <rdx>
    b88f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b892:	48 89 c2             	mov    rdx,rax
    b895:	48 8b 05 1c 5c 00 00 	mov    rax,QWORD PTR [rip+0x5c1c]        # 114b8 <rdx>
    b89c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b89f:	48 89 10             	mov    QWORD PTR [rax],rdx
    b8a2:	48 8b 05 0f 5c 00 00 	mov    rax,QWORD PTR [rip+0x5c0f]        # 114b8 <rdx>
    b8a9:	48 8b 15 90 5b 00 00 	mov    rdx,QWORD PTR [rip+0x5b90]        # 11440 <rax>
    b8b0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b8b3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b8b6:	48 89 02             	mov    QWORD PTR [rdx],rax
    b8b9:	48 8b 15 b0 5d 00 00 	mov    rdx,QWORD PTR [rip+0x5db0]        # 11670 <s_bss>
    b8c0:	48 8b 05 a1 5b 00 00 	mov    rax,QWORD PTR [rip+0x5ba1]        # 11468 <rbx>
    b8c7:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    b8ce:	48 89 10             	mov    QWORD PTR [rax],rdx
    b8d1:	e8 d2 6d ff ff       	call   26a8 <pop_u64_>
    b8d6:	48 8b 05 63 5b 00 00 	mov    rax,QWORD PTR [rip+0x5b63]        # 11440 <rax>
    b8dd:	48 8b 15 84 5b 00 00 	mov    rdx,QWORD PTR [rip+0x5b84]        # 11468 <rbx>
    b8e4:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b8e7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b8ea:	48 89 02             	mov    QWORD PTR [rdx],rax
    b8ed:	48 8b 05 2c 5c 00 00 	mov    rax,QWORD PTR [rip+0x5c2c]        # 11520 <rbp>
    b8f4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b8f7:	48 83 e8 08          	sub    rax,0x8
    b8fb:	48 89 c2             	mov    rdx,rax
    b8fe:	48 8b 05 63 5b 00 00 	mov    rax,QWORD PTR [rip+0x5b63]        # 11468 <rbx>
    b905:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b908:	48 89 10             	mov    QWORD PTR [rax],rdx
    b90b:	48 8b 15 0e 5c 00 00 	mov    rdx,QWORD PTR [rip+0x5c0e]        # 11520 <rbp>
    b912:	48 8b 05 27 5c 00 00 	mov    rax,QWORD PTR [rip+0x5c27]        # 11540 <rsp>
    b919:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b91c:	48 89 10             	mov    QWORD PTR [rax],rdx
    b91f:	48 8b 1d fa 5b 00 00 	mov    rbx,QWORD PTR [rip+0x5bfa]        # 11520 <rbp>
    b926:	e8 0f 5d ff ff       	call   163a <pop_u64>
    b92b:	48 89 03             	mov    QWORD PTR [rbx],rax
    b92e:	90                   	nop
    b92f:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    b933:	c9                   	leave  
    b934:	c3                   	ret    

000000000000b935 <main__>:
    b935:	f3 0f 1e fa          	endbr64 
    b939:	55                   	push   rbp
    b93a:	48 89 e5             	mov    rbp,rsp
    b93d:	53                   	push   rbx
    b93e:	48 83 ec 08          	sub    rsp,0x8
    b942:	48 8b 05 d7 5b 00 00 	mov    rax,QWORD PTR [rip+0x5bd7]        # 11520 <rbp>
    b949:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b94c:	48 89 c7             	mov    rdi,rax
    b94f:	e8 af 5c ff ff       	call   1603 <push_u64>
    b954:	48 8b 15 e5 5b 00 00 	mov    rdx,QWORD PTR [rip+0x5be5]        # 11540 <rsp>
    b95b:	48 8b 05 be 5b 00 00 	mov    rax,QWORD PTR [rip+0x5bbe]        # 11520 <rbp>
    b962:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b965:	48 89 10             	mov    QWORD PTR [rax],rdx
    b968:	48 8b 05 f9 5a 00 00 	mov    rax,QWORD PTR [rip+0x5af9]        # 11468 <rbx>
    b96f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b972:	48 89 c7             	mov    rdi,rax
    b975:	e8 89 5c ff ff       	call   1603 <push_u64>
    b97a:	48 8b 05 bf 5b 00 00 	mov    rax,QWORD PTR [rip+0x5bbf]        # 11540 <rsp>
    b981:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    b984:	48 8b 05 b5 5b 00 00 	mov    rax,QWORD PTR [rip+0x5bb5]        # 11540 <rsp>
    b98b:	48 83 ea 08          	sub    rdx,0x8
    b98f:	48 89 10             	mov    QWORD PTR [rax],rdx
    b992:	48 8b 15 d7 5c 00 00 	mov    rdx,QWORD PTR [rip+0x5cd7]        # 11670 <s_bss>
    b999:	48 8b 05 a0 5a 00 00 	mov    rax,QWORD PTR [rip+0x5aa0]        # 11440 <rax>
    b9a0:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    b9a7:	48 89 10             	mov    QWORD PTR [rax],rdx
    b9aa:	48 8b 05 8f 5a 00 00 	mov    rax,QWORD PTR [rip+0x5a8f]        # 11440 <rax>
    b9b1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    b9b4:	48 89 c2             	mov    rdx,rax
    b9b7:	48 8b 05 82 5a 00 00 	mov    rax,QWORD PTR [rip+0x5a82]        # 11440 <rax>
    b9be:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b9c1:	48 89 10             	mov    QWORD PTR [rax],rdx
    b9c4:	48 8b 15 75 5a 00 00 	mov    rdx,QWORD PTR [rip+0x5a75]        # 11440 <rax>
    b9cb:	48 8b 05 2e 5b 00 00 	mov    rax,QWORD PTR [rip+0x5b2e]        # 11500 <rdi>
    b9d2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    b9d5:	48 89 10             	mov    QWORD PTR [rax],rdx
    b9d8:	e8 77 6b ff ff       	call   2554 <push_u64_>
    b9dd:	48 8b 15 8c 5c 00 00 	mov    rdx,QWORD PTR [rip+0x5c8c]        # 11670 <s_bss>
    b9e4:	48 8b 05 cd 5a 00 00 	mov    rax,QWORD PTR [rip+0x5acd]        # 114b8 <rdx>
    b9eb:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    b9f2:	48 89 10             	mov    QWORD PTR [rax],rdx
    b9f5:	48 8b 15 74 5c 00 00 	mov    rdx,QWORD PTR [rip+0x5c74]        # 11670 <s_bss>
    b9fc:	48 8b 05 3d 5a 00 00 	mov    rax,QWORD PTR [rip+0x5a3d]        # 11440 <rax>
    ba03:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    ba0a:	48 89 10             	mov    QWORD PTR [rax],rdx
    ba0d:	48 8b 05 a4 5a 00 00 	mov    rax,QWORD PTR [rip+0x5aa4]        # 114b8 <rdx>
    ba14:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ba17:	48 89 c2             	mov    rdx,rax
    ba1a:	48 8b 05 97 5a 00 00 	mov    rax,QWORD PTR [rip+0x5a97]        # 114b8 <rdx>
    ba21:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ba24:	48 89 10             	mov    QWORD PTR [rax],rdx
    ba27:	48 8b 05 8a 5a 00 00 	mov    rax,QWORD PTR [rip+0x5a8a]        # 114b8 <rdx>
    ba2e:	48 8b 15 0b 5a 00 00 	mov    rdx,QWORD PTR [rip+0x5a0b]        # 11440 <rax>
    ba35:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ba38:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ba3b:	48 89 02             	mov    QWORD PTR [rdx],rax
    ba3e:	48 8b 15 2b 5c 00 00 	mov    rdx,QWORD PTR [rip+0x5c2b]        # 11670 <s_bss>
    ba45:	48 8b 05 f4 59 00 00 	mov    rax,QWORD PTR [rip+0x59f4]        # 11440 <rax>
    ba4c:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    ba53:	48 89 10             	mov    QWORD PTR [rax],rdx
    ba56:	48 8b 05 e3 59 00 00 	mov    rax,QWORD PTR [rip+0x59e3]        # 11440 <rax>
    ba5d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ba60:	48 89 c2             	mov    rdx,rax
    ba63:	48 8b 05 4e 5a 00 00 	mov    rax,QWORD PTR [rip+0x5a4e]        # 114b8 <rdx>
    ba6a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ba6d:	48 89 10             	mov    QWORD PTR [rax],rdx
    ba70:	48 8b 15 f9 5b 00 00 	mov    rdx,QWORD PTR [rip+0x5bf9]        # 11670 <s_bss>
    ba77:	48 8b 05 c2 59 00 00 	mov    rax,QWORD PTR [rip+0x59c2]        # 11440 <rax>
    ba7e:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    ba85:	48 89 10             	mov    QWORD PTR [rax],rdx
    ba88:	48 8b 05 29 5a 00 00 	mov    rax,QWORD PTR [rip+0x5a29]        # 114b8 <rdx>
    ba8f:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    ba92:	48 8b 05 1f 5a 00 00 	mov    rax,QWORD PTR [rip+0x5a1f]        # 114b8 <rdx>
    ba99:	48 83 ea 20          	sub    rdx,0x20
    ba9d:	48 89 10             	mov    QWORD PTR [rax],rdx
    baa0:	48 8b 05 11 5a 00 00 	mov    rax,QWORD PTR [rip+0x5a11]        # 114b8 <rdx>
    baa7:	48 8b 15 92 59 00 00 	mov    rdx,QWORD PTR [rip+0x5992]        # 11440 <rax>
    baae:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bab1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bab4:	48 89 02             	mov    QWORD PTR [rdx],rax
    bab7:	48 8b 15 b2 5b 00 00 	mov    rdx,QWORD PTR [rip+0x5bb2]        # 11670 <s_bss>
    babe:	48 8b 05 7b 59 00 00 	mov    rax,QWORD PTR [rip+0x597b]        # 11440 <rax>
    bac5:	48 8b 92 e8 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe8]
    bacc:	48 89 10             	mov    QWORD PTR [rax],rdx
    bacf:	48 8b 05 6a 59 00 00 	mov    rax,QWORD PTR [rip+0x596a]        # 11440 <rax>
    bad6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bad9:	48 89 c2             	mov    rdx,rax
    badc:	48 8b 05 d5 59 00 00 	mov    rax,QWORD PTR [rip+0x59d5]        # 114b8 <rdx>
    bae3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bae6:	48 89 10             	mov    QWORD PTR [rax],rdx
    bae9:	48 8b 15 80 5b 00 00 	mov    rdx,QWORD PTR [rip+0x5b80]        # 11670 <s_bss>
    baf0:	48 8b 05 49 59 00 00 	mov    rax,QWORD PTR [rip+0x5949]        # 11440 <rax>
    baf7:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    bafe:	48 89 10             	mov    QWORD PTR [rax],rdx
    bb01:	48 8b 05 38 59 00 00 	mov    rax,QWORD PTR [rip+0x5938]        # 11440 <rax>
    bb08:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bb0b:	48 89 c2             	mov    rdx,rax
    bb0e:	48 8b 05 2b 59 00 00 	mov    rax,QWORD PTR [rip+0x592b]        # 11440 <rax>
    bb15:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bb18:	48 89 10             	mov    QWORD PTR [rax],rdx
    bb1b:	48 8b 05 1e 59 00 00 	mov    rax,QWORD PTR [rip+0x591e]        # 11440 <rax>
    bb22:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    bb25:	48 8b 05 14 59 00 00 	mov    rax,QWORD PTR [rip+0x5914]        # 11440 <rax>
    bb2c:	48 83 ea 14          	sub    rdx,0x14
    bb30:	48 89 10             	mov    QWORD PTR [rax],rdx
    bb33:	48 8b 05 86 59 00 00 	mov    rax,QWORD PTR [rip+0x5986]        # 114c0 <edx>
    bb3a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    bb3d:	48 8b 05 fc 58 00 00 	mov    rax,QWORD PTR [rip+0x58fc]        # 11440 <rax>
    bb44:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bb47:	89 10                	mov    DWORD PTR [rax],edx
    bb49:	48 8b 15 20 5b 00 00 	mov    rdx,QWORD PTR [rip+0x5b20]        # 11670 <s_bss>
    bb50:	48 8b 05 e9 58 00 00 	mov    rax,QWORD PTR [rip+0x58e9]        # 11440 <rax>
    bb57:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    bb5e:	48 89 10             	mov    QWORD PTR [rax],rdx
    bb61:	48 8b 15 08 5b 00 00 	mov    rdx,QWORD PTR [rip+0x5b08]        # 11670 <s_bss>
    bb68:	48 8b 05 49 59 00 00 	mov    rax,QWORD PTR [rip+0x5949]        # 114b8 <rdx>
    bb6f:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    bb76:	48 89 10             	mov    QWORD PTR [rax],rdx
    bb79:	48 8b 05 38 59 00 00 	mov    rax,QWORD PTR [rip+0x5938]        # 114b8 <rdx>
    bb80:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bb83:	48 89 c2             	mov    rdx,rax
    bb86:	48 8b 05 2b 59 00 00 	mov    rax,QWORD PTR [rip+0x592b]        # 114b8 <rdx>
    bb8d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bb90:	48 89 10             	mov    QWORD PTR [rax],rdx
    bb93:	48 8b 05 1e 59 00 00 	mov    rax,QWORD PTR [rip+0x591e]        # 114b8 <rdx>
    bb9a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    bb9d:	48 8b 05 14 59 00 00 	mov    rax,QWORD PTR [rip+0x5914]        # 114b8 <rdx>
    bba4:	48 83 ea 20          	sub    rdx,0x20
    bba8:	48 89 10             	mov    QWORD PTR [rax],rdx
    bbab:	48 8b 05 8e 58 00 00 	mov    rax,QWORD PTR [rip+0x588e]        # 11440 <rax>
    bbb2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bbb5:	48 89 c2             	mov    rdx,rax
    bbb8:	48 8b 05 81 58 00 00 	mov    rax,QWORD PTR [rip+0x5881]        # 11440 <rax>
    bbbf:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bbc2:	48 89 10             	mov    QWORD PTR [rax],rdx
    bbc5:	48 8b 05 74 58 00 00 	mov    rax,QWORD PTR [rip+0x5874]        # 11440 <rax>
    bbcc:	48 8b 15 e5 58 00 00 	mov    rdx,QWORD PTR [rip+0x58e5]        # 114b8 <rdx>
    bbd3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bbd6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bbd9:	48 89 02             	mov    QWORD PTR [rdx],rax
    bbdc:	48 8b 15 8d 5a 00 00 	mov    rdx,QWORD PTR [rip+0x5a8d]        # 11670 <s_bss>
    bbe3:	48 8b 05 56 58 00 00 	mov    rax,QWORD PTR [rip+0x5856]        # 11440 <rax>
    bbea:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    bbee:	48 89 10             	mov    QWORD PTR [rax],rdx
    bbf1:	48 8b 05 48 58 00 00 	mov    rax,QWORD PTR [rip+0x5848]        # 11440 <rax>
    bbf8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bbfb:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    bc02:	48 8b 15 67 5a 00 00 	mov    rdx,QWORD PTR [rip+0x5a67]        # 11670 <s_bss>
    bc09:	48 8b 05 30 58 00 00 	mov    rax,QWORD PTR [rip+0x5830]        # 11440 <rax>
    bc10:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    bc17:	48 89 10             	mov    QWORD PTR [rax],rdx
    bc1a:	48 8b 05 1f 58 00 00 	mov    rax,QWORD PTR [rip+0x581f]        # 11440 <rax>
    bc21:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bc24:	48 89 c2             	mov    rdx,rax
    bc27:	48 8b 05 12 58 00 00 	mov    rax,QWORD PTR [rip+0x5812]        # 11440 <rax>
    bc2e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bc31:	48 89 10             	mov    QWORD PTR [rax],rdx
    bc34:	48 8b 05 05 58 00 00 	mov    rax,QWORD PTR [rip+0x5805]        # 11440 <rax>
    bc3b:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    bc3e:	48 8b 05 fb 57 00 00 	mov    rax,QWORD PTR [rip+0x57fb]        # 11440 <rax>
    bc45:	48 83 ea 14          	sub    rdx,0x14
    bc49:	48 89 10             	mov    QWORD PTR [rax],rdx
    bc4c:	48 8b 05 ed 57 00 00 	mov    rax,QWORD PTR [rip+0x57ed]        # 11440 <rax>
    bc53:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bc56:	8b 10                	mov    edx,DWORD PTR [rax]
    bc58:	48 8b 05 e9 57 00 00 	mov    rax,QWORD PTR [rip+0x57e9]        # 11448 <eax>
    bc5f:	89 d2                	mov    edx,edx
    bc61:	48 89 10             	mov    QWORD PTR [rax],rdx
    bc64:	48 8b 05 dd 57 00 00 	mov    rax,QWORD PTR [rip+0x57dd]        # 11448 <eax>
    bc6b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bc6e:	48 83 f8 02          	cmp    rax,0x2
    bc72:	0f 84 56 03 00 00    	je     bfce <main__+0x699>
    bc78:	48 8b 15 a1 57 00 00 	mov    rdx,QWORD PTR [rip+0x57a1]        # 11420 <stderr@GLIBC_2.2.5>
    bc7f:	48 8b 05 32 58 00 00 	mov    rax,QWORD PTR [rip+0x5832]        # 114b8 <rdx>
    bc86:	48 89 10             	mov    QWORD PTR [rax],rdx
    bc89:	48 8b 15 e0 59 00 00 	mov    rdx,QWORD PTR [rip+0x59e0]        # 11670 <s_bss>
    bc90:	48 8b 05 a9 57 00 00 	mov    rax,QWORD PTR [rip+0x57a9]        # 11440 <rax>
    bc97:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    bc9b:	48 89 10             	mov    QWORD PTR [rax],rdx
    bc9e:	48 8b 05 13 58 00 00 	mov    rax,QWORD PTR [rip+0x5813]        # 114b8 <rdx>
    bca5:	48 8b 15 94 57 00 00 	mov    rdx,QWORD PTR [rip+0x5794]        # 11440 <rax>
    bcac:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bcaf:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bcb2:	48 89 02             	mov    QWORD PTR [rdx],rax
    bcb5:	48 8b 15 b4 59 00 00 	mov    rdx,QWORD PTR [rip+0x59b4]        # 11670 <s_bss>
    bcbc:	48 8b 05 f5 57 00 00 	mov    rax,QWORD PTR [rip+0x57f5]        # 114b8 <rdx>
    bcc3:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    bcc7:	48 89 10             	mov    QWORD PTR [rax],rdx
    bcca:	48 8b 15 9f 59 00 00 	mov    rdx,QWORD PTR [rip+0x599f]        # 11670 <s_bss>
    bcd1:	48 8b 05 68 57 00 00 	mov    rax,QWORD PTR [rip+0x5768]        # 11440 <rax>
    bcd8:	48 8b 52 70          	mov    rdx,QWORD PTR [rdx+0x70]
    bcdc:	48 89 10             	mov    QWORD PTR [rax],rdx
    bcdf:	48 8b 05 d2 57 00 00 	mov    rax,QWORD PTR [rip+0x57d2]        # 114b8 <rdx>
    bce6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bce9:	48 89 c2             	mov    rdx,rax
    bcec:	48 8b 05 c5 57 00 00 	mov    rax,QWORD PTR [rip+0x57c5]        # 114b8 <rdx>
    bcf3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bcf6:	48 89 10             	mov    QWORD PTR [rax],rdx
    bcf9:	48 8b 05 b8 57 00 00 	mov    rax,QWORD PTR [rip+0x57b8]        # 114b8 <rdx>
    bd00:	48 8b 15 39 57 00 00 	mov    rdx,QWORD PTR [rip+0x5739]        # 11440 <rax>
    bd07:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bd0a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bd0d:	48 89 02             	mov    QWORD PTR [rdx],rax
    bd10:	48 8b 15 59 59 00 00 	mov    rdx,QWORD PTR [rip+0x5959]        # 11670 <s_bss>
    bd17:	48 8b 05 22 57 00 00 	mov    rax,QWORD PTR [rip+0x5722]        # 11440 <rax>
    bd1e:	48 8b 92 a0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xa0]
    bd25:	48 89 10             	mov    QWORD PTR [rax],rdx
    bd28:	48 8b 05 11 57 00 00 	mov    rax,QWORD PTR [rip+0x5711]        # 11440 <rax>
    bd2f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bd32:	48 c7 00 0f 00 00 00 	mov    QWORD PTR [rax],0xf
    bd39:	48 8b 15 30 59 00 00 	mov    rdx,QWORD PTR [rip+0x5930]        # 11670 <s_bss>
    bd40:	48 8b 05 f9 56 00 00 	mov    rax,QWORD PTR [rip+0x56f9]        # 11440 <rax>
    bd47:	48 8b 92 c8 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc8]
    bd4e:	48 89 10             	mov    QWORD PTR [rax],rdx
    bd51:	48 8b 05 e8 56 00 00 	mov    rax,QWORD PTR [rip+0x56e8]        # 11440 <rax>
    bd58:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bd5b:	48 c7 00 01 00 00 00 	mov    QWORD PTR [rax],0x1
    bd62:	48 8b 15 07 59 00 00 	mov    rdx,QWORD PTR [rip+0x5907]        # 11670 <s_bss>
    bd69:	48 8b 05 d0 56 00 00 	mov    rax,QWORD PTR [rip+0x56d0]        # 11440 <rax>
    bd70:	48 8b 92 40 02 00 00 	mov    rdx,QWORD PTR [rdx+0x240]
    bd77:	48 89 10             	mov    QWORD PTR [rax],rdx
    bd7a:	48 8b 05 bf 56 00 00 	mov    rax,QWORD PTR [rip+0x56bf]        # 11440 <rax>
    bd81:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    bd84:	48 8b 05 2d 57 00 00 	mov    rax,QWORD PTR [rip+0x572d]        # 114b8 <rdx>
    bd8b:	48 81 c2 98 01 00 00 	add    rdx,0x198
    bd92:	48 89 10             	mov    QWORD PTR [rax],rdx
    bd95:	48 8b 15 d4 58 00 00 	mov    rdx,QWORD PTR [rip+0x58d4]        # 11670 <s_bss>
    bd9c:	48 8b 05 9d 56 00 00 	mov    rax,QWORD PTR [rip+0x569d]        # 11440 <rax>
    bda3:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    bda7:	48 89 10             	mov    QWORD PTR [rax],rdx
    bdaa:	48 8b 05 07 57 00 00 	mov    rax,QWORD PTR [rip+0x5707]        # 114b8 <rdx>
    bdb1:	48 8b 15 88 56 00 00 	mov    rdx,QWORD PTR [rip+0x5688]        # 11440 <rax>
    bdb8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bdbb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bdbe:	48 89 02             	mov    QWORD PTR [rdx],rax
    bdc1:	48 8b 15 a8 58 00 00 	mov    rdx,QWORD PTR [rip+0x58a8]        # 11670 <s_bss>
    bdc8:	48 8b 05 e9 56 00 00 	mov    rax,QWORD PTR [rip+0x56e9]        # 114b8 <rdx>
    bdcf:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    bdd3:	48 89 10             	mov    QWORD PTR [rax],rdx
    bdd6:	48 8b 15 93 58 00 00 	mov    rdx,QWORD PTR [rip+0x5893]        # 11670 <s_bss>
    bddd:	48 8b 05 5c 56 00 00 	mov    rax,QWORD PTR [rip+0x565c]        # 11440 <rax>
    bde4:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    bdeb:	48 89 10             	mov    QWORD PTR [rax],rdx
    bdee:	48 8b 05 c3 56 00 00 	mov    rax,QWORD PTR [rip+0x56c3]        # 114b8 <rdx>
    bdf5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bdf8:	48 89 c2             	mov    rdx,rax
    bdfb:	48 8b 05 b6 56 00 00 	mov    rax,QWORD PTR [rip+0x56b6]        # 114b8 <rdx>
    be02:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    be05:	48 89 10             	mov    QWORD PTR [rax],rdx
    be08:	48 8b 05 a9 56 00 00 	mov    rax,QWORD PTR [rip+0x56a9]        # 114b8 <rdx>
    be0f:	48 8b 15 2a 56 00 00 	mov    rdx,QWORD PTR [rip+0x562a]        # 11440 <rax>
    be16:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    be19:	48 8b 00             	mov    rax,QWORD PTR [rax]
    be1c:	48 89 02             	mov    QWORD PTR [rdx],rax
    be1f:	48 8b 15 4a 58 00 00 	mov    rdx,QWORD PTR [rip+0x584a]        # 11670 <s_bss>
    be26:	48 8b 05 13 56 00 00 	mov    rax,QWORD PTR [rip+0x5613]        # 11440 <rax>
    be2d:	48 8b 52 70          	mov    rdx,QWORD PTR [rdx+0x70]
    be31:	48 89 10             	mov    QWORD PTR [rax],rdx
    be34:	48 8b 05 05 56 00 00 	mov    rax,QWORD PTR [rip+0x5605]        # 11440 <rax>
    be3b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    be3e:	48 89 c2             	mov    rdx,rax
    be41:	48 8b 05 f8 55 00 00 	mov    rax,QWORD PTR [rip+0x55f8]        # 11440 <rax>
    be48:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    be4b:	48 89 10             	mov    QWORD PTR [rax],rdx
    be4e:	48 8b 15 eb 55 00 00 	mov    rdx,QWORD PTR [rip+0x55eb]        # 11440 <rax>
    be55:	48 8b 05 84 56 00 00 	mov    rax,QWORD PTR [rip+0x5684]        # 114e0 <rsi>
    be5c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    be5f:	48 89 10             	mov    QWORD PTR [rax],rdx
    be62:	48 8b 15 07 58 00 00 	mov    rdx,QWORD PTR [rip+0x5807]        # 11670 <s_bss>
    be69:	48 8b 05 d0 55 00 00 	mov    rax,QWORD PTR [rip+0x55d0]        # 11440 <rax>
    be70:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    be77:	48 89 10             	mov    QWORD PTR [rax],rdx
    be7a:	48 8b 05 bf 55 00 00 	mov    rax,QWORD PTR [rip+0x55bf]        # 11440 <rax>
    be81:	48 8b 00             	mov    rax,QWORD PTR [rax]
    be84:	48 89 c2             	mov    rdx,rax
    be87:	48 8b 05 2a 56 00 00 	mov    rax,QWORD PTR [rip+0x562a]        # 114b8 <rdx>
    be8e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    be91:	48 89 10             	mov    QWORD PTR [rax],rdx
    be94:	48 8b 15 d5 57 00 00 	mov    rdx,QWORD PTR [rip+0x57d5]        # 11670 <s_bss>
    be9b:	48 8b 05 9e 55 00 00 	mov    rax,QWORD PTR [rip+0x559e]        # 11440 <rax>
    bea2:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    bea9:	48 89 10             	mov    QWORD PTR [rax],rdx
    beac:	48 8b 05 8d 55 00 00 	mov    rax,QWORD PTR [rip+0x558d]        # 11440 <rax>
    beb3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    beb6:	48 89 c2             	mov    rdx,rax
    beb9:	48 8b 05 80 55 00 00 	mov    rax,QWORD PTR [rip+0x5580]        # 11440 <rax>
    bec0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bec3:	48 89 10             	mov    QWORD PTR [rax],rdx
    bec6:	48 8b 15 a3 57 00 00 	mov    rdx,QWORD PTR [rip+0x57a3]        # 11670 <s_bss>
    becd:	48 8b 05 bc 55 00 00 	mov    rax,QWORD PTR [rip+0x55bc]        # 11490 <rcx>
    bed4:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    bedb:	48 89 10             	mov    QWORD PTR [rax],rdx
    bede:	48 8b 05 ab 55 00 00 	mov    rax,QWORD PTR [rip+0x55ab]        # 11490 <rcx>
    bee5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bee8:	48 89 c2             	mov    rdx,rax
    beeb:	48 8b 05 9e 55 00 00 	mov    rax,QWORD PTR [rip+0x559e]        # 11490 <rcx>
    bef2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bef5:	48 89 10             	mov    QWORD PTR [rax],rdx
    bef8:	48 8b 15 91 55 00 00 	mov    rdx,QWORD PTR [rip+0x5591]        # 11490 <rcx>
    beff:	48 8b 05 fa 55 00 00 	mov    rax,QWORD PTR [rip+0x55fa]        # 11500 <rdi>
    bf06:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bf09:	48 89 10             	mov    QWORD PTR [rax],rdx
    bf0c:	48 8b 15 5d 57 00 00 	mov    rdx,QWORD PTR [rip+0x575d]        # 11670 <s_bss>
    bf13:	48 8b 05 4e 55 00 00 	mov    rax,QWORD PTR [rip+0x554e]        # 11468 <rbx>
    bf1a:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    bf1e:	48 89 10             	mov    QWORD PTR [rax],rdx
    bf21:	48 8b 15 b8 55 00 00 	mov    rdx,QWORD PTR [rip+0x55b8]        # 114e0 <rsi>
    bf28:	48 8b 05 61 55 00 00 	mov    rax,QWORD PTR [rip+0x5561]        # 11490 <rcx>
    bf2f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bf32:	48 89 10             	mov    QWORD PTR [rax],rdx
    bf35:	48 8b 15 04 55 00 00 	mov    rdx,QWORD PTR [rip+0x5504]        # 11440 <rax>
    bf3c:	48 8b 05 9d 55 00 00 	mov    rax,QWORD PTR [rip+0x559d]        # 114e0 <rsi>
    bf43:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bf46:	48 89 10             	mov    QWORD PTR [rax],rdx
    bf49:	48 8b 05 40 55 00 00 	mov    rax,QWORD PTR [rip+0x5540]        # 11490 <rcx>
    bf50:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bf53:	48 89 c6             	mov    rsi,rax
    bf56:	48 8b 05 5b 55 00 00 	mov    rax,QWORD PTR [rip+0x555b]        # 114b8 <rdx>
    bf5d:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    bf60:	48 8b 05 79 55 00 00 	mov    rax,QWORD PTR [rip+0x5579]        # 114e0 <rsi>
    bf67:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bf6a:	48 8b 0d 8f 55 00 00 	mov    rcx,QWORD PTR [rip+0x558f]        # 11500 <rdi>
    bf71:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
    bf74:	48 89 cf             	mov    rdi,rcx
    bf77:	48 8b 1d c2 54 00 00 	mov    rbx,QWORD PTR [rip+0x54c2]        # 11440 <rax>
    bf7e:	48 89 f1             	mov    rcx,rsi
    bf81:	48 89 c6             	mov    rsi,rax
    bf84:	e8 87 51 ff ff       	call   1110 <fwrite@plt>
    bf89:	48 89 03             	mov    QWORD PTR [rbx],rax
    bf8c:	48 8b 05 ad 54 00 00 	mov    rax,QWORD PTR [rip+0x54ad]        # 11440 <rax>
    bf93:	48 8b 15 ce 54 00 00 	mov    rdx,QWORD PTR [rip+0x54ce]        # 11468 <rbx>
    bf9a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bf9d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bfa0:	48 89 02             	mov    QWORD PTR [rdx],rax
    bfa3:	48 8b 15 c6 56 00 00 	mov    rdx,QWORD PTR [rip+0x56c6]        # 11670 <s_bss>
    bfaa:	48 8b 05 8f 54 00 00 	mov    rax,QWORD PTR [rip+0x548f]        # 11440 <rax>
    bfb1:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    bfb5:	48 89 10             	mov    QWORD PTR [rax],rdx
    bfb8:	48 8b 05 81 54 00 00 	mov    rax,QWORD PTR [rip+0x5481]        # 11440 <rax>
    bfbf:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bfc2:	48 c7 00 01 00 00 00 	mov    QWORD PTR [rax],0x1
    bfc9:	e9 4a 20 00 00       	jmp    e018 <main__+0x26e3>
    bfce:	90                   	nop
    bfcf:	48 8b 15 9a 56 00 00 	mov    rdx,QWORD PTR [rip+0x569a]        # 11670 <s_bss>
    bfd6:	48 8b 05 63 54 00 00 	mov    rax,QWORD PTR [rip+0x5463]        # 11440 <rax>
    bfdd:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    bfe4:	48 89 10             	mov    QWORD PTR [rax],rdx
    bfe7:	48 8b 05 52 54 00 00 	mov    rax,QWORD PTR [rip+0x5452]        # 11440 <rax>
    bfee:	48 8b 00             	mov    rax,QWORD PTR [rax]
    bff1:	48 89 c2             	mov    rdx,rax
    bff4:	48 8b 05 45 54 00 00 	mov    rax,QWORD PTR [rip+0x5445]        # 11440 <rax>
    bffb:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    bffe:	48 89 10             	mov    QWORD PTR [rax],rdx
    c001:	48 8b 05 38 54 00 00 	mov    rax,QWORD PTR [rip+0x5438]        # 11440 <rax>
    c008:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    c00b:	48 8b 05 2e 54 00 00 	mov    rax,QWORD PTR [rip+0x542e]        # 11440 <rax>
    c012:	48 83 ea 10          	sub    rdx,0x10
    c016:	48 89 10             	mov    QWORD PTR [rax],rdx
    c019:	48 8b 05 20 54 00 00 	mov    rax,QWORD PTR [rip+0x5420]        # 11440 <rax>
    c020:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c023:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    c02a:	48 8b 15 3f 56 00 00 	mov    rdx,QWORD PTR [rip+0x563f]        # 11670 <s_bss>
    c031:	48 8b 05 08 54 00 00 	mov    rax,QWORD PTR [rip+0x5408]        # 11440 <rax>
    c038:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    c03f:	48 89 10             	mov    QWORD PTR [rax],rdx
    c042:	48 8b 05 f7 53 00 00 	mov    rax,QWORD PTR [rip+0x53f7]        # 11440 <rax>
    c049:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c04c:	48 89 c2             	mov    rdx,rax
    c04f:	48 8b 05 ea 53 00 00 	mov    rax,QWORD PTR [rip+0x53ea]        # 11440 <rax>
    c056:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c059:	48 89 10             	mov    QWORD PTR [rax],rdx
    c05c:	48 8b 05 dd 53 00 00 	mov    rax,QWORD PTR [rip+0x53dd]        # 11440 <rax>
    c063:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    c066:	48 8b 05 d3 53 00 00 	mov    rax,QWORD PTR [rip+0x53d3]        # 11440 <rax>
    c06d:	48 83 ea 20          	sub    rdx,0x20
    c071:	48 89 10             	mov    QWORD PTR [rax],rdx
    c074:	48 8b 15 c5 53 00 00 	mov    rdx,QWORD PTR [rip+0x53c5]        # 11440 <rax>
    c07b:	48 8b 05 36 54 00 00 	mov    rax,QWORD PTR [rip+0x5436]        # 114b8 <rdx>
    c082:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c085:	48 89 10             	mov    QWORD PTR [rax],rdx
    c088:	48 8b 15 e1 55 00 00 	mov    rdx,QWORD PTR [rip+0x55e1]        # 11670 <s_bss>
    c08f:	48 8b 05 aa 53 00 00 	mov    rax,QWORD PTR [rip+0x53aa]        # 11440 <rax>
    c096:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    c09a:	48 89 10             	mov    QWORD PTR [rax],rdx
    c09d:	48 8b 05 14 54 00 00 	mov    rax,QWORD PTR [rip+0x5414]        # 114b8 <rdx>
    c0a4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c0a7:	48 89 c2             	mov    rdx,rax
    c0aa:	48 8b 05 07 54 00 00 	mov    rax,QWORD PTR [rip+0x5407]        # 114b8 <rdx>
    c0b1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c0b4:	48 89 10             	mov    QWORD PTR [rax],rdx
    c0b7:	48 8b 05 fa 53 00 00 	mov    rax,QWORD PTR [rip+0x53fa]        # 114b8 <rdx>
    c0be:	48 8b 15 7b 53 00 00 	mov    rdx,QWORD PTR [rip+0x537b]        # 11440 <rax>
    c0c5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c0c8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c0cb:	48 89 02             	mov    QWORD PTR [rdx],rax
    c0ce:	48 8b 15 9b 55 00 00 	mov    rdx,QWORD PTR [rip+0x559b]        # 11670 <s_bss>
    c0d5:	48 8b 05 64 53 00 00 	mov    rax,QWORD PTR [rip+0x5364]        # 11440 <rax>
    c0dc:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    c0e0:	48 89 10             	mov    QWORD PTR [rax],rdx
    c0e3:	48 8b 05 56 53 00 00 	mov    rax,QWORD PTR [rip+0x5356]        # 11440 <rax>
    c0ea:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c0ed:	48 89 c2             	mov    rdx,rax
    c0f0:	48 8b 05 c1 53 00 00 	mov    rax,QWORD PTR [rip+0x53c1]        # 114b8 <rdx>
    c0f7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c0fa:	48 89 10             	mov    QWORD PTR [rax],rdx
    c0fd:	48 8b 15 6c 55 00 00 	mov    rdx,QWORD PTR [rip+0x556c]        # 11670 <s_bss>
    c104:	48 8b 05 35 53 00 00 	mov    rax,QWORD PTR [rip+0x5335]        # 11440 <rax>
    c10b:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    c10f:	48 89 10             	mov    QWORD PTR [rax],rdx
    c112:	48 8b 05 9f 53 00 00 	mov    rax,QWORD PTR [rip+0x539f]        # 114b8 <rdx>
    c119:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    c11c:	48 8b 05 95 53 00 00 	mov    rax,QWORD PTR [rip+0x5395]        # 114b8 <rdx>
    c123:	48 83 c2 08          	add    rdx,0x8
    c127:	48 89 10             	mov    QWORD PTR [rax],rdx
    c12a:	48 8b 05 87 53 00 00 	mov    rax,QWORD PTR [rip+0x5387]        # 114b8 <rdx>
    c131:	48 8b 15 08 53 00 00 	mov    rdx,QWORD PTR [rip+0x5308]        # 11440 <rax>
    c138:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c13b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c13e:	48 89 02             	mov    QWORD PTR [rdx],rax
    c141:	48 8b 15 28 55 00 00 	mov    rdx,QWORD PTR [rip+0x5528]        # 11670 <s_bss>
    c148:	48 8b 05 f1 52 00 00 	mov    rax,QWORD PTR [rip+0x52f1]        # 11440 <rax>
    c14f:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    c153:	48 89 10             	mov    QWORD PTR [rax],rdx
    c156:	48 8b 05 e3 52 00 00 	mov    rax,QWORD PTR [rip+0x52e3]        # 11440 <rax>
    c15d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c160:	48 89 c2             	mov    rdx,rax
    c163:	48 8b 05 d6 52 00 00 	mov    rax,QWORD PTR [rip+0x52d6]        # 11440 <rax>
    c16a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c16d:	48 89 10             	mov    QWORD PTR [rax],rdx
    c170:	48 8b 15 c9 52 00 00 	mov    rdx,QWORD PTR [rip+0x52c9]        # 11440 <rax>
    c177:	48 8b 05 3a 53 00 00 	mov    rax,QWORD PTR [rip+0x533a]        # 114b8 <rdx>
    c17e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c181:	48 89 10             	mov    QWORD PTR [rax],rdx
    c184:	48 8b 15 e5 54 00 00 	mov    rdx,QWORD PTR [rip+0x54e5]        # 11670 <s_bss>
    c18b:	48 8b 05 ae 52 00 00 	mov    rax,QWORD PTR [rip+0x52ae]        # 11440 <rax>
    c192:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    c196:	48 89 10             	mov    QWORD PTR [rax],rdx
    c199:	48 8b 05 18 53 00 00 	mov    rax,QWORD PTR [rip+0x5318]        # 114b8 <rdx>
    c1a0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c1a3:	48 89 c2             	mov    rdx,rax
    c1a6:	48 8b 05 0b 53 00 00 	mov    rax,QWORD PTR [rip+0x530b]        # 114b8 <rdx>
    c1ad:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c1b0:	48 89 10             	mov    QWORD PTR [rax],rdx
    c1b3:	48 8b 05 fe 52 00 00 	mov    rax,QWORD PTR [rip+0x52fe]        # 114b8 <rdx>
    c1ba:	48 8b 15 7f 52 00 00 	mov    rdx,QWORD PTR [rip+0x527f]        # 11440 <rax>
    c1c1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c1c4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c1c7:	48 89 02             	mov    QWORD PTR [rdx],rax
    c1ca:	48 8b 15 9f 54 00 00 	mov    rdx,QWORD PTR [rip+0x549f]        # 11670 <s_bss>
    c1d1:	48 8b 05 68 52 00 00 	mov    rax,QWORD PTR [rip+0x5268]        # 11440 <rax>
    c1d8:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    c1df:	48 89 10             	mov    QWORD PTR [rax],rdx
    c1e2:	48 8b 05 57 52 00 00 	mov    rax,QWORD PTR [rip+0x5257]        # 11440 <rax>
    c1e9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c1ec:	48 89 c2             	mov    rdx,rax
    c1ef:	48 8b 05 c2 52 00 00 	mov    rax,QWORD PTR [rip+0x52c2]        # 114b8 <rdx>
    c1f6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c1f9:	48 89 10             	mov    QWORD PTR [rax],rdx
    c1fc:	48 8b 15 6d 54 00 00 	mov    rdx,QWORD PTR [rip+0x546d]        # 11670 <s_bss>
    c203:	48 8b 05 36 52 00 00 	mov    rax,QWORD PTR [rip+0x5236]        # 11440 <rax>
    c20a:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    c211:	48 89 10             	mov    QWORD PTR [rax],rdx
    c214:	48 8b 05 9d 52 00 00 	mov    rax,QWORD PTR [rip+0x529d]        # 114b8 <rdx>
    c21b:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    c21e:	48 8b 05 93 52 00 00 	mov    rax,QWORD PTR [rip+0x5293]        # 114b8 <rdx>
    c225:	48 83 ea 10          	sub    rdx,0x10
    c229:	48 89 10             	mov    QWORD PTR [rax],rdx
    c22c:	48 8b 05 85 52 00 00 	mov    rax,QWORD PTR [rip+0x5285]        # 114b8 <rdx>
    c233:	48 8b 15 06 52 00 00 	mov    rdx,QWORD PTR [rip+0x5206]        # 11440 <rax>
    c23a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c23d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c240:	48 89 02             	mov    QWORD PTR [rdx],rax
    c243:	48 8b 15 26 54 00 00 	mov    rdx,QWORD PTR [rip+0x5426]        # 11670 <s_bss>
    c24a:	48 8b 05 ef 51 00 00 	mov    rax,QWORD PTR [rip+0x51ef]        # 11440 <rax>
    c251:	48 8b 92 40 02 00 00 	mov    rdx,QWORD PTR [rdx+0x240]
    c258:	48 89 10             	mov    QWORD PTR [rax],rdx
    c25b:	48 8b 05 de 51 00 00 	mov    rax,QWORD PTR [rip+0x51de]        # 11440 <rax>
    c262:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    c265:	48 8b 05 4c 52 00 00 	mov    rax,QWORD PTR [rip+0x524c]        # 114b8 <rdx>
    c26c:	48 81 c2 a8 01 00 00 	add    rdx,0x1a8
    c273:	48 89 10             	mov    QWORD PTR [rax],rdx
    c276:	48 8b 15 f3 53 00 00 	mov    rdx,QWORD PTR [rip+0x53f3]        # 11670 <s_bss>
    c27d:	48 8b 05 bc 51 00 00 	mov    rax,QWORD PTR [rip+0x51bc]        # 11440 <rax>
    c284:	48 8b 52 70          	mov    rdx,QWORD PTR [rdx+0x70]
    c288:	48 89 10             	mov    QWORD PTR [rax],rdx
    c28b:	48 8b 05 26 52 00 00 	mov    rax,QWORD PTR [rip+0x5226]        # 114b8 <rdx>
    c292:	48 8b 15 a7 51 00 00 	mov    rdx,QWORD PTR [rip+0x51a7]        # 11440 <rax>
    c299:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c29c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c29f:	48 89 02             	mov    QWORD PTR [rdx],rax
    c2a2:	48 8b 15 c7 53 00 00 	mov    rdx,QWORD PTR [rip+0x53c7]        # 11670 <s_bss>
    c2a9:	48 8b 05 08 52 00 00 	mov    rax,QWORD PTR [rip+0x5208]        # 114b8 <rdx>
    c2b0:	48 8b 52 70          	mov    rdx,QWORD PTR [rdx+0x70]
    c2b4:	48 89 10             	mov    QWORD PTR [rax],rdx
    c2b7:	48 8b 15 b2 53 00 00 	mov    rdx,QWORD PTR [rip+0x53b2]        # 11670 <s_bss>
    c2be:	48 8b 05 7b 51 00 00 	mov    rax,QWORD PTR [rip+0x517b]        # 11440 <rax>
    c2c5:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    c2cc:	48 89 10             	mov    QWORD PTR [rax],rdx
    c2cf:	48 8b 05 e2 51 00 00 	mov    rax,QWORD PTR [rip+0x51e2]        # 114b8 <rdx>
    c2d6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c2d9:	48 89 c2             	mov    rdx,rax
    c2dc:	48 8b 05 d5 51 00 00 	mov    rax,QWORD PTR [rip+0x51d5]        # 114b8 <rdx>
    c2e3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c2e6:	48 89 10             	mov    QWORD PTR [rax],rdx
    c2e9:	48 8b 05 c8 51 00 00 	mov    rax,QWORD PTR [rip+0x51c8]        # 114b8 <rdx>
    c2f0:	48 8b 15 49 51 00 00 	mov    rdx,QWORD PTR [rip+0x5149]        # 11440 <rax>
    c2f7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c2fa:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c2fd:	48 89 02             	mov    QWORD PTR [rdx],rax
    c300:	48 8b 15 69 53 00 00 	mov    rdx,QWORD PTR [rip+0x5369]        # 11670 <s_bss>
    c307:	48 8b 05 aa 51 00 00 	mov    rax,QWORD PTR [rip+0x51aa]        # 114b8 <rdx>
    c30e:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    c312:	48 89 10             	mov    QWORD PTR [rax],rdx
    c315:	48 8b 15 54 53 00 00 	mov    rdx,QWORD PTR [rip+0x5354]        # 11670 <s_bss>
    c31c:	48 8b 05 1d 51 00 00 	mov    rax,QWORD PTR [rip+0x511d]        # 11440 <rax>
    c323:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    c32a:	48 89 10             	mov    QWORD PTR [rax],rdx
    c32d:	48 8b 05 84 51 00 00 	mov    rax,QWORD PTR [rip+0x5184]        # 114b8 <rdx>
    c334:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c337:	48 89 c2             	mov    rdx,rax
    c33a:	48 8b 05 77 51 00 00 	mov    rax,QWORD PTR [rip+0x5177]        # 114b8 <rdx>
    c341:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c344:	48 89 10             	mov    QWORD PTR [rax],rdx
    c347:	48 8b 05 6a 51 00 00 	mov    rax,QWORD PTR [rip+0x516a]        # 114b8 <rdx>
    c34e:	48 8b 15 eb 50 00 00 	mov    rdx,QWORD PTR [rip+0x50eb]        # 11440 <rax>
    c355:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c358:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c35b:	48 89 02             	mov    QWORD PTR [rdx],rax
    c35e:	48 8b 15 0b 53 00 00 	mov    rdx,QWORD PTR [rip+0x530b]        # 11670 <s_bss>
    c365:	48 8b 05 d4 50 00 00 	mov    rax,QWORD PTR [rip+0x50d4]        # 11440 <rax>
    c36c:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    c370:	48 89 10             	mov    QWORD PTR [rax],rdx
    c373:	48 8b 05 c6 50 00 00 	mov    rax,QWORD PTR [rip+0x50c6]        # 11440 <rax>
    c37a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c37d:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    c384:	48 8b 15 e5 52 00 00 	mov    rdx,QWORD PTR [rip+0x52e5]        # 11670 <s_bss>
    c38b:	48 8b 05 ae 50 00 00 	mov    rax,QWORD PTR [rip+0x50ae]        # 11440 <rax>
    c392:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    c399:	48 89 10             	mov    QWORD PTR [rax],rdx
    c39c:	48 8b 05 9d 50 00 00 	mov    rax,QWORD PTR [rip+0x509d]        # 11440 <rax>
    c3a3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c3a6:	48 89 c2             	mov    rdx,rax
    c3a9:	48 8b 05 90 50 00 00 	mov    rax,QWORD PTR [rip+0x5090]        # 11440 <rax>
    c3b0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c3b3:	48 89 10             	mov    QWORD PTR [rax],rdx
    c3b6:	48 8b 15 b3 52 00 00 	mov    rdx,QWORD PTR [rip+0x52b3]        # 11670 <s_bss>
    c3bd:	48 8b 05 f4 50 00 00 	mov    rax,QWORD PTR [rip+0x50f4]        # 114b8 <rdx>
    c3c4:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    c3cb:	48 89 10             	mov    QWORD PTR [rax],rdx
    c3ce:	48 8b 05 e3 50 00 00 	mov    rax,QWORD PTR [rip+0x50e3]        # 114b8 <rdx>
    c3d5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c3d8:	48 89 c2             	mov    rdx,rax
    c3db:	48 8b 05 d6 50 00 00 	mov    rax,QWORD PTR [rip+0x50d6]        # 114b8 <rdx>
    c3e2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c3e5:	48 89 10             	mov    QWORD PTR [rax],rdx
    c3e8:	48 8b 15 c9 50 00 00 	mov    rdx,QWORD PTR [rip+0x50c9]        # 114b8 <rdx>
    c3ef:	48 8b 05 ea 50 00 00 	mov    rax,QWORD PTR [rip+0x50ea]        # 114e0 <rsi>
    c3f6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c3f9:	48 89 10             	mov    QWORD PTR [rax],rdx
    c3fc:	48 8b 15 6d 52 00 00 	mov    rdx,QWORD PTR [rip+0x526d]        # 11670 <s_bss>
    c403:	48 8b 05 ae 50 00 00 	mov    rax,QWORD PTR [rip+0x50ae]        # 114b8 <rdx>
    c40a:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    c411:	48 89 10             	mov    QWORD PTR [rax],rdx
    c414:	48 8b 05 9d 50 00 00 	mov    rax,QWORD PTR [rip+0x509d]        # 114b8 <rdx>
    c41b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c41e:	48 89 c2             	mov    rdx,rax
    c421:	48 8b 05 90 50 00 00 	mov    rax,QWORD PTR [rip+0x5090]        # 114b8 <rdx>
    c428:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c42b:	48 89 10             	mov    QWORD PTR [rax],rdx
    c42e:	48 8b 15 83 50 00 00 	mov    rdx,QWORD PTR [rip+0x5083]        # 114b8 <rdx>
    c435:	48 8b 05 54 50 00 00 	mov    rax,QWORD PTR [rip+0x5054]        # 11490 <rcx>
    c43c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c43f:	48 89 10             	mov    QWORD PTR [rax],rdx
    c442:	48 8b 15 f7 4f 00 00 	mov    rdx,QWORD PTR [rip+0x4ff7]        # 11440 <rax>
    c449:	48 8b 05 68 50 00 00 	mov    rax,QWORD PTR [rip+0x5068]        # 114b8 <rdx>
    c450:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c453:	48 89 10             	mov    QWORD PTR [rax],rdx
    c456:	48 8b 15 33 50 00 00 	mov    rdx,QWORD PTR [rip+0x5033]        # 11490 <rcx>
    c45d:	48 8b 05 9c 50 00 00 	mov    rax,QWORD PTR [rip+0x509c]        # 11500 <rdi>
    c464:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c467:	48 89 10             	mov    QWORD PTR [rax],rdx
    c46a:	48 8b 05 d7 4f 00 00 	mov    rax,QWORD PTR [rip+0x4fd7]        # 11448 <eax>
    c471:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    c478:	48 8b 05 39 50 00 00 	mov    rax,QWORD PTR [rip+0x5039]        # 114b8 <rdx>
    c47f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c482:	48 8b 15 57 50 00 00 	mov    rdx,QWORD PTR [rip+0x5057]        # 114e0 <rsi>
    c489:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c48c:	48 89 d6             	mov    rsi,rdx
    c48f:	48 8b 15 6a 50 00 00 	mov    rdx,QWORD PTR [rip+0x506a]        # 11500 <rdi>
    c496:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c499:	48 89 d1             	mov    rcx,rdx
    c49c:	48 89 c2             	mov    rdx,rax
    c49f:	48 89 cf             	mov    rdi,rcx
    c4a2:	b8 00 00 00 00       	mov    eax,0x0
    c4a7:	e8 44 4c ff ff       	call   10f0 <__isoc99_sscanf@plt>
    c4ac:	89 c2                	mov    edx,eax
    c4ae:	48 8b 05 93 4f 00 00 	mov    rax,QWORD PTR [rip+0x4f93]        # 11448 <eax>
    c4b5:	89 d2                	mov    edx,edx
    c4b7:	48 89 10             	mov    QWORD PTR [rax],rdx
    c4ba:	48 8b 15 87 4f 00 00 	mov    rdx,QWORD PTR [rip+0x4f87]        # 11448 <eax>
    c4c1:	48 8b 05 f8 4f 00 00 	mov    rax,QWORD PTR [rip+0x4ff8]        # 114c0 <edx>
    c4c8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c4cb:	48 89 10             	mov    QWORD PTR [rax],rdx
    c4ce:	48 8b 15 9b 51 00 00 	mov    rdx,QWORD PTR [rip+0x519b]        # 11670 <s_bss>
    c4d5:	48 8b 05 64 4f 00 00 	mov    rax,QWORD PTR [rip+0x4f64]        # 11440 <rax>
    c4dc:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    c4e0:	48 89 10             	mov    QWORD PTR [rax],rdx
    c4e3:	48 8b 15 d6 4f 00 00 	mov    rdx,QWORD PTR [rip+0x4fd6]        # 114c0 <edx>
    c4ea:	48 8b 05 cf 4f 00 00 	mov    rax,QWORD PTR [rip+0x4fcf]        # 114c0 <edx>
    c4f1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c4f4:	48 89 10             	mov    QWORD PTR [rax],rdx
    c4f7:	48 8b 05 ba 4f 00 00 	mov    rax,QWORD PTR [rip+0x4fba]        # 114b8 <rdx>
    c4fe:	48 8b 15 3b 4f 00 00 	mov    rdx,QWORD PTR [rip+0x4f3b]        # 11440 <rax>
    c505:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c508:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c50b:	48 89 02             	mov    QWORD PTR [rdx],rax
    c50e:	48 8b 15 5b 51 00 00 	mov    rdx,QWORD PTR [rip+0x515b]        # 11670 <s_bss>
    c515:	48 8b 05 24 4f 00 00 	mov    rax,QWORD PTR [rip+0x4f24]        # 11440 <rax>
    c51c:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    c520:	48 89 10             	mov    QWORD PTR [rax],rdx
    c523:	48 8b 05 16 4f 00 00 	mov    rax,QWORD PTR [rip+0x4f16]        # 11440 <rax>
    c52a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c52d:	48 89 c2             	mov    rdx,rax
    c530:	48 8b 05 09 4f 00 00 	mov    rax,QWORD PTR [rip+0x4f09]        # 11440 <rax>
    c537:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c53a:	48 89 10             	mov    QWORD PTR [rax],rdx
    c53d:	48 8b 05 fc 4e 00 00 	mov    rax,QWORD PTR [rip+0x4efc]        # 11440 <rax>
    c544:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c547:	48 83 f8 01          	cmp    rax,0x1
    c54b:	0f 84 d6 04 00 00    	je     ca27 <main__+0x10f2>
    c551:	48 8b 15 18 51 00 00 	mov    rdx,QWORD PTR [rip+0x5118]        # 11670 <s_bss>
    c558:	48 8b 05 e1 4e 00 00 	mov    rax,QWORD PTR [rip+0x4ee1]        # 11440 <rax>
    c55f:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    c566:	48 89 10             	mov    QWORD PTR [rax],rdx
    c569:	48 8b 05 d0 4e 00 00 	mov    rax,QWORD PTR [rip+0x4ed0]        # 11440 <rax>
    c570:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c573:	48 89 c2             	mov    rdx,rax
    c576:	48 8b 05 c3 4e 00 00 	mov    rax,QWORD PTR [rip+0x4ec3]        # 11440 <rax>
    c57d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c580:	48 89 10             	mov    QWORD PTR [rax],rdx
    c583:	48 8b 05 b6 4e 00 00 	mov    rax,QWORD PTR [rip+0x4eb6]        # 11440 <rax>
    c58a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    c58d:	48 8b 05 ac 4e 00 00 	mov    rax,QWORD PTR [rip+0x4eac]        # 11440 <rax>
    c594:	48 83 ea 20          	sub    rdx,0x20
    c598:	48 89 10             	mov    QWORD PTR [rax],rdx
    c59b:	48 8b 15 9e 4e 00 00 	mov    rdx,QWORD PTR [rip+0x4e9e]        # 11440 <rax>
    c5a2:	48 8b 05 0f 4f 00 00 	mov    rax,QWORD PTR [rip+0x4f0f]        # 114b8 <rdx>
    c5a9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c5ac:	48 89 10             	mov    QWORD PTR [rax],rdx
    c5af:	48 8b 15 ba 50 00 00 	mov    rdx,QWORD PTR [rip+0x50ba]        # 11670 <s_bss>
    c5b6:	48 8b 05 83 4e 00 00 	mov    rax,QWORD PTR [rip+0x4e83]        # 11440 <rax>
    c5bd:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    c5c1:	48 89 10             	mov    QWORD PTR [rax],rdx
    c5c4:	48 8b 05 ed 4e 00 00 	mov    rax,QWORD PTR [rip+0x4eed]        # 114b8 <rdx>
    c5cb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c5ce:	48 89 c2             	mov    rdx,rax
    c5d1:	48 8b 05 e0 4e 00 00 	mov    rax,QWORD PTR [rip+0x4ee0]        # 114b8 <rdx>
    c5d8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c5db:	48 89 10             	mov    QWORD PTR [rax],rdx
    c5de:	48 8b 05 d3 4e 00 00 	mov    rax,QWORD PTR [rip+0x4ed3]        # 114b8 <rdx>
    c5e5:	48 8b 15 54 4e 00 00 	mov    rdx,QWORD PTR [rip+0x4e54]        # 11440 <rax>
    c5ec:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c5ef:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c5f2:	48 89 02             	mov    QWORD PTR [rdx],rax
    c5f5:	48 8b 15 74 50 00 00 	mov    rdx,QWORD PTR [rip+0x5074]        # 11670 <s_bss>
    c5fc:	48 8b 05 3d 4e 00 00 	mov    rax,QWORD PTR [rip+0x4e3d]        # 11440 <rax>
    c603:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    c607:	48 89 10             	mov    QWORD PTR [rax],rdx
    c60a:	48 8b 05 2f 4e 00 00 	mov    rax,QWORD PTR [rip+0x4e2f]        # 11440 <rax>
    c611:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c614:	48 89 c2             	mov    rdx,rax
    c617:	48 8b 05 9a 4e 00 00 	mov    rax,QWORD PTR [rip+0x4e9a]        # 114b8 <rdx>
    c61e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c621:	48 89 10             	mov    QWORD PTR [rax],rdx
    c624:	48 8b 15 45 50 00 00 	mov    rdx,QWORD PTR [rip+0x5045]        # 11670 <s_bss>
    c62b:	48 8b 05 0e 4e 00 00 	mov    rax,QWORD PTR [rip+0x4e0e]        # 11440 <rax>
    c632:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    c636:	48 89 10             	mov    QWORD PTR [rax],rdx
    c639:	48 8b 05 78 4e 00 00 	mov    rax,QWORD PTR [rip+0x4e78]        # 114b8 <rdx>
    c640:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    c643:	48 8b 05 6e 4e 00 00 	mov    rax,QWORD PTR [rip+0x4e6e]        # 114b8 <rdx>
    c64a:	48 83 c2 08          	add    rdx,0x8
    c64e:	48 89 10             	mov    QWORD PTR [rax],rdx
    c651:	48 8b 05 60 4e 00 00 	mov    rax,QWORD PTR [rip+0x4e60]        # 114b8 <rdx>
    c658:	48 8b 15 e1 4d 00 00 	mov    rdx,QWORD PTR [rip+0x4de1]        # 11440 <rax>
    c65f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c662:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c665:	48 89 02             	mov    QWORD PTR [rdx],rax
    c668:	48 8b 15 01 50 00 00 	mov    rdx,QWORD PTR [rip+0x5001]        # 11670 <s_bss>
    c66f:	48 8b 05 ca 4d 00 00 	mov    rax,QWORD PTR [rip+0x4dca]        # 11440 <rax>
    c676:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    c67a:	48 89 10             	mov    QWORD PTR [rax],rdx
    c67d:	48 8b 05 bc 4d 00 00 	mov    rax,QWORD PTR [rip+0x4dbc]        # 11440 <rax>
    c684:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c687:	48 89 c2             	mov    rdx,rax
    c68a:	48 8b 05 af 4d 00 00 	mov    rax,QWORD PTR [rip+0x4daf]        # 11440 <rax>
    c691:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c694:	48 89 10             	mov    QWORD PTR [rax],rdx
    c697:	48 8b 15 a2 4d 00 00 	mov    rdx,QWORD PTR [rip+0x4da2]        # 11440 <rax>
    c69e:	48 8b 05 13 4e 00 00 	mov    rax,QWORD PTR [rip+0x4e13]        # 114b8 <rdx>
    c6a5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c6a8:	48 89 10             	mov    QWORD PTR [rax],rdx
    c6ab:	48 8b 15 be 4f 00 00 	mov    rdx,QWORD PTR [rip+0x4fbe]        # 11670 <s_bss>
    c6b2:	48 8b 05 87 4d 00 00 	mov    rax,QWORD PTR [rip+0x4d87]        # 11440 <rax>
    c6b9:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    c6c0:	48 89 10             	mov    QWORD PTR [rax],rdx
    c6c3:	48 8b 05 ee 4d 00 00 	mov    rax,QWORD PTR [rip+0x4dee]        # 114b8 <rdx>
    c6ca:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c6cd:	48 89 c2             	mov    rdx,rax
    c6d0:	48 8b 05 e1 4d 00 00 	mov    rax,QWORD PTR [rip+0x4de1]        # 114b8 <rdx>
    c6d7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c6da:	48 89 10             	mov    QWORD PTR [rax],rdx
    c6dd:	48 8b 05 d4 4d 00 00 	mov    rax,QWORD PTR [rip+0x4dd4]        # 114b8 <rdx>
    c6e4:	48 8b 15 55 4d 00 00 	mov    rdx,QWORD PTR [rip+0x4d55]        # 11440 <rax>
    c6eb:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c6ee:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c6f1:	48 89 02             	mov    QWORD PTR [rdx],rax
    c6f4:	48 8b 15 25 4d 00 00 	mov    rdx,QWORD PTR [rip+0x4d25]        # 11420 <stderr@GLIBC_2.2.5>
    c6fb:	48 8b 05 b6 4d 00 00 	mov    rax,QWORD PTR [rip+0x4db6]        # 114b8 <rdx>
    c702:	48 89 10             	mov    QWORD PTR [rax],rdx
    c705:	48 8b 15 64 4f 00 00 	mov    rdx,QWORD PTR [rip+0x4f64]        # 11670 <s_bss>
    c70c:	48 8b 05 2d 4d 00 00 	mov    rax,QWORD PTR [rip+0x4d2d]        # 11440 <rax>
    c713:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    c717:	48 89 10             	mov    QWORD PTR [rax],rdx
    c71a:	48 8b 05 97 4d 00 00 	mov    rax,QWORD PTR [rip+0x4d97]        # 114b8 <rdx>
    c721:	48 8b 15 18 4d 00 00 	mov    rdx,QWORD PTR [rip+0x4d18]        # 11440 <rax>
    c728:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c72b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c72e:	48 89 02             	mov    QWORD PTR [rdx],rax
    c731:	48 8b 15 38 4f 00 00 	mov    rdx,QWORD PTR [rip+0x4f38]        # 11670 <s_bss>
    c738:	48 8b 05 01 4d 00 00 	mov    rax,QWORD PTR [rip+0x4d01]        # 11440 <rax>
    c73f:	48 8b 92 40 02 00 00 	mov    rdx,QWORD PTR [rdx+0x240]
    c746:	48 89 10             	mov    QWORD PTR [rax],rdx
    c749:	48 8b 05 f0 4c 00 00 	mov    rax,QWORD PTR [rip+0x4cf0]        # 11440 <rax>
    c750:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    c753:	48 8b 05 5e 4d 00 00 	mov    rax,QWORD PTR [rip+0x4d5e]        # 114b8 <rdx>
    c75a:	48 81 c2 b0 01 00 00 	add    rdx,0x1b0
    c761:	48 89 10             	mov    QWORD PTR [rax],rdx
    c764:	48 8b 15 05 4f 00 00 	mov    rdx,QWORD PTR [rip+0x4f05]        # 11670 <s_bss>
    c76b:	48 8b 05 ce 4c 00 00 	mov    rax,QWORD PTR [rip+0x4cce]        # 11440 <rax>
    c772:	48 8b 52 70          	mov    rdx,QWORD PTR [rdx+0x70]
    c776:	48 89 10             	mov    QWORD PTR [rax],rdx
    c779:	48 8b 05 38 4d 00 00 	mov    rax,QWORD PTR [rip+0x4d38]        # 114b8 <rdx>
    c780:	48 8b 15 b9 4c 00 00 	mov    rdx,QWORD PTR [rip+0x4cb9]        # 11440 <rax>
    c787:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c78a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c78d:	48 89 02             	mov    QWORD PTR [rdx],rax
    c790:	48 8b 15 d9 4e 00 00 	mov    rdx,QWORD PTR [rip+0x4ed9]        # 11670 <s_bss>
    c797:	48 8b 05 1a 4d 00 00 	mov    rax,QWORD PTR [rip+0x4d1a]        # 114b8 <rdx>
    c79e:	48 8b 52 70          	mov    rdx,QWORD PTR [rdx+0x70]
    c7a2:	48 89 10             	mov    QWORD PTR [rax],rdx
    c7a5:	48 8b 15 c4 4e 00 00 	mov    rdx,QWORD PTR [rip+0x4ec4]        # 11670 <s_bss>
    c7ac:	48 8b 05 8d 4c 00 00 	mov    rax,QWORD PTR [rip+0x4c8d]        # 11440 <rax>
    c7b3:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    c7ba:	48 89 10             	mov    QWORD PTR [rax],rdx
    c7bd:	48 8b 05 f4 4c 00 00 	mov    rax,QWORD PTR [rip+0x4cf4]        # 114b8 <rdx>
    c7c4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c7c7:	48 89 c2             	mov    rdx,rax
    c7ca:	48 8b 05 e7 4c 00 00 	mov    rax,QWORD PTR [rip+0x4ce7]        # 114b8 <rdx>
    c7d1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c7d4:	48 89 10             	mov    QWORD PTR [rax],rdx
    c7d7:	48 8b 05 da 4c 00 00 	mov    rax,QWORD PTR [rip+0x4cda]        # 114b8 <rdx>
    c7de:	48 8b 15 5b 4c 00 00 	mov    rdx,QWORD PTR [rip+0x4c5b]        # 11440 <rax>
    c7e5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c7e8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c7eb:	48 89 02             	mov    QWORD PTR [rdx],rax
    c7ee:	48 8b 15 7b 4e 00 00 	mov    rdx,QWORD PTR [rip+0x4e7b]        # 11670 <s_bss>
    c7f5:	48 8b 05 bc 4c 00 00 	mov    rax,QWORD PTR [rip+0x4cbc]        # 114b8 <rdx>
    c7fc:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    c800:	48 89 10             	mov    QWORD PTR [rax],rdx
    c803:	48 8b 15 66 4e 00 00 	mov    rdx,QWORD PTR [rip+0x4e66]        # 11670 <s_bss>
    c80a:	48 8b 05 2f 4c 00 00 	mov    rax,QWORD PTR [rip+0x4c2f]        # 11440 <rax>
    c811:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    c818:	48 89 10             	mov    QWORD PTR [rax],rdx
    c81b:	48 8b 05 96 4c 00 00 	mov    rax,QWORD PTR [rip+0x4c96]        # 114b8 <rdx>
    c822:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c825:	48 89 c2             	mov    rdx,rax
    c828:	48 8b 05 89 4c 00 00 	mov    rax,QWORD PTR [rip+0x4c89]        # 114b8 <rdx>
    c82f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c832:	48 89 10             	mov    QWORD PTR [rax],rdx
    c835:	48 8b 05 7c 4c 00 00 	mov    rax,QWORD PTR [rip+0x4c7c]        # 114b8 <rdx>
    c83c:	48 8b 15 fd 4b 00 00 	mov    rdx,QWORD PTR [rip+0x4bfd]        # 11440 <rax>
    c843:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c846:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c849:	48 89 02             	mov    QWORD PTR [rdx],rax
    c84c:	48 8b 15 1d 4e 00 00 	mov    rdx,QWORD PTR [rip+0x4e1d]        # 11670 <s_bss>
    c853:	48 8b 05 e6 4b 00 00 	mov    rax,QWORD PTR [rip+0x4be6]        # 11440 <rax>
    c85a:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    c85e:	48 89 10             	mov    QWORD PTR [rax],rdx
    c861:	48 8b 05 d8 4b 00 00 	mov    rax,QWORD PTR [rip+0x4bd8]        # 11440 <rax>
    c868:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c86b:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    c872:	48 8b 15 f7 4d 00 00 	mov    rdx,QWORD PTR [rip+0x4df7]        # 11670 <s_bss>
    c879:	48 8b 05 c0 4b 00 00 	mov    rax,QWORD PTR [rip+0x4bc0]        # 11440 <rax>
    c880:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    c887:	48 89 10             	mov    QWORD PTR [rax],rdx
    c88a:	48 8b 05 af 4b 00 00 	mov    rax,QWORD PTR [rip+0x4baf]        # 11440 <rax>
    c891:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c894:	48 89 c2             	mov    rdx,rax
    c897:	48 8b 05 a2 4b 00 00 	mov    rax,QWORD PTR [rip+0x4ba2]        # 11440 <rax>
    c89e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c8a1:	48 89 10             	mov    QWORD PTR [rax],rdx
    c8a4:	48 8b 15 c5 4d 00 00 	mov    rdx,QWORD PTR [rip+0x4dc5]        # 11670 <s_bss>
    c8ab:	48 8b 05 06 4c 00 00 	mov    rax,QWORD PTR [rip+0x4c06]        # 114b8 <rdx>
    c8b2:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    c8b9:	48 89 10             	mov    QWORD PTR [rax],rdx
    c8bc:	48 8b 05 f5 4b 00 00 	mov    rax,QWORD PTR [rip+0x4bf5]        # 114b8 <rdx>
    c8c3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c8c6:	48 89 c2             	mov    rdx,rax
    c8c9:	48 8b 05 e8 4b 00 00 	mov    rax,QWORD PTR [rip+0x4be8]        # 114b8 <rdx>
    c8d0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c8d3:	48 89 10             	mov    QWORD PTR [rax],rdx
    c8d6:	48 8b 15 db 4b 00 00 	mov    rdx,QWORD PTR [rip+0x4bdb]        # 114b8 <rdx>
    c8dd:	48 8b 05 fc 4b 00 00 	mov    rax,QWORD PTR [rip+0x4bfc]        # 114e0 <rsi>
    c8e4:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c8e7:	48 89 10             	mov    QWORD PTR [rax],rdx
    c8ea:	48 8b 15 7f 4d 00 00 	mov    rdx,QWORD PTR [rip+0x4d7f]        # 11670 <s_bss>
    c8f1:	48 8b 05 c0 4b 00 00 	mov    rax,QWORD PTR [rip+0x4bc0]        # 114b8 <rdx>
    c8f8:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    c8ff:	48 89 10             	mov    QWORD PTR [rax],rdx
    c902:	48 8b 05 af 4b 00 00 	mov    rax,QWORD PTR [rip+0x4baf]        # 114b8 <rdx>
    c909:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c90c:	48 89 c2             	mov    rdx,rax
    c90f:	48 8b 05 a2 4b 00 00 	mov    rax,QWORD PTR [rip+0x4ba2]        # 114b8 <rdx>
    c916:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c919:	48 89 10             	mov    QWORD PTR [rax],rdx
    c91c:	48 8b 15 95 4b 00 00 	mov    rdx,QWORD PTR [rip+0x4b95]        # 114b8 <rdx>
    c923:	48 8b 05 66 4b 00 00 	mov    rax,QWORD PTR [rip+0x4b66]        # 11490 <rcx>
    c92a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c92d:	48 89 10             	mov    QWORD PTR [rax],rdx
    c930:	48 8b 15 09 4b 00 00 	mov    rdx,QWORD PTR [rip+0x4b09]        # 11440 <rax>
    c937:	48 8b 05 7a 4b 00 00 	mov    rax,QWORD PTR [rip+0x4b7a]        # 114b8 <rdx>
    c93e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c941:	48 89 10             	mov    QWORD PTR [rax],rdx
    c944:	48 8b 15 45 4b 00 00 	mov    rdx,QWORD PTR [rip+0x4b45]        # 11490 <rcx>
    c94b:	48 8b 05 ae 4b 00 00 	mov    rax,QWORD PTR [rip+0x4bae]        # 11500 <rdi>
    c952:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c955:	48 89 10             	mov    QWORD PTR [rax],rdx
    c958:	48 8b 05 e9 4a 00 00 	mov    rax,QWORD PTR [rip+0x4ae9]        # 11448 <eax>
    c95f:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    c966:	48 8b 05 4b 4b 00 00 	mov    rax,QWORD PTR [rip+0x4b4b]        # 114b8 <rdx>
    c96d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c970:	48 8b 15 69 4b 00 00 	mov    rdx,QWORD PTR [rip+0x4b69]        # 114e0 <rsi>
    c977:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c97a:	48 89 d6             	mov    rsi,rdx
    c97d:	48 8b 15 7c 4b 00 00 	mov    rdx,QWORD PTR [rip+0x4b7c]        # 11500 <rdi>
    c984:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c987:	48 89 d1             	mov    rcx,rdx
    c98a:	48 89 c2             	mov    rdx,rax
    c98d:	48 89 cf             	mov    rdi,rcx
    c990:	b8 00 00 00 00       	mov    eax,0x0
    c995:	e8 46 47 ff ff       	call   10e0 <fprintf@plt>
    c99a:	89 c2                	mov    edx,eax
    c99c:	48 8b 05 a5 4a 00 00 	mov    rax,QWORD PTR [rip+0x4aa5]        # 11448 <eax>
    c9a3:	89 d2                	mov    edx,edx
    c9a5:	48 89 10             	mov    QWORD PTR [rax],rdx
    c9a8:	48 8b 15 99 4a 00 00 	mov    rdx,QWORD PTR [rip+0x4a99]        # 11448 <eax>
    c9af:	48 8b 05 0a 4b 00 00 	mov    rax,QWORD PTR [rip+0x4b0a]        # 114c0 <edx>
    c9b6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c9b9:	48 89 10             	mov    QWORD PTR [rax],rdx
    c9bc:	48 8b 15 ad 4c 00 00 	mov    rdx,QWORD PTR [rip+0x4cad]        # 11670 <s_bss>
    c9c3:	48 8b 05 76 4a 00 00 	mov    rax,QWORD PTR [rip+0x4a76]        # 11440 <rax>
    c9ca:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    c9ce:	48 89 10             	mov    QWORD PTR [rax],rdx
    c9d1:	48 8b 15 e8 4a 00 00 	mov    rdx,QWORD PTR [rip+0x4ae8]        # 114c0 <edx>
    c9d8:	48 8b 05 e1 4a 00 00 	mov    rax,QWORD PTR [rip+0x4ae1]        # 114c0 <edx>
    c9df:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c9e2:	48 89 10             	mov    QWORD PTR [rax],rdx
    c9e5:	48 8b 05 cc 4a 00 00 	mov    rax,QWORD PTR [rip+0x4acc]        # 114b8 <rdx>
    c9ec:	48 8b 15 4d 4a 00 00 	mov    rdx,QWORD PTR [rip+0x4a4d]        # 11440 <rax>
    c9f3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    c9f6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    c9f9:	48 89 02             	mov    QWORD PTR [rdx],rax
    c9fc:	48 8b 15 6d 4c 00 00 	mov    rdx,QWORD PTR [rip+0x4c6d]        # 11670 <s_bss>
    ca03:	48 8b 05 36 4a 00 00 	mov    rax,QWORD PTR [rip+0x4a36]        # 11440 <rax>
    ca0a:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    ca0e:	48 89 10             	mov    QWORD PTR [rax],rdx
    ca11:	48 8b 05 28 4a 00 00 	mov    rax,QWORD PTR [rip+0x4a28]        # 11440 <rax>
    ca18:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ca1b:	48 c7 00 02 00 00 00 	mov    QWORD PTR [rax],0x2
    ca22:	e9 f1 15 00 00       	jmp    e018 <main__+0x26e3>
    ca27:	90                   	nop
    ca28:	48 8b 15 41 4c 00 00 	mov    rdx,QWORD PTR [rip+0x4c41]        # 11670 <s_bss>
    ca2f:	48 8b 05 0a 4a 00 00 	mov    rax,QWORD PTR [rip+0x4a0a]        # 11440 <rax>
    ca36:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    ca3d:	48 89 10             	mov    QWORD PTR [rax],rdx
    ca40:	48 8b 05 f9 49 00 00 	mov    rax,QWORD PTR [rip+0x49f9]        # 11440 <rax>
    ca47:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ca4a:	48 89 c2             	mov    rdx,rax
    ca4d:	48 8b 05 ec 49 00 00 	mov    rax,QWORD PTR [rip+0x49ec]        # 11440 <rax>
    ca54:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ca57:	48 89 10             	mov    QWORD PTR [rax],rdx
    ca5a:	48 8b 05 df 49 00 00 	mov    rax,QWORD PTR [rip+0x49df]        # 11440 <rax>
    ca61:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    ca64:	48 8b 05 d5 49 00 00 	mov    rax,QWORD PTR [rip+0x49d5]        # 11440 <rax>
    ca6b:	48 83 ea 10          	sub    rdx,0x10
    ca6f:	48 89 10             	mov    QWORD PTR [rax],rdx
    ca72:	48 8b 15 c7 49 00 00 	mov    rdx,QWORD PTR [rip+0x49c7]        # 11440 <rax>
    ca79:	48 8b 05 38 4a 00 00 	mov    rax,QWORD PTR [rip+0x4a38]        # 114b8 <rdx>
    ca80:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ca83:	48 89 10             	mov    QWORD PTR [rax],rdx
    ca86:	48 8b 15 e3 4b 00 00 	mov    rdx,QWORD PTR [rip+0x4be3]        # 11670 <s_bss>
    ca8d:	48 8b 05 ac 49 00 00 	mov    rax,QWORD PTR [rip+0x49ac]        # 11440 <rax>
    ca94:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    ca98:	48 89 10             	mov    QWORD PTR [rax],rdx
    ca9b:	48 8b 05 16 4a 00 00 	mov    rax,QWORD PTR [rip+0x4a16]        # 114b8 <rdx>
    caa2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    caa5:	48 89 c2             	mov    rdx,rax
    caa8:	48 8b 05 09 4a 00 00 	mov    rax,QWORD PTR [rip+0x4a09]        # 114b8 <rdx>
    caaf:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cab2:	48 89 10             	mov    QWORD PTR [rax],rdx
    cab5:	48 8b 05 fc 49 00 00 	mov    rax,QWORD PTR [rip+0x49fc]        # 114b8 <rdx>
    cabc:	48 8b 15 7d 49 00 00 	mov    rdx,QWORD PTR [rip+0x497d]        # 11440 <rax>
    cac3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cac6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cac9:	48 89 02             	mov    QWORD PTR [rdx],rax
    cacc:	48 8b 15 9d 4b 00 00 	mov    rdx,QWORD PTR [rip+0x4b9d]        # 11670 <s_bss>
    cad3:	48 8b 05 66 49 00 00 	mov    rax,QWORD PTR [rip+0x4966]        # 11440 <rax>
    cada:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    cade:	48 89 10             	mov    QWORD PTR [rax],rdx
    cae1:	48 8b 05 58 49 00 00 	mov    rax,QWORD PTR [rip+0x4958]        # 11440 <rax>
    cae8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    caeb:	48 89 c2             	mov    rdx,rax
    caee:	48 8b 05 4b 49 00 00 	mov    rax,QWORD PTR [rip+0x494b]        # 11440 <rax>
    caf5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    caf8:	48 89 10             	mov    QWORD PTR [rax],rdx
    cafb:	48 8b 05 3e 49 00 00 	mov    rax,QWORD PTR [rip+0x493e]        # 11440 <rax>
    cb02:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cb05:	48 83 f8 5d          	cmp    rax,0x5d
    cb09:	0f 86 da 03 00 00    	jbe    cee9 <main__+0x15b4>
    cb0f:	48 8b 15 5a 4b 00 00 	mov    rdx,QWORD PTR [rip+0x4b5a]        # 11670 <s_bss>
    cb16:	48 8b 05 23 49 00 00 	mov    rax,QWORD PTR [rip+0x4923]        # 11440 <rax>
    cb1d:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    cb24:	48 89 10             	mov    QWORD PTR [rax],rdx
    cb27:	48 8b 05 12 49 00 00 	mov    rax,QWORD PTR [rip+0x4912]        # 11440 <rax>
    cb2e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cb31:	48 89 c2             	mov    rdx,rax
    cb34:	48 8b 05 05 49 00 00 	mov    rax,QWORD PTR [rip+0x4905]        # 11440 <rax>
    cb3b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cb3e:	48 89 10             	mov    QWORD PTR [rax],rdx
    cb41:	48 8b 05 f8 48 00 00 	mov    rax,QWORD PTR [rip+0x48f8]        # 11440 <rax>
    cb48:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    cb4b:	48 8b 05 ee 48 00 00 	mov    rax,QWORD PTR [rip+0x48ee]        # 11440 <rax>
    cb52:	48 83 ea 10          	sub    rdx,0x10
    cb56:	48 89 10             	mov    QWORD PTR [rax],rdx
    cb59:	48 8b 15 e0 48 00 00 	mov    rdx,QWORD PTR [rip+0x48e0]        # 11440 <rax>
    cb60:	48 8b 05 51 49 00 00 	mov    rax,QWORD PTR [rip+0x4951]        # 114b8 <rdx>
    cb67:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cb6a:	48 89 10             	mov    QWORD PTR [rax],rdx
    cb6d:	48 8b 15 fc 4a 00 00 	mov    rdx,QWORD PTR [rip+0x4afc]        # 11670 <s_bss>
    cb74:	48 8b 05 c5 48 00 00 	mov    rax,QWORD PTR [rip+0x48c5]        # 11440 <rax>
    cb7b:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    cb82:	48 89 10             	mov    QWORD PTR [rax],rdx
    cb85:	48 8b 05 2c 49 00 00 	mov    rax,QWORD PTR [rip+0x492c]        # 114b8 <rdx>
    cb8c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cb8f:	48 89 c2             	mov    rdx,rax
    cb92:	48 8b 05 1f 49 00 00 	mov    rax,QWORD PTR [rip+0x491f]        # 114b8 <rdx>
    cb99:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cb9c:	48 89 10             	mov    QWORD PTR [rax],rdx
    cb9f:	48 8b 05 12 49 00 00 	mov    rax,QWORD PTR [rip+0x4912]        # 114b8 <rdx>
    cba6:	48 8b 15 93 48 00 00 	mov    rdx,QWORD PTR [rip+0x4893]        # 11440 <rax>
    cbad:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cbb0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cbb3:	48 89 02             	mov    QWORD PTR [rdx],rax
    cbb6:	48 8b 15 63 48 00 00 	mov    rdx,QWORD PTR [rip+0x4863]        # 11420 <stderr@GLIBC_2.2.5>
    cbbd:	48 8b 05 f4 48 00 00 	mov    rax,QWORD PTR [rip+0x48f4]        # 114b8 <rdx>
    cbc4:	48 89 10             	mov    QWORD PTR [rax],rdx
    cbc7:	48 8b 15 a2 4a 00 00 	mov    rdx,QWORD PTR [rip+0x4aa2]        # 11670 <s_bss>
    cbce:	48 8b 05 6b 48 00 00 	mov    rax,QWORD PTR [rip+0x486b]        # 11440 <rax>
    cbd5:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    cbd9:	48 89 10             	mov    QWORD PTR [rax],rdx
    cbdc:	48 8b 05 d5 48 00 00 	mov    rax,QWORD PTR [rip+0x48d5]        # 114b8 <rdx>
    cbe3:	48 8b 15 56 48 00 00 	mov    rdx,QWORD PTR [rip+0x4856]        # 11440 <rax>
    cbea:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cbed:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cbf0:	48 89 02             	mov    QWORD PTR [rdx],rax
    cbf3:	48 8b 15 76 4a 00 00 	mov    rdx,QWORD PTR [rip+0x4a76]        # 11670 <s_bss>
    cbfa:	48 8b 05 3f 48 00 00 	mov    rax,QWORD PTR [rip+0x483f]        # 11440 <rax>
    cc01:	48 8b 92 40 02 00 00 	mov    rdx,QWORD PTR [rdx+0x240]
    cc08:	48 89 10             	mov    QWORD PTR [rax],rdx
    cc0b:	48 8b 05 2e 48 00 00 	mov    rax,QWORD PTR [rip+0x482e]        # 11440 <rax>
    cc12:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    cc15:	48 8b 05 9c 48 00 00 	mov    rax,QWORD PTR [rip+0x489c]        # 114b8 <rdx>
    cc1c:	48 81 c2 d0 01 00 00 	add    rdx,0x1d0
    cc23:	48 89 10             	mov    QWORD PTR [rax],rdx
    cc26:	48 8b 15 43 4a 00 00 	mov    rdx,QWORD PTR [rip+0x4a43]        # 11670 <s_bss>
    cc2d:	48 8b 05 0c 48 00 00 	mov    rax,QWORD PTR [rip+0x480c]        # 11440 <rax>
    cc34:	48 8b 52 70          	mov    rdx,QWORD PTR [rdx+0x70]
    cc38:	48 89 10             	mov    QWORD PTR [rax],rdx
    cc3b:	48 8b 05 76 48 00 00 	mov    rax,QWORD PTR [rip+0x4876]        # 114b8 <rdx>
    cc42:	48 8b 15 f7 47 00 00 	mov    rdx,QWORD PTR [rip+0x47f7]        # 11440 <rax>
    cc49:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cc4c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cc4f:	48 89 02             	mov    QWORD PTR [rdx],rax
    cc52:	48 8b 15 17 4a 00 00 	mov    rdx,QWORD PTR [rip+0x4a17]        # 11670 <s_bss>
    cc59:	48 8b 05 58 48 00 00 	mov    rax,QWORD PTR [rip+0x4858]        # 114b8 <rdx>
    cc60:	48 8b 52 70          	mov    rdx,QWORD PTR [rdx+0x70]
    cc64:	48 89 10             	mov    QWORD PTR [rax],rdx
    cc67:	48 8b 15 02 4a 00 00 	mov    rdx,QWORD PTR [rip+0x4a02]        # 11670 <s_bss>
    cc6e:	48 8b 05 cb 47 00 00 	mov    rax,QWORD PTR [rip+0x47cb]        # 11440 <rax>
    cc75:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    cc7c:	48 89 10             	mov    QWORD PTR [rax],rdx
    cc7f:	48 8b 05 32 48 00 00 	mov    rax,QWORD PTR [rip+0x4832]        # 114b8 <rdx>
    cc86:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cc89:	48 89 c2             	mov    rdx,rax
    cc8c:	48 8b 05 25 48 00 00 	mov    rax,QWORD PTR [rip+0x4825]        # 114b8 <rdx>
    cc93:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cc96:	48 89 10             	mov    QWORD PTR [rax],rdx
    cc99:	48 8b 05 18 48 00 00 	mov    rax,QWORD PTR [rip+0x4818]        # 114b8 <rdx>
    cca0:	48 8b 15 99 47 00 00 	mov    rdx,QWORD PTR [rip+0x4799]        # 11440 <rax>
    cca7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ccaa:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ccad:	48 89 02             	mov    QWORD PTR [rdx],rax
    ccb0:	48 8b 15 b9 49 00 00 	mov    rdx,QWORD PTR [rip+0x49b9]        # 11670 <s_bss>
    ccb7:	48 8b 05 fa 47 00 00 	mov    rax,QWORD PTR [rip+0x47fa]        # 114b8 <rdx>
    ccbe:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    ccc2:	48 89 10             	mov    QWORD PTR [rax],rdx
    ccc5:	48 8b 15 a4 49 00 00 	mov    rdx,QWORD PTR [rip+0x49a4]        # 11670 <s_bss>
    cccc:	48 8b 05 6d 47 00 00 	mov    rax,QWORD PTR [rip+0x476d]        # 11440 <rax>
    ccd3:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    ccda:	48 89 10             	mov    QWORD PTR [rax],rdx
    ccdd:	48 8b 05 d4 47 00 00 	mov    rax,QWORD PTR [rip+0x47d4]        # 114b8 <rdx>
    cce4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cce7:	48 89 c2             	mov    rdx,rax
    ccea:	48 8b 05 c7 47 00 00 	mov    rax,QWORD PTR [rip+0x47c7]        # 114b8 <rdx>
    ccf1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ccf4:	48 89 10             	mov    QWORD PTR [rax],rdx
    ccf7:	48 8b 05 ba 47 00 00 	mov    rax,QWORD PTR [rip+0x47ba]        # 114b8 <rdx>
    ccfe:	48 8b 15 3b 47 00 00 	mov    rdx,QWORD PTR [rip+0x473b]        # 11440 <rax>
    cd05:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cd08:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cd0b:	48 89 02             	mov    QWORD PTR [rdx],rax
    cd0e:	48 8b 15 5b 49 00 00 	mov    rdx,QWORD PTR [rip+0x495b]        # 11670 <s_bss>
    cd15:	48 8b 05 24 47 00 00 	mov    rax,QWORD PTR [rip+0x4724]        # 11440 <rax>
    cd1c:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    cd20:	48 89 10             	mov    QWORD PTR [rax],rdx
    cd23:	48 8b 05 16 47 00 00 	mov    rax,QWORD PTR [rip+0x4716]        # 11440 <rax>
    cd2a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cd2d:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    cd34:	48 8b 15 35 49 00 00 	mov    rdx,QWORD PTR [rip+0x4935]        # 11670 <s_bss>
    cd3b:	48 8b 05 fe 46 00 00 	mov    rax,QWORD PTR [rip+0x46fe]        # 11440 <rax>
    cd42:	48 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [rdx+0x98]
    cd49:	48 89 10             	mov    QWORD PTR [rax],rdx
    cd4c:	48 8b 05 ed 46 00 00 	mov    rax,QWORD PTR [rip+0x46ed]        # 11440 <rax>
    cd53:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cd56:	48 89 c2             	mov    rdx,rax
    cd59:	48 8b 05 e0 46 00 00 	mov    rax,QWORD PTR [rip+0x46e0]        # 11440 <rax>
    cd60:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cd63:	48 89 10             	mov    QWORD PTR [rax],rdx
    cd66:	48 8b 15 03 49 00 00 	mov    rdx,QWORD PTR [rip+0x4903]        # 11670 <s_bss>
    cd6d:	48 8b 05 44 47 00 00 	mov    rax,QWORD PTR [rip+0x4744]        # 114b8 <rdx>
    cd74:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    cd7b:	48 89 10             	mov    QWORD PTR [rax],rdx
    cd7e:	48 8b 05 33 47 00 00 	mov    rax,QWORD PTR [rip+0x4733]        # 114b8 <rdx>
    cd85:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cd88:	48 89 c2             	mov    rdx,rax
    cd8b:	48 8b 05 26 47 00 00 	mov    rax,QWORD PTR [rip+0x4726]        # 114b8 <rdx>
    cd92:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cd95:	48 89 10             	mov    QWORD PTR [rax],rdx
    cd98:	48 8b 15 19 47 00 00 	mov    rdx,QWORD PTR [rip+0x4719]        # 114b8 <rdx>
    cd9f:	48 8b 05 3a 47 00 00 	mov    rax,QWORD PTR [rip+0x473a]        # 114e0 <rsi>
    cda6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cda9:	48 89 10             	mov    QWORD PTR [rax],rdx
    cdac:	48 8b 15 bd 48 00 00 	mov    rdx,QWORD PTR [rip+0x48bd]        # 11670 <s_bss>
    cdb3:	48 8b 05 fe 46 00 00 	mov    rax,QWORD PTR [rip+0x46fe]        # 114b8 <rdx>
    cdba:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    cdc1:	48 89 10             	mov    QWORD PTR [rax],rdx
    cdc4:	48 8b 05 ed 46 00 00 	mov    rax,QWORD PTR [rip+0x46ed]        # 114b8 <rdx>
    cdcb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cdce:	48 89 c2             	mov    rdx,rax
    cdd1:	48 8b 05 e0 46 00 00 	mov    rax,QWORD PTR [rip+0x46e0]        # 114b8 <rdx>
    cdd8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cddb:	48 89 10             	mov    QWORD PTR [rax],rdx
    cdde:	48 8b 15 d3 46 00 00 	mov    rdx,QWORD PTR [rip+0x46d3]        # 114b8 <rdx>
    cde5:	48 8b 05 a4 46 00 00 	mov    rax,QWORD PTR [rip+0x46a4]        # 11490 <rcx>
    cdec:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cdef:	48 89 10             	mov    QWORD PTR [rax],rdx
    cdf2:	48 8b 15 47 46 00 00 	mov    rdx,QWORD PTR [rip+0x4647]        # 11440 <rax>
    cdf9:	48 8b 05 b8 46 00 00 	mov    rax,QWORD PTR [rip+0x46b8]        # 114b8 <rdx>
    ce00:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ce03:	48 89 10             	mov    QWORD PTR [rax],rdx
    ce06:	48 8b 15 83 46 00 00 	mov    rdx,QWORD PTR [rip+0x4683]        # 11490 <rcx>
    ce0d:	48 8b 05 ec 46 00 00 	mov    rax,QWORD PTR [rip+0x46ec]        # 11500 <rdi>
    ce14:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ce17:	48 89 10             	mov    QWORD PTR [rax],rdx
    ce1a:	48 8b 05 27 46 00 00 	mov    rax,QWORD PTR [rip+0x4627]        # 11448 <eax>
    ce21:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    ce28:	48 8b 05 89 46 00 00 	mov    rax,QWORD PTR [rip+0x4689]        # 114b8 <rdx>
    ce2f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ce32:	48 8b 15 a7 46 00 00 	mov    rdx,QWORD PTR [rip+0x46a7]        # 114e0 <rsi>
    ce39:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ce3c:	48 89 d6             	mov    rsi,rdx
    ce3f:	48 8b 15 ba 46 00 00 	mov    rdx,QWORD PTR [rip+0x46ba]        # 11500 <rdi>
    ce46:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ce49:	48 89 d1             	mov    rcx,rdx
    ce4c:	48 89 c2             	mov    rdx,rax
    ce4f:	48 89 cf             	mov    rdi,rcx
    ce52:	b8 00 00 00 00       	mov    eax,0x0
    ce57:	e8 84 42 ff ff       	call   10e0 <fprintf@plt>
    ce5c:	89 c2                	mov    edx,eax
    ce5e:	48 8b 05 e3 45 00 00 	mov    rax,QWORD PTR [rip+0x45e3]        # 11448 <eax>
    ce65:	89 d2                	mov    edx,edx
    ce67:	48 89 10             	mov    QWORD PTR [rax],rdx
    ce6a:	48 8b 15 d7 45 00 00 	mov    rdx,QWORD PTR [rip+0x45d7]        # 11448 <eax>
    ce71:	48 8b 05 48 46 00 00 	mov    rax,QWORD PTR [rip+0x4648]        # 114c0 <edx>
    ce78:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ce7b:	48 89 10             	mov    QWORD PTR [rax],rdx
    ce7e:	48 8b 15 eb 47 00 00 	mov    rdx,QWORD PTR [rip+0x47eb]        # 11670 <s_bss>
    ce85:	48 8b 05 b4 45 00 00 	mov    rax,QWORD PTR [rip+0x45b4]        # 11440 <rax>
    ce8c:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    ce90:	48 89 10             	mov    QWORD PTR [rax],rdx
    ce93:	48 8b 15 26 46 00 00 	mov    rdx,QWORD PTR [rip+0x4626]        # 114c0 <edx>
    ce9a:	48 8b 05 1f 46 00 00 	mov    rax,QWORD PTR [rip+0x461f]        # 114c0 <edx>
    cea1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cea4:	48 89 10             	mov    QWORD PTR [rax],rdx
    cea7:	48 8b 05 0a 46 00 00 	mov    rax,QWORD PTR [rip+0x460a]        # 114b8 <rdx>
    ceae:	48 8b 15 8b 45 00 00 	mov    rdx,QWORD PTR [rip+0x458b]        # 11440 <rax>
    ceb5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ceb8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cebb:	48 89 02             	mov    QWORD PTR [rdx],rax
    cebe:	48 8b 15 ab 47 00 00 	mov    rdx,QWORD PTR [rip+0x47ab]        # 11670 <s_bss>
    cec5:	48 8b 05 74 45 00 00 	mov    rax,QWORD PTR [rip+0x4574]        # 11440 <rax>
    cecc:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    ced0:	48 89 10             	mov    QWORD PTR [rax],rdx
    ced3:	48 8b 05 66 45 00 00 	mov    rax,QWORD PTR [rip+0x4566]        # 11440 <rax>
    ceda:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cedd:	48 c7 00 03 00 00 00 	mov    QWORD PTR [rax],0x3
    cee4:	e9 2f 11 00 00       	jmp    e018 <main__+0x26e3>
    cee9:	90                   	nop
    ceea:	48 8b 15 7f 47 00 00 	mov    rdx,QWORD PTR [rip+0x477f]        # 11670 <s_bss>
    cef1:	48 8b 05 48 45 00 00 	mov    rax,QWORD PTR [rip+0x4548]        # 11440 <rax>
    cef8:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    ceff:	48 89 10             	mov    QWORD PTR [rax],rdx
    cf02:	48 8b 05 37 45 00 00 	mov    rax,QWORD PTR [rip+0x4537]        # 11440 <rax>
    cf09:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cf0c:	48 89 c2             	mov    rdx,rax
    cf0f:	48 8b 05 2a 45 00 00 	mov    rax,QWORD PTR [rip+0x452a]        # 11440 <rax>
    cf16:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cf19:	48 89 10             	mov    QWORD PTR [rax],rdx
    cf1c:	48 8b 05 1d 45 00 00 	mov    rax,QWORD PTR [rip+0x451d]        # 11440 <rax>
    cf23:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    cf26:	48 8b 05 13 45 00 00 	mov    rax,QWORD PTR [rip+0x4513]        # 11440 <rax>
    cf2d:	48 83 ea 10          	sub    rdx,0x10
    cf31:	48 89 10             	mov    QWORD PTR [rax],rdx
    cf34:	48 8b 15 05 45 00 00 	mov    rdx,QWORD PTR [rip+0x4505]        # 11440 <rax>
    cf3b:	48 8b 05 76 45 00 00 	mov    rax,QWORD PTR [rip+0x4576]        # 114b8 <rdx>
    cf42:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cf45:	48 89 10             	mov    QWORD PTR [rax],rdx
    cf48:	48 8b 15 21 47 00 00 	mov    rdx,QWORD PTR [rip+0x4721]        # 11670 <s_bss>
    cf4f:	48 8b 05 ea 44 00 00 	mov    rax,QWORD PTR [rip+0x44ea]        # 11440 <rax>
    cf56:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    cf5a:	48 89 10             	mov    QWORD PTR [rax],rdx
    cf5d:	48 8b 05 54 45 00 00 	mov    rax,QWORD PTR [rip+0x4554]        # 114b8 <rdx>
    cf64:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cf67:	48 89 c2             	mov    rdx,rax
    cf6a:	48 8b 05 47 45 00 00 	mov    rax,QWORD PTR [rip+0x4547]        # 114b8 <rdx>
    cf71:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cf74:	48 89 10             	mov    QWORD PTR [rax],rdx
    cf77:	48 8b 05 3a 45 00 00 	mov    rax,QWORD PTR [rip+0x453a]        # 114b8 <rdx>
    cf7e:	48 8b 15 bb 44 00 00 	mov    rdx,QWORD PTR [rip+0x44bb]        # 11440 <rax>
    cf85:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cf88:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cf8b:	48 89 02             	mov    QWORD PTR [rdx],rax
    cf8e:	48 8b 15 db 46 00 00 	mov    rdx,QWORD PTR [rip+0x46db]        # 11670 <s_bss>
    cf95:	48 8b 05 1c 45 00 00 	mov    rax,QWORD PTR [rip+0x451c]        # 114b8 <rdx>
    cf9c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    cfa0:	48 89 10             	mov    QWORD PTR [rax],rdx
    cfa3:	48 8b 15 c6 46 00 00 	mov    rdx,QWORD PTR [rip+0x46c6]        # 11670 <s_bss>
    cfaa:	48 8b 05 8f 44 00 00 	mov    rax,QWORD PTR [rip+0x448f]        # 11440 <rax>
    cfb1:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    cfb8:	48 89 10             	mov    QWORD PTR [rax],rdx
    cfbb:	48 8b 05 f6 44 00 00 	mov    rax,QWORD PTR [rip+0x44f6]        # 114b8 <rdx>
    cfc2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cfc5:	48 89 c2             	mov    rdx,rax
    cfc8:	48 8b 05 e9 44 00 00 	mov    rax,QWORD PTR [rip+0x44e9]        # 114b8 <rdx>
    cfcf:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cfd2:	48 89 10             	mov    QWORD PTR [rax],rdx
    cfd5:	48 8b 05 dc 44 00 00 	mov    rax,QWORD PTR [rip+0x44dc]        # 114b8 <rdx>
    cfdc:	48 8b 15 5d 44 00 00 	mov    rdx,QWORD PTR [rip+0x445d]        # 11440 <rax>
    cfe3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    cfe6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    cfe9:	48 89 02             	mov    QWORD PTR [rdx],rax
    cfec:	e8 d5 58 ff ff       	call   28c6 <fib_rec>
    cff1:	48 8b 15 78 46 00 00 	mov    rdx,QWORD PTR [rip+0x4678]        # 11670 <s_bss>
    cff8:	48 8b 05 b9 44 00 00 	mov    rax,QWORD PTR [rip+0x44b9]        # 114b8 <rdx>
    cfff:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    d003:	48 89 10             	mov    QWORD PTR [rax],rdx
    d006:	48 8b 15 63 46 00 00 	mov    rdx,QWORD PTR [rip+0x4663]        # 11670 <s_bss>
    d00d:	48 8b 05 2c 44 00 00 	mov    rax,QWORD PTR [rip+0x442c]        # 11440 <rax>
    d014:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    d01b:	48 89 10             	mov    QWORD PTR [rax],rdx
    d01e:	48 8b 05 93 44 00 00 	mov    rax,QWORD PTR [rip+0x4493]        # 114b8 <rdx>
    d025:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d028:	48 89 c2             	mov    rdx,rax
    d02b:	48 8b 05 86 44 00 00 	mov    rax,QWORD PTR [rip+0x4486]        # 114b8 <rdx>
    d032:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d035:	48 89 10             	mov    QWORD PTR [rax],rdx
    d038:	48 8b 05 79 44 00 00 	mov    rax,QWORD PTR [rip+0x4479]        # 114b8 <rdx>
    d03f:	48 8b 15 fa 43 00 00 	mov    rdx,QWORD PTR [rip+0x43fa]        # 11440 <rax>
    d046:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d049:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d04c:	48 89 02             	mov    QWORD PTR [rdx],rax
    d04f:	48 8b 15 1a 46 00 00 	mov    rdx,QWORD PTR [rip+0x461a]        # 11670 <s_bss>
    d056:	48 8b 05 e3 43 00 00 	mov    rax,QWORD PTR [rip+0x43e3]        # 11440 <rax>
    d05d:	48 8b 92 40 02 00 00 	mov    rdx,QWORD PTR [rdx+0x240]
    d064:	48 89 10             	mov    QWORD PTR [rax],rdx
    d067:	48 8b 05 d2 43 00 00 	mov    rax,QWORD PTR [rip+0x43d2]        # 11440 <rax>
    d06e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    d071:	48 8b 05 40 44 00 00 	mov    rax,QWORD PTR [rip+0x4440]        # 114b8 <rdx>
    d078:	48 81 c2 e9 01 00 00 	add    rdx,0x1e9
    d07f:	48 89 10             	mov    QWORD PTR [rax],rdx
    d082:	48 8b 15 e7 45 00 00 	mov    rdx,QWORD PTR [rip+0x45e7]        # 11670 <s_bss>
    d089:	48 8b 05 b0 43 00 00 	mov    rax,QWORD PTR [rip+0x43b0]        # 11440 <rax>
    d090:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    d094:	48 89 10             	mov    QWORD PTR [rax],rdx
    d097:	48 8b 05 1a 44 00 00 	mov    rax,QWORD PTR [rip+0x441a]        # 114b8 <rdx>
    d09e:	48 8b 15 9b 43 00 00 	mov    rdx,QWORD PTR [rip+0x439b]        # 11440 <rax>
    d0a5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d0a8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d0ab:	48 89 02             	mov    QWORD PTR [rdx],rax
    d0ae:	48 8b 15 bb 45 00 00 	mov    rdx,QWORD PTR [rip+0x45bb]        # 11670 <s_bss>
    d0b5:	48 8b 05 fc 43 00 00 	mov    rax,QWORD PTR [rip+0x43fc]        # 114b8 <rdx>
    d0bc:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    d0c0:	48 89 10             	mov    QWORD PTR [rax],rdx
    d0c3:	48 8b 15 a6 45 00 00 	mov    rdx,QWORD PTR [rip+0x45a6]        # 11670 <s_bss>
    d0ca:	48 8b 05 6f 43 00 00 	mov    rax,QWORD PTR [rip+0x436f]        # 11440 <rax>
    d0d1:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    d0d8:	48 89 10             	mov    QWORD PTR [rax],rdx
    d0db:	48 8b 05 d6 43 00 00 	mov    rax,QWORD PTR [rip+0x43d6]        # 114b8 <rdx>
    d0e2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d0e5:	48 89 c2             	mov    rdx,rax
    d0e8:	48 8b 05 c9 43 00 00 	mov    rax,QWORD PTR [rip+0x43c9]        # 114b8 <rdx>
    d0ef:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d0f2:	48 89 10             	mov    QWORD PTR [rax],rdx
    d0f5:	48 8b 05 bc 43 00 00 	mov    rax,QWORD PTR [rip+0x43bc]        # 114b8 <rdx>
    d0fc:	48 8b 15 3d 43 00 00 	mov    rdx,QWORD PTR [rip+0x433d]        # 11440 <rax>
    d103:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d106:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d109:	48 89 02             	mov    QWORD PTR [rdx],rax
    d10c:	48 8b 15 5d 45 00 00 	mov    rdx,QWORD PTR [rip+0x455d]        # 11670 <s_bss>
    d113:	48 8b 05 26 43 00 00 	mov    rax,QWORD PTR [rip+0x4326]        # 11440 <rax>
    d11a:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    d11e:	48 89 10             	mov    QWORD PTR [rax],rdx
    d121:	48 8b 05 18 43 00 00 	mov    rax,QWORD PTR [rip+0x4318]        # 11440 <rax>
    d128:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d12b:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    d132:	48 8b 15 37 45 00 00 	mov    rdx,QWORD PTR [rip+0x4537]        # 11670 <s_bss>
    d139:	48 8b 05 00 43 00 00 	mov    rax,QWORD PTR [rip+0x4300]        # 11440 <rax>
    d140:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    d147:	48 89 10             	mov    QWORD PTR [rax],rdx
    d14a:	48 8b 05 ef 42 00 00 	mov    rax,QWORD PTR [rip+0x42ef]        # 11440 <rax>
    d151:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d154:	48 89 c2             	mov    rdx,rax
    d157:	48 8b 05 e2 42 00 00 	mov    rax,QWORD PTR [rip+0x42e2]        # 11440 <rax>
    d15e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d161:	48 89 10             	mov    QWORD PTR [rax],rdx
    d164:	48 8b 15 05 45 00 00 	mov    rdx,QWORD PTR [rip+0x4505]        # 11670 <s_bss>
    d16b:	48 8b 05 46 43 00 00 	mov    rax,QWORD PTR [rip+0x4346]        # 114b8 <rdx>
    d172:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    d179:	48 89 10             	mov    QWORD PTR [rax],rdx
    d17c:	48 8b 05 35 43 00 00 	mov    rax,QWORD PTR [rip+0x4335]        # 114b8 <rdx>
    d183:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d186:	48 89 c2             	mov    rdx,rax
    d189:	48 8b 05 28 43 00 00 	mov    rax,QWORD PTR [rip+0x4328]        # 114b8 <rdx>
    d190:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d193:	48 89 10             	mov    QWORD PTR [rax],rdx
    d196:	48 8b 15 a3 42 00 00 	mov    rdx,QWORD PTR [rip+0x42a3]        # 11440 <rax>
    d19d:	48 8b 05 3c 43 00 00 	mov    rax,QWORD PTR [rip+0x433c]        # 114e0 <rsi>
    d1a4:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d1a7:	48 89 10             	mov    QWORD PTR [rax],rdx
    d1aa:	48 8b 15 07 43 00 00 	mov    rdx,QWORD PTR [rip+0x4307]        # 114b8 <rdx>
    d1b1:	48 8b 05 48 43 00 00 	mov    rax,QWORD PTR [rip+0x4348]        # 11500 <rdi>
    d1b8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d1bb:	48 89 10             	mov    QWORD PTR [rax],rdx
    d1be:	48 8b 05 83 42 00 00 	mov    rax,QWORD PTR [rip+0x4283]        # 11448 <eax>
    d1c5:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    d1cc:	48 8b 05 0d 43 00 00 	mov    rax,QWORD PTR [rip+0x430d]        # 114e0 <rsi>
    d1d3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d1d6:	48 8b 15 23 43 00 00 	mov    rdx,QWORD PTR [rip+0x4323]        # 11500 <rdi>
    d1dd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d1e0:	48 89 c6             	mov    rsi,rax
    d1e3:	48 89 d7             	mov    rdi,rdx
    d1e6:	b8 00 00 00 00       	mov    eax,0x0
    d1eb:	e8 d0 3e ff ff       	call   10c0 <printf@plt>
    d1f0:	89 c2                	mov    edx,eax
    d1f2:	48 8b 05 4f 42 00 00 	mov    rax,QWORD PTR [rip+0x424f]        # 11448 <eax>
    d1f9:	89 d2                	mov    edx,edx
    d1fb:	48 89 10             	mov    QWORD PTR [rax],rdx
    d1fe:	48 8b 15 43 42 00 00 	mov    rdx,QWORD PTR [rip+0x4243]        # 11448 <eax>
    d205:	48 8b 05 b4 42 00 00 	mov    rax,QWORD PTR [rip+0x42b4]        # 114c0 <edx>
    d20c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d20f:	48 89 10             	mov    QWORD PTR [rax],rdx
    d212:	48 8b 15 57 44 00 00 	mov    rdx,QWORD PTR [rip+0x4457]        # 11670 <s_bss>
    d219:	48 8b 05 20 42 00 00 	mov    rax,QWORD PTR [rip+0x4220]        # 11440 <rax>
    d220:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    d224:	48 89 10             	mov    QWORD PTR [rax],rdx
    d227:	48 8b 15 92 42 00 00 	mov    rdx,QWORD PTR [rip+0x4292]        # 114c0 <edx>
    d22e:	48 8b 05 8b 42 00 00 	mov    rax,QWORD PTR [rip+0x428b]        # 114c0 <edx>
    d235:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d238:	48 89 10             	mov    QWORD PTR [rax],rdx
    d23b:	48 8b 05 76 42 00 00 	mov    rax,QWORD PTR [rip+0x4276]        # 114b8 <rdx>
    d242:	48 8b 15 f7 41 00 00 	mov    rdx,QWORD PTR [rip+0x41f7]        # 11440 <rax>
    d249:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d24c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d24f:	48 89 02             	mov    QWORD PTR [rdx],rax
    d252:	48 8b 15 17 44 00 00 	mov    rdx,QWORD PTR [rip+0x4417]        # 11670 <s_bss>
    d259:	48 8b 05 e0 41 00 00 	mov    rax,QWORD PTR [rip+0x41e0]        # 11440 <rax>
    d260:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    d267:	48 89 10             	mov    QWORD PTR [rax],rdx
    d26a:	48 8b 05 cf 41 00 00 	mov    rax,QWORD PTR [rip+0x41cf]        # 11440 <rax>
    d271:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d274:	48 89 c2             	mov    rdx,rax
    d277:	48 8b 05 c2 41 00 00 	mov    rax,QWORD PTR [rip+0x41c2]        # 11440 <rax>
    d27e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d281:	48 89 10             	mov    QWORD PTR [rax],rdx
    d284:	48 8b 05 b5 41 00 00 	mov    rax,QWORD PTR [rip+0x41b5]        # 11440 <rax>
    d28b:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    d28e:	48 8b 05 ab 41 00 00 	mov    rax,QWORD PTR [rip+0x41ab]        # 11440 <rax>
    d295:	48 83 ea 10          	sub    rdx,0x10
    d299:	48 89 10             	mov    QWORD PTR [rax],rdx
    d29c:	48 8b 15 9d 41 00 00 	mov    rdx,QWORD PTR [rip+0x419d]        # 11440 <rax>
    d2a3:	48 8b 05 0e 42 00 00 	mov    rax,QWORD PTR [rip+0x420e]        # 114b8 <rdx>
    d2aa:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d2ad:	48 89 10             	mov    QWORD PTR [rax],rdx
    d2b0:	48 8b 15 b9 43 00 00 	mov    rdx,QWORD PTR [rip+0x43b9]        # 11670 <s_bss>
    d2b7:	48 8b 05 82 41 00 00 	mov    rax,QWORD PTR [rip+0x4182]        # 11440 <rax>
    d2be:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    d2c2:	48 89 10             	mov    QWORD PTR [rax],rdx
    d2c5:	48 8b 05 ec 41 00 00 	mov    rax,QWORD PTR [rip+0x41ec]        # 114b8 <rdx>
    d2cc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d2cf:	48 89 c2             	mov    rdx,rax
    d2d2:	48 8b 05 df 41 00 00 	mov    rax,QWORD PTR [rip+0x41df]        # 114b8 <rdx>
    d2d9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d2dc:	48 89 10             	mov    QWORD PTR [rax],rdx
    d2df:	48 8b 05 d2 41 00 00 	mov    rax,QWORD PTR [rip+0x41d2]        # 114b8 <rdx>
    d2e6:	48 8b 15 53 41 00 00 	mov    rdx,QWORD PTR [rip+0x4153]        # 11440 <rax>
    d2ed:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d2f0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d2f3:	48 89 02             	mov    QWORD PTR [rdx],rax
    d2f6:	48 8b 15 73 43 00 00 	mov    rdx,QWORD PTR [rip+0x4373]        # 11670 <s_bss>
    d2fd:	48 8b 05 b4 41 00 00 	mov    rax,QWORD PTR [rip+0x41b4]        # 114b8 <rdx>
    d304:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    d308:	48 89 10             	mov    QWORD PTR [rax],rdx
    d30b:	48 8b 15 5e 43 00 00 	mov    rdx,QWORD PTR [rip+0x435e]        # 11670 <s_bss>
    d312:	48 8b 05 27 41 00 00 	mov    rax,QWORD PTR [rip+0x4127]        # 11440 <rax>
    d319:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    d320:	48 89 10             	mov    QWORD PTR [rax],rdx
    d323:	48 8b 05 8e 41 00 00 	mov    rax,QWORD PTR [rip+0x418e]        # 114b8 <rdx>
    d32a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d32d:	48 89 c2             	mov    rdx,rax
    d330:	48 8b 05 81 41 00 00 	mov    rax,QWORD PTR [rip+0x4181]        # 114b8 <rdx>
    d337:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d33a:	48 89 10             	mov    QWORD PTR [rax],rdx
    d33d:	48 8b 05 74 41 00 00 	mov    rax,QWORD PTR [rip+0x4174]        # 114b8 <rdx>
    d344:	48 8b 15 f5 40 00 00 	mov    rdx,QWORD PTR [rip+0x40f5]        # 11440 <rax>
    d34b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d34e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d351:	48 89 02             	mov    QWORD PTR [rdx],rax
    d354:	e8 67 5e ff ff       	call   31c0 <fib_tbl_static>
    d359:	48 8b 15 10 43 00 00 	mov    rdx,QWORD PTR [rip+0x4310]        # 11670 <s_bss>
    d360:	48 8b 05 51 41 00 00 	mov    rax,QWORD PTR [rip+0x4151]        # 114b8 <rdx>
    d367:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    d36b:	48 89 10             	mov    QWORD PTR [rax],rdx
    d36e:	48 8b 15 fb 42 00 00 	mov    rdx,QWORD PTR [rip+0x42fb]        # 11670 <s_bss>
    d375:	48 8b 05 c4 40 00 00 	mov    rax,QWORD PTR [rip+0x40c4]        # 11440 <rax>
    d37c:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    d383:	48 89 10             	mov    QWORD PTR [rax],rdx
    d386:	48 8b 05 2b 41 00 00 	mov    rax,QWORD PTR [rip+0x412b]        # 114b8 <rdx>
    d38d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d390:	48 89 c2             	mov    rdx,rax
    d393:	48 8b 05 1e 41 00 00 	mov    rax,QWORD PTR [rip+0x411e]        # 114b8 <rdx>
    d39a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d39d:	48 89 10             	mov    QWORD PTR [rax],rdx
    d3a0:	48 8b 05 11 41 00 00 	mov    rax,QWORD PTR [rip+0x4111]        # 114b8 <rdx>
    d3a7:	48 8b 15 92 40 00 00 	mov    rdx,QWORD PTR [rip+0x4092]        # 11440 <rax>
    d3ae:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d3b1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d3b4:	48 89 02             	mov    QWORD PTR [rdx],rax
    d3b7:	48 8b 15 b2 42 00 00 	mov    rdx,QWORD PTR [rip+0x42b2]        # 11670 <s_bss>
    d3be:	48 8b 05 7b 40 00 00 	mov    rax,QWORD PTR [rip+0x407b]        # 11440 <rax>
    d3c5:	48 8b 92 40 02 00 00 	mov    rdx,QWORD PTR [rdx+0x240]
    d3cc:	48 89 10             	mov    QWORD PTR [rax],rdx
    d3cf:	48 8b 05 6a 40 00 00 	mov    rax,QWORD PTR [rip+0x406a]        # 11440 <rax>
    d3d6:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    d3d9:	48 8b 05 d8 40 00 00 	mov    rax,QWORD PTR [rip+0x40d8]        # 114b8 <rdx>
    d3e0:	48 81 c2 f8 01 00 00 	add    rdx,0x1f8
    d3e7:	48 89 10             	mov    QWORD PTR [rax],rdx
    d3ea:	48 8b 15 7f 42 00 00 	mov    rdx,QWORD PTR [rip+0x427f]        # 11670 <s_bss>
    d3f1:	48 8b 05 48 40 00 00 	mov    rax,QWORD PTR [rip+0x4048]        # 11440 <rax>
    d3f8:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    d3fc:	48 89 10             	mov    QWORD PTR [rax],rdx
    d3ff:	48 8b 05 b2 40 00 00 	mov    rax,QWORD PTR [rip+0x40b2]        # 114b8 <rdx>
    d406:	48 8b 15 33 40 00 00 	mov    rdx,QWORD PTR [rip+0x4033]        # 11440 <rax>
    d40d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d410:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d413:	48 89 02             	mov    QWORD PTR [rdx],rax
    d416:	48 8b 15 53 42 00 00 	mov    rdx,QWORD PTR [rip+0x4253]        # 11670 <s_bss>
    d41d:	48 8b 05 94 40 00 00 	mov    rax,QWORD PTR [rip+0x4094]        # 114b8 <rdx>
    d424:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    d428:	48 89 10             	mov    QWORD PTR [rax],rdx
    d42b:	48 8b 15 3e 42 00 00 	mov    rdx,QWORD PTR [rip+0x423e]        # 11670 <s_bss>
    d432:	48 8b 05 07 40 00 00 	mov    rax,QWORD PTR [rip+0x4007]        # 11440 <rax>
    d439:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    d440:	48 89 10             	mov    QWORD PTR [rax],rdx
    d443:	48 8b 05 6e 40 00 00 	mov    rax,QWORD PTR [rip+0x406e]        # 114b8 <rdx>
    d44a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d44d:	48 89 c2             	mov    rdx,rax
    d450:	48 8b 05 61 40 00 00 	mov    rax,QWORD PTR [rip+0x4061]        # 114b8 <rdx>
    d457:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d45a:	48 89 10             	mov    QWORD PTR [rax],rdx
    d45d:	48 8b 05 54 40 00 00 	mov    rax,QWORD PTR [rip+0x4054]        # 114b8 <rdx>
    d464:	48 8b 15 d5 3f 00 00 	mov    rdx,QWORD PTR [rip+0x3fd5]        # 11440 <rax>
    d46b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d46e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d471:	48 89 02             	mov    QWORD PTR [rdx],rax
    d474:	48 8b 15 f5 41 00 00 	mov    rdx,QWORD PTR [rip+0x41f5]        # 11670 <s_bss>
    d47b:	48 8b 05 be 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fbe]        # 11440 <rax>
    d482:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    d486:	48 89 10             	mov    QWORD PTR [rax],rdx
    d489:	48 8b 05 b0 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fb0]        # 11440 <rax>
    d490:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d493:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    d49a:	48 8b 15 cf 41 00 00 	mov    rdx,QWORD PTR [rip+0x41cf]        # 11670 <s_bss>
    d4a1:	48 8b 05 98 3f 00 00 	mov    rax,QWORD PTR [rip+0x3f98]        # 11440 <rax>
    d4a8:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    d4af:	48 89 10             	mov    QWORD PTR [rax],rdx
    d4b2:	48 8b 05 87 3f 00 00 	mov    rax,QWORD PTR [rip+0x3f87]        # 11440 <rax>
    d4b9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d4bc:	48 89 c2             	mov    rdx,rax
    d4bf:	48 8b 05 7a 3f 00 00 	mov    rax,QWORD PTR [rip+0x3f7a]        # 11440 <rax>
    d4c6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d4c9:	48 89 10             	mov    QWORD PTR [rax],rdx
    d4cc:	48 8b 15 9d 41 00 00 	mov    rdx,QWORD PTR [rip+0x419d]        # 11670 <s_bss>
    d4d3:	48 8b 05 de 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fde]        # 114b8 <rdx>
    d4da:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    d4e1:	48 89 10             	mov    QWORD PTR [rax],rdx
    d4e4:	48 8b 05 cd 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fcd]        # 114b8 <rdx>
    d4eb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d4ee:	48 89 c2             	mov    rdx,rax
    d4f1:	48 8b 05 c0 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fc0]        # 114b8 <rdx>
    d4f8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d4fb:	48 89 10             	mov    QWORD PTR [rax],rdx
    d4fe:	48 8b 15 3b 3f 00 00 	mov    rdx,QWORD PTR [rip+0x3f3b]        # 11440 <rax>
    d505:	48 8b 05 d4 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fd4]        # 114e0 <rsi>
    d50c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d50f:	48 89 10             	mov    QWORD PTR [rax],rdx
    d512:	48 8b 15 9f 3f 00 00 	mov    rdx,QWORD PTR [rip+0x3f9f]        # 114b8 <rdx>
    d519:	48 8b 05 e0 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fe0]        # 11500 <rdi>
    d520:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d523:	48 89 10             	mov    QWORD PTR [rax],rdx
    d526:	48 8b 05 1b 3f 00 00 	mov    rax,QWORD PTR [rip+0x3f1b]        # 11448 <eax>
    d52d:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    d534:	48 8b 05 a5 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fa5]        # 114e0 <rsi>
    d53b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d53e:	48 8b 15 bb 3f 00 00 	mov    rdx,QWORD PTR [rip+0x3fbb]        # 11500 <rdi>
    d545:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d548:	48 89 c6             	mov    rsi,rax
    d54b:	48 89 d7             	mov    rdi,rdx
    d54e:	b8 00 00 00 00       	mov    eax,0x0
    d553:	e8 68 3b ff ff       	call   10c0 <printf@plt>
    d558:	89 c2                	mov    edx,eax
    d55a:	48 8b 05 e7 3e 00 00 	mov    rax,QWORD PTR [rip+0x3ee7]        # 11448 <eax>
    d561:	89 d2                	mov    edx,edx
    d563:	48 89 10             	mov    QWORD PTR [rax],rdx
    d566:	48 8b 15 db 3e 00 00 	mov    rdx,QWORD PTR [rip+0x3edb]        # 11448 <eax>
    d56d:	48 8b 05 4c 3f 00 00 	mov    rax,QWORD PTR [rip+0x3f4c]        # 114c0 <edx>
    d574:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d577:	48 89 10             	mov    QWORD PTR [rax],rdx
    d57a:	48 8b 15 ef 40 00 00 	mov    rdx,QWORD PTR [rip+0x40ef]        # 11670 <s_bss>
    d581:	48 8b 05 b8 3e 00 00 	mov    rax,QWORD PTR [rip+0x3eb8]        # 11440 <rax>
    d588:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    d58c:	48 89 10             	mov    QWORD PTR [rax],rdx
    d58f:	48 8b 15 2a 3f 00 00 	mov    rdx,QWORD PTR [rip+0x3f2a]        # 114c0 <edx>
    d596:	48 8b 05 23 3f 00 00 	mov    rax,QWORD PTR [rip+0x3f23]        # 114c0 <edx>
    d59d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d5a0:	48 89 10             	mov    QWORD PTR [rax],rdx
    d5a3:	48 8b 05 0e 3f 00 00 	mov    rax,QWORD PTR [rip+0x3f0e]        # 114b8 <rdx>
    d5aa:	48 8b 15 8f 3e 00 00 	mov    rdx,QWORD PTR [rip+0x3e8f]        # 11440 <rax>
    d5b1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d5b4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d5b7:	48 89 02             	mov    QWORD PTR [rdx],rax
    d5ba:	48 8b 15 af 40 00 00 	mov    rdx,QWORD PTR [rip+0x40af]        # 11670 <s_bss>
    d5c1:	48 8b 05 78 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e78]        # 11440 <rax>
    d5c8:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    d5cf:	48 89 10             	mov    QWORD PTR [rax],rdx
    d5d2:	48 8b 05 67 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e67]        # 11440 <rax>
    d5d9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d5dc:	48 89 c2             	mov    rdx,rax
    d5df:	48 8b 05 5a 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e5a]        # 11440 <rax>
    d5e6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d5e9:	48 89 10             	mov    QWORD PTR [rax],rdx
    d5ec:	48 8b 05 4d 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e4d]        # 11440 <rax>
    d5f3:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    d5f6:	48 8b 05 43 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e43]        # 11440 <rax>
    d5fd:	48 83 ea 10          	sub    rdx,0x10
    d601:	48 89 10             	mov    QWORD PTR [rax],rdx
    d604:	48 8b 15 35 3e 00 00 	mov    rdx,QWORD PTR [rip+0x3e35]        # 11440 <rax>
    d60b:	48 8b 05 a6 3e 00 00 	mov    rax,QWORD PTR [rip+0x3ea6]        # 114b8 <rdx>
    d612:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d615:	48 89 10             	mov    QWORD PTR [rax],rdx
    d618:	48 8b 15 51 40 00 00 	mov    rdx,QWORD PTR [rip+0x4051]        # 11670 <s_bss>
    d61f:	48 8b 05 1a 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e1a]        # 11440 <rax>
    d626:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    d62a:	48 89 10             	mov    QWORD PTR [rax],rdx
    d62d:	48 8b 05 84 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e84]        # 114b8 <rdx>
    d634:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d637:	48 89 c2             	mov    rdx,rax
    d63a:	48 8b 05 77 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e77]        # 114b8 <rdx>
    d641:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d644:	48 89 10             	mov    QWORD PTR [rax],rdx
    d647:	48 8b 05 6a 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e6a]        # 114b8 <rdx>
    d64e:	48 8b 15 eb 3d 00 00 	mov    rdx,QWORD PTR [rip+0x3deb]        # 11440 <rax>
    d655:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d658:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d65b:	48 89 02             	mov    QWORD PTR [rdx],rax
    d65e:	48 8b 15 0b 40 00 00 	mov    rdx,QWORD PTR [rip+0x400b]        # 11670 <s_bss>
    d665:	48 8b 05 4c 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e4c]        # 114b8 <rdx>
    d66c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    d670:	48 89 10             	mov    QWORD PTR [rax],rdx
    d673:	48 8b 15 f6 3f 00 00 	mov    rdx,QWORD PTR [rip+0x3ff6]        # 11670 <s_bss>
    d67a:	48 8b 05 bf 3d 00 00 	mov    rax,QWORD PTR [rip+0x3dbf]        # 11440 <rax>
    d681:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    d688:	48 89 10             	mov    QWORD PTR [rax],rdx
    d68b:	48 8b 05 26 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e26]        # 114b8 <rdx>
    d692:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d695:	48 89 c2             	mov    rdx,rax
    d698:	48 8b 05 19 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e19]        # 114b8 <rdx>
    d69f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d6a2:	48 89 10             	mov    QWORD PTR [rax],rdx
    d6a5:	48 8b 05 0c 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e0c]        # 114b8 <rdx>
    d6ac:	48 8b 15 8d 3d 00 00 	mov    rdx,QWORD PTR [rip+0x3d8d]        # 11440 <rax>
    d6b3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d6b6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d6b9:	48 89 02             	mov    QWORD PTR [rdx],rax
    d6bc:	e8 0f 83 ff ff       	call   59d0 <fib_tbl_dyn>
    d6c1:	48 8b 15 a8 3f 00 00 	mov    rdx,QWORD PTR [rip+0x3fa8]        # 11670 <s_bss>
    d6c8:	48 8b 05 e9 3d 00 00 	mov    rax,QWORD PTR [rip+0x3de9]        # 114b8 <rdx>
    d6cf:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    d6d3:	48 89 10             	mov    QWORD PTR [rax],rdx
    d6d6:	48 8b 15 93 3f 00 00 	mov    rdx,QWORD PTR [rip+0x3f93]        # 11670 <s_bss>
    d6dd:	48 8b 05 5c 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d5c]        # 11440 <rax>
    d6e4:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    d6eb:	48 89 10             	mov    QWORD PTR [rax],rdx
    d6ee:	48 8b 05 c3 3d 00 00 	mov    rax,QWORD PTR [rip+0x3dc3]        # 114b8 <rdx>
    d6f5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d6f8:	48 89 c2             	mov    rdx,rax
    d6fb:	48 8b 05 b6 3d 00 00 	mov    rax,QWORD PTR [rip+0x3db6]        # 114b8 <rdx>
    d702:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d705:	48 89 10             	mov    QWORD PTR [rax],rdx
    d708:	48 8b 05 a9 3d 00 00 	mov    rax,QWORD PTR [rip+0x3da9]        # 114b8 <rdx>
    d70f:	48 8b 15 2a 3d 00 00 	mov    rdx,QWORD PTR [rip+0x3d2a]        # 11440 <rax>
    d716:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d719:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d71c:	48 89 02             	mov    QWORD PTR [rdx],rax
    d71f:	48 8b 15 4a 3f 00 00 	mov    rdx,QWORD PTR [rip+0x3f4a]        # 11670 <s_bss>
    d726:	48 8b 05 13 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d13]        # 11440 <rax>
    d72d:	48 8b 92 40 02 00 00 	mov    rdx,QWORD PTR [rdx+0x240]
    d734:	48 89 10             	mov    QWORD PTR [rax],rdx
    d737:	48 8b 05 02 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d02]        # 11440 <rax>
    d73e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    d741:	48 8b 05 70 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d70]        # 114b8 <rdx>
    d748:	48 81 c2 07 02 00 00 	add    rdx,0x207
    d74f:	48 89 10             	mov    QWORD PTR [rax],rdx
    d752:	48 8b 15 17 3f 00 00 	mov    rdx,QWORD PTR [rip+0x3f17]        # 11670 <s_bss>
    d759:	48 8b 05 e0 3c 00 00 	mov    rax,QWORD PTR [rip+0x3ce0]        # 11440 <rax>
    d760:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    d764:	48 89 10             	mov    QWORD PTR [rax],rdx
    d767:	48 8b 05 4a 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d4a]        # 114b8 <rdx>
    d76e:	48 8b 15 cb 3c 00 00 	mov    rdx,QWORD PTR [rip+0x3ccb]        # 11440 <rax>
    d775:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d778:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d77b:	48 89 02             	mov    QWORD PTR [rdx],rax
    d77e:	48 8b 15 eb 3e 00 00 	mov    rdx,QWORD PTR [rip+0x3eeb]        # 11670 <s_bss>
    d785:	48 8b 05 2c 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d2c]        # 114b8 <rdx>
    d78c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    d790:	48 89 10             	mov    QWORD PTR [rax],rdx
    d793:	48 8b 15 d6 3e 00 00 	mov    rdx,QWORD PTR [rip+0x3ed6]        # 11670 <s_bss>
    d79a:	48 8b 05 9f 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c9f]        # 11440 <rax>
    d7a1:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    d7a8:	48 89 10             	mov    QWORD PTR [rax],rdx
    d7ab:	48 8b 05 06 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d06]        # 114b8 <rdx>
    d7b2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d7b5:	48 89 c2             	mov    rdx,rax
    d7b8:	48 8b 05 f9 3c 00 00 	mov    rax,QWORD PTR [rip+0x3cf9]        # 114b8 <rdx>
    d7bf:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d7c2:	48 89 10             	mov    QWORD PTR [rax],rdx
    d7c5:	48 8b 05 ec 3c 00 00 	mov    rax,QWORD PTR [rip+0x3cec]        # 114b8 <rdx>
    d7cc:	48 8b 15 6d 3c 00 00 	mov    rdx,QWORD PTR [rip+0x3c6d]        # 11440 <rax>
    d7d3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d7d6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d7d9:	48 89 02             	mov    QWORD PTR [rdx],rax
    d7dc:	48 8b 15 8d 3e 00 00 	mov    rdx,QWORD PTR [rip+0x3e8d]        # 11670 <s_bss>
    d7e3:	48 8b 05 56 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c56]        # 11440 <rax>
    d7ea:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    d7ee:	48 89 10             	mov    QWORD PTR [rax],rdx
    d7f1:	48 8b 05 48 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c48]        # 11440 <rax>
    d7f8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d7fb:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    d802:	48 8b 15 67 3e 00 00 	mov    rdx,QWORD PTR [rip+0x3e67]        # 11670 <s_bss>
    d809:	48 8b 05 30 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c30]        # 11440 <rax>
    d810:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    d817:	48 89 10             	mov    QWORD PTR [rax],rdx
    d81a:	48 8b 05 1f 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c1f]        # 11440 <rax>
    d821:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d824:	48 89 c2             	mov    rdx,rax
    d827:	48 8b 05 12 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c12]        # 11440 <rax>
    d82e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d831:	48 89 10             	mov    QWORD PTR [rax],rdx
    d834:	48 8b 15 35 3e 00 00 	mov    rdx,QWORD PTR [rip+0x3e35]        # 11670 <s_bss>
    d83b:	48 8b 05 76 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c76]        # 114b8 <rdx>
    d842:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    d849:	48 89 10             	mov    QWORD PTR [rax],rdx
    d84c:	48 8b 05 65 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c65]        # 114b8 <rdx>
    d853:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d856:	48 89 c2             	mov    rdx,rax
    d859:	48 8b 05 58 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c58]        # 114b8 <rdx>
    d860:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d863:	48 89 10             	mov    QWORD PTR [rax],rdx
    d866:	48 8b 15 d3 3b 00 00 	mov    rdx,QWORD PTR [rip+0x3bd3]        # 11440 <rax>
    d86d:	48 8b 05 6c 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c6c]        # 114e0 <rsi>
    d874:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d877:	48 89 10             	mov    QWORD PTR [rax],rdx
    d87a:	48 8b 15 37 3c 00 00 	mov    rdx,QWORD PTR [rip+0x3c37]        # 114b8 <rdx>
    d881:	48 8b 05 78 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c78]        # 11500 <rdi>
    d888:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d88b:	48 89 10             	mov    QWORD PTR [rax],rdx
    d88e:	48 8b 05 b3 3b 00 00 	mov    rax,QWORD PTR [rip+0x3bb3]        # 11448 <eax>
    d895:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    d89c:	48 8b 05 3d 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c3d]        # 114e0 <rsi>
    d8a3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d8a6:	48 8b 15 53 3c 00 00 	mov    rdx,QWORD PTR [rip+0x3c53]        # 11500 <rdi>
    d8ad:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d8b0:	48 89 c6             	mov    rsi,rax
    d8b3:	48 89 d7             	mov    rdi,rdx
    d8b6:	b8 00 00 00 00       	mov    eax,0x0
    d8bb:	e8 00 38 ff ff       	call   10c0 <printf@plt>
    d8c0:	89 c2                	mov    edx,eax
    d8c2:	48 8b 05 7f 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b7f]        # 11448 <eax>
    d8c9:	89 d2                	mov    edx,edx
    d8cb:	48 89 10             	mov    QWORD PTR [rax],rdx
    d8ce:	48 8b 15 73 3b 00 00 	mov    rdx,QWORD PTR [rip+0x3b73]        # 11448 <eax>
    d8d5:	48 8b 05 e4 3b 00 00 	mov    rax,QWORD PTR [rip+0x3be4]        # 114c0 <edx>
    d8dc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d8df:	48 89 10             	mov    QWORD PTR [rax],rdx
    d8e2:	48 8b 15 87 3d 00 00 	mov    rdx,QWORD PTR [rip+0x3d87]        # 11670 <s_bss>
    d8e9:	48 8b 05 50 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b50]        # 11440 <rax>
    d8f0:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    d8f4:	48 89 10             	mov    QWORD PTR [rax],rdx
    d8f7:	48 8b 15 c2 3b 00 00 	mov    rdx,QWORD PTR [rip+0x3bc2]        # 114c0 <edx>
    d8fe:	48 8b 05 bb 3b 00 00 	mov    rax,QWORD PTR [rip+0x3bbb]        # 114c0 <edx>
    d905:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d908:	48 89 10             	mov    QWORD PTR [rax],rdx
    d90b:	48 8b 05 a6 3b 00 00 	mov    rax,QWORD PTR [rip+0x3ba6]        # 114b8 <rdx>
    d912:	48 8b 15 27 3b 00 00 	mov    rdx,QWORD PTR [rip+0x3b27]        # 11440 <rax>
    d919:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d91c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d91f:	48 89 02             	mov    QWORD PTR [rdx],rax
    d922:	48 8b 15 47 3d 00 00 	mov    rdx,QWORD PTR [rip+0x3d47]        # 11670 <s_bss>
    d929:	48 8b 05 10 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b10]        # 11440 <rax>
    d930:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    d937:	48 89 10             	mov    QWORD PTR [rax],rdx
    d93a:	48 8b 05 ff 3a 00 00 	mov    rax,QWORD PTR [rip+0x3aff]        # 11440 <rax>
    d941:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d944:	48 89 c2             	mov    rdx,rax
    d947:	48 8b 05 f2 3a 00 00 	mov    rax,QWORD PTR [rip+0x3af2]        # 11440 <rax>
    d94e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d951:	48 89 10             	mov    QWORD PTR [rax],rdx
    d954:	48 8b 05 e5 3a 00 00 	mov    rax,QWORD PTR [rip+0x3ae5]        # 11440 <rax>
    d95b:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    d95e:	48 8b 05 db 3a 00 00 	mov    rax,QWORD PTR [rip+0x3adb]        # 11440 <rax>
    d965:	48 83 ea 10          	sub    rdx,0x10
    d969:	48 89 10             	mov    QWORD PTR [rax],rdx
    d96c:	48 8b 15 cd 3a 00 00 	mov    rdx,QWORD PTR [rip+0x3acd]        # 11440 <rax>
    d973:	48 8b 05 3e 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b3e]        # 114b8 <rdx>
    d97a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d97d:	48 89 10             	mov    QWORD PTR [rax],rdx
    d980:	48 8b 15 e9 3c 00 00 	mov    rdx,QWORD PTR [rip+0x3ce9]        # 11670 <s_bss>
    d987:	48 8b 05 b2 3a 00 00 	mov    rax,QWORD PTR [rip+0x3ab2]        # 11440 <rax>
    d98e:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    d992:	48 89 10             	mov    QWORD PTR [rax],rdx
    d995:	48 8b 05 1c 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b1c]        # 114b8 <rdx>
    d99c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d99f:	48 89 c2             	mov    rdx,rax
    d9a2:	48 8b 05 0f 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b0f]        # 114b8 <rdx>
    d9a9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d9ac:	48 89 10             	mov    QWORD PTR [rax],rdx
    d9af:	48 8b 05 02 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b02]        # 114b8 <rdx>
    d9b6:	48 8b 15 83 3a 00 00 	mov    rdx,QWORD PTR [rip+0x3a83]        # 11440 <rax>
    d9bd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    d9c0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d9c3:	48 89 02             	mov    QWORD PTR [rdx],rax
    d9c6:	48 8b 15 a3 3c 00 00 	mov    rdx,QWORD PTR [rip+0x3ca3]        # 11670 <s_bss>
    d9cd:	48 8b 05 e4 3a 00 00 	mov    rax,QWORD PTR [rip+0x3ae4]        # 114b8 <rdx>
    d9d4:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    d9d8:	48 89 10             	mov    QWORD PTR [rax],rdx
    d9db:	48 8b 15 8e 3c 00 00 	mov    rdx,QWORD PTR [rip+0x3c8e]        # 11670 <s_bss>
    d9e2:	48 8b 05 57 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a57]        # 11440 <rax>
    d9e9:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    d9f0:	48 89 10             	mov    QWORD PTR [rax],rdx
    d9f3:	48 8b 05 be 3a 00 00 	mov    rax,QWORD PTR [rip+0x3abe]        # 114b8 <rdx>
    d9fa:	48 8b 00             	mov    rax,QWORD PTR [rax]
    d9fd:	48 89 c2             	mov    rdx,rax
    da00:	48 8b 05 b1 3a 00 00 	mov    rax,QWORD PTR [rip+0x3ab1]        # 114b8 <rdx>
    da07:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    da0a:	48 89 10             	mov    QWORD PTR [rax],rdx
    da0d:	48 8b 05 a4 3a 00 00 	mov    rax,QWORD PTR [rip+0x3aa4]        # 114b8 <rdx>
    da14:	48 8b 15 25 3a 00 00 	mov    rdx,QWORD PTR [rip+0x3a25]        # 11440 <rax>
    da1b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    da1e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    da21:	48 89 02             	mov    QWORD PTR [rdx],rax
    da24:	e8 7c 8e ff ff       	call   68a5 <fib_loop>
    da29:	48 8b 15 40 3c 00 00 	mov    rdx,QWORD PTR [rip+0x3c40]        # 11670 <s_bss>
    da30:	48 8b 05 81 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a81]        # 114b8 <rdx>
    da37:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    da3b:	48 89 10             	mov    QWORD PTR [rax],rdx
    da3e:	48 8b 15 2b 3c 00 00 	mov    rdx,QWORD PTR [rip+0x3c2b]        # 11670 <s_bss>
    da45:	48 8b 05 f4 39 00 00 	mov    rax,QWORD PTR [rip+0x39f4]        # 11440 <rax>
    da4c:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    da53:	48 89 10             	mov    QWORD PTR [rax],rdx
    da56:	48 8b 05 5b 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a5b]        # 114b8 <rdx>
    da5d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    da60:	48 89 c2             	mov    rdx,rax
    da63:	48 8b 05 4e 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a4e]        # 114b8 <rdx>
    da6a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    da6d:	48 89 10             	mov    QWORD PTR [rax],rdx
    da70:	48 8b 05 41 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a41]        # 114b8 <rdx>
    da77:	48 8b 15 c2 39 00 00 	mov    rdx,QWORD PTR [rip+0x39c2]        # 11440 <rax>
    da7e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    da81:	48 8b 00             	mov    rax,QWORD PTR [rax]
    da84:	48 89 02             	mov    QWORD PTR [rdx],rax
    da87:	48 8b 15 e2 3b 00 00 	mov    rdx,QWORD PTR [rip+0x3be2]        # 11670 <s_bss>
    da8e:	48 8b 05 ab 39 00 00 	mov    rax,QWORD PTR [rip+0x39ab]        # 11440 <rax>
    da95:	48 8b 92 40 02 00 00 	mov    rdx,QWORD PTR [rdx+0x240]
    da9c:	48 89 10             	mov    QWORD PTR [rax],rdx
    da9f:	48 8b 05 9a 39 00 00 	mov    rax,QWORD PTR [rip+0x399a]        # 11440 <rax>
    daa6:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    daa9:	48 8b 05 08 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a08]        # 114b8 <rdx>
    dab0:	48 81 c2 16 02 00 00 	add    rdx,0x216
    dab7:	48 89 10             	mov    QWORD PTR [rax],rdx
    daba:	48 8b 15 af 3b 00 00 	mov    rdx,QWORD PTR [rip+0x3baf]        # 11670 <s_bss>
    dac1:	48 8b 05 78 39 00 00 	mov    rax,QWORD PTR [rip+0x3978]        # 11440 <rax>
    dac8:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    dacc:	48 89 10             	mov    QWORD PTR [rax],rdx
    dacf:	48 8b 05 e2 39 00 00 	mov    rax,QWORD PTR [rip+0x39e2]        # 114b8 <rdx>
    dad6:	48 8b 15 63 39 00 00 	mov    rdx,QWORD PTR [rip+0x3963]        # 11440 <rax>
    dadd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dae0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    dae3:	48 89 02             	mov    QWORD PTR [rdx],rax
    dae6:	48 8b 15 83 3b 00 00 	mov    rdx,QWORD PTR [rip+0x3b83]        # 11670 <s_bss>
    daed:	48 8b 05 c4 39 00 00 	mov    rax,QWORD PTR [rip+0x39c4]        # 114b8 <rdx>
    daf4:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    daf8:	48 89 10             	mov    QWORD PTR [rax],rdx
    dafb:	48 8b 15 6e 3b 00 00 	mov    rdx,QWORD PTR [rip+0x3b6e]        # 11670 <s_bss>
    db02:	48 8b 05 37 39 00 00 	mov    rax,QWORD PTR [rip+0x3937]        # 11440 <rax>
    db09:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    db10:	48 89 10             	mov    QWORD PTR [rax],rdx
    db13:	48 8b 05 9e 39 00 00 	mov    rax,QWORD PTR [rip+0x399e]        # 114b8 <rdx>
    db1a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    db1d:	48 89 c2             	mov    rdx,rax
    db20:	48 8b 05 91 39 00 00 	mov    rax,QWORD PTR [rip+0x3991]        # 114b8 <rdx>
    db27:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    db2a:	48 89 10             	mov    QWORD PTR [rax],rdx
    db2d:	48 8b 05 84 39 00 00 	mov    rax,QWORD PTR [rip+0x3984]        # 114b8 <rdx>
    db34:	48 8b 15 05 39 00 00 	mov    rdx,QWORD PTR [rip+0x3905]        # 11440 <rax>
    db3b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    db3e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    db41:	48 89 02             	mov    QWORD PTR [rdx],rax
    db44:	48 8b 15 25 3b 00 00 	mov    rdx,QWORD PTR [rip+0x3b25]        # 11670 <s_bss>
    db4b:	48 8b 05 ee 38 00 00 	mov    rax,QWORD PTR [rip+0x38ee]        # 11440 <rax>
    db52:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    db56:	48 89 10             	mov    QWORD PTR [rax],rdx
    db59:	48 8b 05 e0 38 00 00 	mov    rax,QWORD PTR [rip+0x38e0]        # 11440 <rax>
    db60:	48 8b 00             	mov    rax,QWORD PTR [rax]
    db63:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    db6a:	48 8b 15 ff 3a 00 00 	mov    rdx,QWORD PTR [rip+0x3aff]        # 11670 <s_bss>
    db71:	48 8b 05 c8 38 00 00 	mov    rax,QWORD PTR [rip+0x38c8]        # 11440 <rax>
    db78:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    db7f:	48 89 10             	mov    QWORD PTR [rax],rdx
    db82:	48 8b 05 b7 38 00 00 	mov    rax,QWORD PTR [rip+0x38b7]        # 11440 <rax>
    db89:	48 8b 00             	mov    rax,QWORD PTR [rax]
    db8c:	48 89 c2             	mov    rdx,rax
    db8f:	48 8b 05 aa 38 00 00 	mov    rax,QWORD PTR [rip+0x38aa]        # 11440 <rax>
    db96:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    db99:	48 89 10             	mov    QWORD PTR [rax],rdx
    db9c:	48 8b 15 cd 3a 00 00 	mov    rdx,QWORD PTR [rip+0x3acd]        # 11670 <s_bss>
    dba3:	48 8b 05 0e 39 00 00 	mov    rax,QWORD PTR [rip+0x390e]        # 114b8 <rdx>
    dbaa:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    dbb1:	48 89 10             	mov    QWORD PTR [rax],rdx
    dbb4:	48 8b 05 fd 38 00 00 	mov    rax,QWORD PTR [rip+0x38fd]        # 114b8 <rdx>
    dbbb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    dbbe:	48 89 c2             	mov    rdx,rax
    dbc1:	48 8b 05 f0 38 00 00 	mov    rax,QWORD PTR [rip+0x38f0]        # 114b8 <rdx>
    dbc8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dbcb:	48 89 10             	mov    QWORD PTR [rax],rdx
    dbce:	48 8b 15 6b 38 00 00 	mov    rdx,QWORD PTR [rip+0x386b]        # 11440 <rax>
    dbd5:	48 8b 05 04 39 00 00 	mov    rax,QWORD PTR [rip+0x3904]        # 114e0 <rsi>
    dbdc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dbdf:	48 89 10             	mov    QWORD PTR [rax],rdx
    dbe2:	48 8b 15 cf 38 00 00 	mov    rdx,QWORD PTR [rip+0x38cf]        # 114b8 <rdx>
    dbe9:	48 8b 05 10 39 00 00 	mov    rax,QWORD PTR [rip+0x3910]        # 11500 <rdi>
    dbf0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dbf3:	48 89 10             	mov    QWORD PTR [rax],rdx
    dbf6:	48 8b 05 4b 38 00 00 	mov    rax,QWORD PTR [rip+0x384b]        # 11448 <eax>
    dbfd:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    dc04:	48 8b 05 d5 38 00 00 	mov    rax,QWORD PTR [rip+0x38d5]        # 114e0 <rsi>
    dc0b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    dc0e:	48 8b 15 eb 38 00 00 	mov    rdx,QWORD PTR [rip+0x38eb]        # 11500 <rdi>
    dc15:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dc18:	48 89 c6             	mov    rsi,rax
    dc1b:	48 89 d7             	mov    rdi,rdx
    dc1e:	b8 00 00 00 00       	mov    eax,0x0
    dc23:	e8 98 34 ff ff       	call   10c0 <printf@plt>
    dc28:	89 c2                	mov    edx,eax
    dc2a:	48 8b 05 17 38 00 00 	mov    rax,QWORD PTR [rip+0x3817]        # 11448 <eax>
    dc31:	89 d2                	mov    edx,edx
    dc33:	48 89 10             	mov    QWORD PTR [rax],rdx
    dc36:	48 8b 15 0b 38 00 00 	mov    rdx,QWORD PTR [rip+0x380b]        # 11448 <eax>
    dc3d:	48 8b 05 7c 38 00 00 	mov    rax,QWORD PTR [rip+0x387c]        # 114c0 <edx>
    dc44:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dc47:	48 89 10             	mov    QWORD PTR [rax],rdx
    dc4a:	48 8b 15 1f 3a 00 00 	mov    rdx,QWORD PTR [rip+0x3a1f]        # 11670 <s_bss>
    dc51:	48 8b 05 e8 37 00 00 	mov    rax,QWORD PTR [rip+0x37e8]        # 11440 <rax>
    dc58:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    dc5c:	48 89 10             	mov    QWORD PTR [rax],rdx
    dc5f:	48 8b 15 5a 38 00 00 	mov    rdx,QWORD PTR [rip+0x385a]        # 114c0 <edx>
    dc66:	48 8b 05 53 38 00 00 	mov    rax,QWORD PTR [rip+0x3853]        # 114c0 <edx>
    dc6d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dc70:	48 89 10             	mov    QWORD PTR [rax],rdx
    dc73:	48 8b 05 3e 38 00 00 	mov    rax,QWORD PTR [rip+0x383e]        # 114b8 <rdx>
    dc7a:	48 8b 15 bf 37 00 00 	mov    rdx,QWORD PTR [rip+0x37bf]        # 11440 <rax>
    dc81:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dc84:	48 8b 00             	mov    rax,QWORD PTR [rax]
    dc87:	48 89 02             	mov    QWORD PTR [rdx],rax
    dc8a:	48 8b 15 df 39 00 00 	mov    rdx,QWORD PTR [rip+0x39df]        # 11670 <s_bss>
    dc91:	48 8b 05 a8 37 00 00 	mov    rax,QWORD PTR [rip+0x37a8]        # 11440 <rax>
    dc98:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    dc9f:	48 89 10             	mov    QWORD PTR [rax],rdx
    dca2:	48 8b 05 97 37 00 00 	mov    rax,QWORD PTR [rip+0x3797]        # 11440 <rax>
    dca9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    dcac:	48 89 c2             	mov    rdx,rax
    dcaf:	48 8b 05 8a 37 00 00 	mov    rax,QWORD PTR [rip+0x378a]        # 11440 <rax>
    dcb6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dcb9:	48 89 10             	mov    QWORD PTR [rax],rdx
    dcbc:	48 8b 05 7d 37 00 00 	mov    rax,QWORD PTR [rip+0x377d]        # 11440 <rax>
    dcc3:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    dcc6:	48 8b 05 73 37 00 00 	mov    rax,QWORD PTR [rip+0x3773]        # 11440 <rax>
    dccd:	48 83 ea 10          	sub    rdx,0x10
    dcd1:	48 89 10             	mov    QWORD PTR [rax],rdx
    dcd4:	48 8b 15 65 37 00 00 	mov    rdx,QWORD PTR [rip+0x3765]        # 11440 <rax>
    dcdb:	48 8b 05 d6 37 00 00 	mov    rax,QWORD PTR [rip+0x37d6]        # 114b8 <rdx>
    dce2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dce5:	48 89 10             	mov    QWORD PTR [rax],rdx
    dce8:	48 8b 15 81 39 00 00 	mov    rdx,QWORD PTR [rip+0x3981]        # 11670 <s_bss>
    dcef:	48 8b 05 4a 37 00 00 	mov    rax,QWORD PTR [rip+0x374a]        # 11440 <rax>
    dcf6:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    dcfa:	48 89 10             	mov    QWORD PTR [rax],rdx
    dcfd:	48 8b 05 b4 37 00 00 	mov    rax,QWORD PTR [rip+0x37b4]        # 114b8 <rdx>
    dd04:	48 8b 00             	mov    rax,QWORD PTR [rax]
    dd07:	48 89 c2             	mov    rdx,rax
    dd0a:	48 8b 05 a7 37 00 00 	mov    rax,QWORD PTR [rip+0x37a7]        # 114b8 <rdx>
    dd11:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dd14:	48 89 10             	mov    QWORD PTR [rax],rdx
    dd17:	48 8b 05 9a 37 00 00 	mov    rax,QWORD PTR [rip+0x379a]        # 114b8 <rdx>
    dd1e:	48 8b 15 1b 37 00 00 	mov    rdx,QWORD PTR [rip+0x371b]        # 11440 <rax>
    dd25:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dd28:	48 8b 00             	mov    rax,QWORD PTR [rax]
    dd2b:	48 89 02             	mov    QWORD PTR [rdx],rax
    dd2e:	48 8b 15 3b 39 00 00 	mov    rdx,QWORD PTR [rip+0x393b]        # 11670 <s_bss>
    dd35:	48 8b 05 7c 37 00 00 	mov    rax,QWORD PTR [rip+0x377c]        # 114b8 <rdx>
    dd3c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    dd40:	48 89 10             	mov    QWORD PTR [rax],rdx
    dd43:	48 8b 15 26 39 00 00 	mov    rdx,QWORD PTR [rip+0x3926]        # 11670 <s_bss>
    dd4a:	48 8b 05 ef 36 00 00 	mov    rax,QWORD PTR [rip+0x36ef]        # 11440 <rax>
    dd51:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    dd58:	48 89 10             	mov    QWORD PTR [rax],rdx
    dd5b:	48 8b 05 56 37 00 00 	mov    rax,QWORD PTR [rip+0x3756]        # 114b8 <rdx>
    dd62:	48 8b 00             	mov    rax,QWORD PTR [rax]
    dd65:	48 89 c2             	mov    rdx,rax
    dd68:	48 8b 05 49 37 00 00 	mov    rax,QWORD PTR [rip+0x3749]        # 114b8 <rdx>
    dd6f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dd72:	48 89 10             	mov    QWORD PTR [rax],rdx
    dd75:	48 8b 05 3c 37 00 00 	mov    rax,QWORD PTR [rip+0x373c]        # 114b8 <rdx>
    dd7c:	48 8b 15 bd 36 00 00 	mov    rdx,QWORD PTR [rip+0x36bd]        # 11440 <rax>
    dd83:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dd86:	48 8b 00             	mov    rax,QWORD PTR [rax]
    dd89:	48 89 02             	mov    QWORD PTR [rdx],rax
    dd8c:	e8 ac 99 ff ff       	call   773d <fib_switch>
    dd91:	48 8b 15 d8 38 00 00 	mov    rdx,QWORD PTR [rip+0x38d8]        # 11670 <s_bss>
    dd98:	48 8b 05 19 37 00 00 	mov    rax,QWORD PTR [rip+0x3719]        # 114b8 <rdx>
    dd9f:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    dda3:	48 89 10             	mov    QWORD PTR [rax],rdx
    dda6:	48 8b 15 c3 38 00 00 	mov    rdx,QWORD PTR [rip+0x38c3]        # 11670 <s_bss>
    ddad:	48 8b 05 8c 36 00 00 	mov    rax,QWORD PTR [rip+0x368c]        # 11440 <rax>
    ddb4:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    ddbb:	48 89 10             	mov    QWORD PTR [rax],rdx
    ddbe:	48 8b 05 f3 36 00 00 	mov    rax,QWORD PTR [rip+0x36f3]        # 114b8 <rdx>
    ddc5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ddc8:	48 89 c2             	mov    rdx,rax
    ddcb:	48 8b 05 e6 36 00 00 	mov    rax,QWORD PTR [rip+0x36e6]        # 114b8 <rdx>
    ddd2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    ddd5:	48 89 10             	mov    QWORD PTR [rax],rdx
    ddd8:	48 8b 05 d9 36 00 00 	mov    rax,QWORD PTR [rip+0x36d9]        # 114b8 <rdx>
    dddf:	48 8b 15 5a 36 00 00 	mov    rdx,QWORD PTR [rip+0x365a]        # 11440 <rax>
    dde6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dde9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    ddec:	48 89 02             	mov    QWORD PTR [rdx],rax
    ddef:	48 8b 15 7a 38 00 00 	mov    rdx,QWORD PTR [rip+0x387a]        # 11670 <s_bss>
    ddf6:	48 8b 05 43 36 00 00 	mov    rax,QWORD PTR [rip+0x3643]        # 11440 <rax>
    ddfd:	48 8b 92 40 02 00 00 	mov    rdx,QWORD PTR [rdx+0x240]
    de04:	48 89 10             	mov    QWORD PTR [rax],rdx
    de07:	48 8b 05 32 36 00 00 	mov    rax,QWORD PTR [rip+0x3632]        # 11440 <rax>
    de0e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    de11:	48 8b 05 a0 36 00 00 	mov    rax,QWORD PTR [rip+0x36a0]        # 114b8 <rdx>
    de18:	48 81 c2 25 02 00 00 	add    rdx,0x225
    de1f:	48 89 10             	mov    QWORD PTR [rax],rdx
    de22:	48 8b 15 47 38 00 00 	mov    rdx,QWORD PTR [rip+0x3847]        # 11670 <s_bss>
    de29:	48 8b 05 10 36 00 00 	mov    rax,QWORD PTR [rip+0x3610]        # 11440 <rax>
    de30:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    de34:	48 89 10             	mov    QWORD PTR [rax],rdx
    de37:	48 8b 05 7a 36 00 00 	mov    rax,QWORD PTR [rip+0x367a]        # 114b8 <rdx>
    de3e:	48 8b 15 fb 35 00 00 	mov    rdx,QWORD PTR [rip+0x35fb]        # 11440 <rax>
    de45:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    de48:	48 8b 00             	mov    rax,QWORD PTR [rax]
    de4b:	48 89 02             	mov    QWORD PTR [rdx],rax
    de4e:	48 8b 15 1b 38 00 00 	mov    rdx,QWORD PTR [rip+0x381b]        # 11670 <s_bss>
    de55:	48 8b 05 5c 36 00 00 	mov    rax,QWORD PTR [rip+0x365c]        # 114b8 <rdx>
    de5c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
    de60:	48 89 10             	mov    QWORD PTR [rax],rdx
    de63:	48 8b 15 06 38 00 00 	mov    rdx,QWORD PTR [rip+0x3806]        # 11670 <s_bss>
    de6a:	48 8b 05 cf 35 00 00 	mov    rax,QWORD PTR [rip+0x35cf]        # 11440 <rax>
    de71:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    de78:	48 89 10             	mov    QWORD PTR [rax],rdx
    de7b:	48 8b 05 36 36 00 00 	mov    rax,QWORD PTR [rip+0x3636]        # 114b8 <rdx>
    de82:	48 8b 00             	mov    rax,QWORD PTR [rax]
    de85:	48 89 c2             	mov    rdx,rax
    de88:	48 8b 05 29 36 00 00 	mov    rax,QWORD PTR [rip+0x3629]        # 114b8 <rdx>
    de8f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    de92:	48 89 10             	mov    QWORD PTR [rax],rdx
    de95:	48 8b 05 1c 36 00 00 	mov    rax,QWORD PTR [rip+0x361c]        # 114b8 <rdx>
    de9c:	48 8b 15 9d 35 00 00 	mov    rdx,QWORD PTR [rip+0x359d]        # 11440 <rax>
    dea3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dea6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    dea9:	48 89 02             	mov    QWORD PTR [rdx],rax
    deac:	48 8b 15 bd 37 00 00 	mov    rdx,QWORD PTR [rip+0x37bd]        # 11670 <s_bss>
    deb3:	48 8b 05 86 35 00 00 	mov    rax,QWORD PTR [rip+0x3586]        # 11440 <rax>
    deba:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    debe:	48 89 10             	mov    QWORD PTR [rax],rdx
    dec1:	48 8b 05 78 35 00 00 	mov    rax,QWORD PTR [rip+0x3578]        # 11440 <rax>
    dec8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    decb:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    ded2:	48 8b 15 97 37 00 00 	mov    rdx,QWORD PTR [rip+0x3797]        # 11670 <s_bss>
    ded9:	48 8b 05 60 35 00 00 	mov    rax,QWORD PTR [rip+0x3560]        # 11440 <rax>
    dee0:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    dee7:	48 89 10             	mov    QWORD PTR [rax],rdx
    deea:	48 8b 05 4f 35 00 00 	mov    rax,QWORD PTR [rip+0x354f]        # 11440 <rax>
    def1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    def4:	48 89 c2             	mov    rdx,rax
    def7:	48 8b 05 42 35 00 00 	mov    rax,QWORD PTR [rip+0x3542]        # 11440 <rax>
    defe:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    df01:	48 89 10             	mov    QWORD PTR [rax],rdx
    df04:	48 8b 15 65 37 00 00 	mov    rdx,QWORD PTR [rip+0x3765]        # 11670 <s_bss>
    df0b:	48 8b 05 a6 35 00 00 	mov    rax,QWORD PTR [rip+0x35a6]        # 114b8 <rdx>
    df12:	48 8b 92 e0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe0]
    df19:	48 89 10             	mov    QWORD PTR [rax],rdx
    df1c:	48 8b 05 95 35 00 00 	mov    rax,QWORD PTR [rip+0x3595]        # 114b8 <rdx>
    df23:	48 8b 00             	mov    rax,QWORD PTR [rax]
    df26:	48 89 c2             	mov    rdx,rax
    df29:	48 8b 05 88 35 00 00 	mov    rax,QWORD PTR [rip+0x3588]        # 114b8 <rdx>
    df30:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    df33:	48 89 10             	mov    QWORD PTR [rax],rdx
    df36:	48 8b 15 03 35 00 00 	mov    rdx,QWORD PTR [rip+0x3503]        # 11440 <rax>
    df3d:	48 8b 05 9c 35 00 00 	mov    rax,QWORD PTR [rip+0x359c]        # 114e0 <rsi>
    df44:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    df47:	48 89 10             	mov    QWORD PTR [rax],rdx
    df4a:	48 8b 15 67 35 00 00 	mov    rdx,QWORD PTR [rip+0x3567]        # 114b8 <rdx>
    df51:	48 8b 05 a8 35 00 00 	mov    rax,QWORD PTR [rip+0x35a8]        # 11500 <rdi>
    df58:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    df5b:	48 89 10             	mov    QWORD PTR [rax],rdx
    df5e:	48 8b 05 e3 34 00 00 	mov    rax,QWORD PTR [rip+0x34e3]        # 11448 <eax>
    df65:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    df6c:	48 8b 05 6d 35 00 00 	mov    rax,QWORD PTR [rip+0x356d]        # 114e0 <rsi>
    df73:	48 8b 00             	mov    rax,QWORD PTR [rax]
    df76:	48 8b 15 83 35 00 00 	mov    rdx,QWORD PTR [rip+0x3583]        # 11500 <rdi>
    df7d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    df80:	48 89 c6             	mov    rsi,rax
    df83:	48 89 d7             	mov    rdi,rdx
    df86:	b8 00 00 00 00       	mov    eax,0x0
    df8b:	e8 30 31 ff ff       	call   10c0 <printf@plt>
    df90:	89 c2                	mov    edx,eax
    df92:	48 8b 05 af 34 00 00 	mov    rax,QWORD PTR [rip+0x34af]        # 11448 <eax>
    df99:	89 d2                	mov    edx,edx
    df9b:	48 89 10             	mov    QWORD PTR [rax],rdx
    df9e:	48 8b 15 a3 34 00 00 	mov    rdx,QWORD PTR [rip+0x34a3]        # 11448 <eax>
    dfa5:	48 8b 05 14 35 00 00 	mov    rax,QWORD PTR [rip+0x3514]        # 114c0 <edx>
    dfac:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dfaf:	48 89 10             	mov    QWORD PTR [rax],rdx
    dfb2:	48 8b 15 b7 36 00 00 	mov    rdx,QWORD PTR [rip+0x36b7]        # 11670 <s_bss>
    dfb9:	48 8b 05 80 34 00 00 	mov    rax,QWORD PTR [rip+0x3480]        # 11440 <rax>
    dfc0:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    dfc4:	48 89 10             	mov    QWORD PTR [rax],rdx
    dfc7:	48 8b 15 f2 34 00 00 	mov    rdx,QWORD PTR [rip+0x34f2]        # 114c0 <edx>
    dfce:	48 8b 05 eb 34 00 00 	mov    rax,QWORD PTR [rip+0x34eb]        # 114c0 <edx>
    dfd5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dfd8:	48 89 10             	mov    QWORD PTR [rax],rdx
    dfdb:	48 8b 05 d6 34 00 00 	mov    rax,QWORD PTR [rip+0x34d6]        # 114b8 <rdx>
    dfe2:	48 8b 15 57 34 00 00 	mov    rdx,QWORD PTR [rip+0x3457]        # 11440 <rax>
    dfe9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    dfec:	48 8b 00             	mov    rax,QWORD PTR [rax]
    dfef:	48 89 02             	mov    QWORD PTR [rdx],rax
    dff2:	48 8b 15 77 36 00 00 	mov    rdx,QWORD PTR [rip+0x3677]        # 11670 <s_bss>
    dff9:	48 8b 05 40 34 00 00 	mov    rax,QWORD PTR [rip+0x3440]        # 11440 <rax>
    e000:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    e004:	48 89 10             	mov    QWORD PTR [rax],rdx
    e007:	48 8b 05 32 34 00 00 	mov    rax,QWORD PTR [rip+0x3432]        # 11440 <rax>
    e00e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    e011:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    e018:	48 8b 15 51 36 00 00 	mov    rdx,QWORD PTR [rip+0x3651]        # 11670 <s_bss>
    e01f:	48 8b 05 92 34 00 00 	mov    rax,QWORD PTR [rip+0x3492]        # 114b8 <rdx>
    e026:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    e02d:	48 89 10             	mov    QWORD PTR [rax],rdx
    e030:	48 8b 15 39 36 00 00 	mov    rdx,QWORD PTR [rip+0x3639]        # 11670 <s_bss>
    e037:	48 8b 05 02 34 00 00 	mov    rax,QWORD PTR [rip+0x3402]        # 11440 <rax>
    e03e:	48 8b 92 20 01 00 00 	mov    rdx,QWORD PTR [rdx+0x120]
    e045:	48 89 10             	mov    QWORD PTR [rax],rdx
    e048:	48 8b 05 69 34 00 00 	mov    rax,QWORD PTR [rip+0x3469]        # 114b8 <rdx>
    e04f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    e052:	48 89 c2             	mov    rdx,rax
    e055:	48 8b 05 5c 34 00 00 	mov    rax,QWORD PTR [rip+0x345c]        # 114b8 <rdx>
    e05c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    e05f:	48 89 10             	mov    QWORD PTR [rax],rdx
    e062:	48 8b 05 4f 34 00 00 	mov    rax,QWORD PTR [rip+0x344f]        # 114b8 <rdx>
    e069:	48 8b 15 d0 33 00 00 	mov    rdx,QWORD PTR [rip+0x33d0]        # 11440 <rax>
    e070:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    e073:	48 8b 00             	mov    rax,QWORD PTR [rax]
    e076:	48 89 02             	mov    QWORD PTR [rdx],rax
    e079:	48 8b 15 f0 35 00 00 	mov    rdx,QWORD PTR [rip+0x35f0]        # 11670 <s_bss>
    e080:	48 8b 05 e1 33 00 00 	mov    rax,QWORD PTR [rip+0x33e1]        # 11468 <rbx>
    e087:	48 8b 92 00 01 00 00 	mov    rdx,QWORD PTR [rdx+0x100]
    e08e:	48 89 10             	mov    QWORD PTR [rax],rdx
    e091:	e8 12 46 ff ff       	call   26a8 <pop_u64_>
    e096:	48 8b 05 a3 33 00 00 	mov    rax,QWORD PTR [rip+0x33a3]        # 11440 <rax>
    e09d:	48 8b 15 c4 33 00 00 	mov    rdx,QWORD PTR [rip+0x33c4]        # 11468 <rbx>
    e0a4:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    e0a7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    e0aa:	48 89 02             	mov    QWORD PTR [rdx],rax
    e0ad:	48 8b 05 6c 34 00 00 	mov    rax,QWORD PTR [rip+0x346c]        # 11520 <rbp>
    e0b4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    e0b7:	48 83 e8 08          	sub    rax,0x8
    e0bb:	48 89 c2             	mov    rdx,rax
    e0be:	48 8b 05 a3 33 00 00 	mov    rax,QWORD PTR [rip+0x33a3]        # 11468 <rbx>
    e0c5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    e0c8:	48 89 10             	mov    QWORD PTR [rax],rdx
    e0cb:	48 8b 15 4e 34 00 00 	mov    rdx,QWORD PTR [rip+0x344e]        # 11520 <rbp>
    e0d2:	48 8b 05 67 34 00 00 	mov    rax,QWORD PTR [rip+0x3467]        # 11540 <rsp>
    e0d9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    e0dc:	48 89 10             	mov    QWORD PTR [rax],rdx
    e0df:	48 8b 1d 3a 34 00 00 	mov    rbx,QWORD PTR [rip+0x343a]        # 11520 <rbp>
    e0e6:	e8 4f 35 ff ff       	call   163a <pop_u64>
    e0eb:	48 89 03             	mov    QWORD PTR [rbx],rax
    e0ee:	90                   	nop
    e0ef:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    e0f3:	c9                   	leave  
    e0f4:	c3                   	ret    

000000000000e0f5 <init_>:
    e0f5:	f3 0f 1e fa          	endbr64 
    e0f9:	55                   	push   rbp
    e0fa:	48 89 e5             	mov    rbp,rsp
    e0fd:	53                   	push   rbx
    e0fe:	48 8b 05 1b 34 00 00 	mov    rax,QWORD PTR [rip+0x341b]        # 11520 <rbp>
    e105:	48 8b 00             	mov    rax,QWORD PTR [rax]
    e108:	48 89 c7             	mov    rdi,rax
    e10b:	e8 f3 34 ff ff       	call   1603 <push_u64>
    e110:	48 8b 15 29 34 00 00 	mov    rdx,QWORD PTR [rip+0x3429]        # 11540 <rsp>
    e117:	48 8b 05 02 34 00 00 	mov    rax,QWORD PTR [rip+0x3402]        # 11520 <rbp>
    e11e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    e121:	48 89 10             	mov    QWORD PTR [rax],rdx
    e124:	e8 79 35 ff ff       	call   16a2 <init_regs_>
    e129:	e8 1e 43 ff ff       	call   244c <init_stack_>
    e12e:	e8 b8 46 ff ff       	call   27eb <init_sections_>
    e133:	48 8b 1d e6 33 00 00 	mov    rbx,QWORD PTR [rip+0x33e6]        # 11520 <rbp>
    e13a:	e8 fb 34 ff ff       	call   163a <pop_u64>
    e13f:	48 89 03             	mov    QWORD PTR [rbx],rax
    e142:	90                   	nop
    e143:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    e147:	c9                   	leave  
    e148:	c3                   	ret    

000000000000e149 <main_>:
    e149:	f3 0f 1e fa          	endbr64 
    e14d:	55                   	push   rbp
    e14e:	48 89 e5             	mov    rbp,rsp
    e151:	53                   	push   rbx
    e152:	48 83 ec 08          	sub    rsp,0x8
    e156:	48 8b 05 c3 33 00 00 	mov    rax,QWORD PTR [rip+0x33c3]        # 11520 <rbp>
    e15d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    e160:	48 89 c7             	mov    rdi,rax
    e163:	e8 9b 34 ff ff       	call   1603 <push_u64>
    e168:	48 8b 15 d1 33 00 00 	mov    rdx,QWORD PTR [rip+0x33d1]        # 11540 <rsp>
    e16f:	48 8b 05 aa 33 00 00 	mov    rax,QWORD PTR [rip+0x33aa]        # 11520 <rbp>
    e176:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    e179:	48 89 10             	mov    QWORD PTR [rax],rdx
    e17c:	48 8b 05 bd 33 00 00 	mov    rax,QWORD PTR [rip+0x33bd]        # 11540 <rsp>
    e183:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    e186:	48 8b 05 b3 33 00 00 	mov    rax,QWORD PTR [rip+0x33b3]        # 11540 <rsp>
    e18d:	48 83 ea 10          	sub    rdx,0x10
    e191:	48 89 10             	mov    QWORD PTR [rax],rdx
    e194:	48 8b 05 6d 33 00 00 	mov    rax,QWORD PTR [rip+0x336d]        # 11508 <edi>
    e19b:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    e19e:	48 8b 05 7b 33 00 00 	mov    rax,QWORD PTR [rip+0x337b]        # 11520 <rbp>
    e1a5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    e1a8:	48 83 e8 04          	sub    rax,0x4
    e1ac:	89 10                	mov    DWORD PTR [rax],edx
    e1ae:	48 8b 05 2b 33 00 00 	mov    rax,QWORD PTR [rip+0x332b]        # 114e0 <rsi>
    e1b5:	48 8b 15 64 33 00 00 	mov    rdx,QWORD PTR [rip+0x3364]        # 11520 <rbp>
    e1bc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    e1bf:	48 83 ea 10          	sub    rdx,0x10
    e1c3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    e1c6:	48 89 02             	mov    QWORD PTR [rdx],rax
    e1c9:	e8 27 ff ff ff       	call   e0f5 <init_>
    e1ce:	48 8b 15 9b 34 00 00 	mov    rdx,QWORD PTR [rip+0x349b]        # 11670 <s_bss>
    e1d5:	48 8b 05 64 32 00 00 	mov    rax,QWORD PTR [rip+0x3264]        # 11440 <rax>
    e1dc:	48 8b 92 e8 00 00 00 	mov    rdx,QWORD PTR [rdx+0xe8]
    e1e3:	48 89 10             	mov    QWORD PTR [rax],rdx
    e1e6:	48 8b 05 33 33 00 00 	mov    rax,QWORD PTR [rip+0x3333]        # 11520 <rbp>
    e1ed:	48 8b 00             	mov    rax,QWORD PTR [rax]
    e1f0:	48 83 e8 04          	sub    rax,0x4
    e1f4:	8b 10                	mov    edx,DWORD PTR [rax]
    e1f6:	48 8b 05 c3 32 00 00 	mov    rax,QWORD PTR [rip+0x32c3]        # 114c0 <edx>
    e1fd:	89 d2                	mov    edx,edx
    e1ff:	48 89 10             	mov    QWORD PTR [rax],rdx
    e202:	48 8b 15 b7 32 00 00 	mov    rdx,QWORD PTR [rip+0x32b7]        # 114c0 <edx>
    e209:	48 8b 05 a8 32 00 00 	mov    rax,QWORD PTR [rip+0x32a8]        # 114b8 <rdx>
    e210:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    e213:	48 89 10             	mov    QWORD PTR [rax],rdx
    e216:	48 8b 05 9b 32 00 00 	mov    rax,QWORD PTR [rip+0x329b]        # 114b8 <rdx>
    e21d:	48 8b 15 1c 32 00 00 	mov    rdx,QWORD PTR [rip+0x321c]        # 11440 <rax>
    e224:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    e227:	48 8b 00             	mov    rax,QWORD PTR [rax]
    e22a:	48 89 02             	mov    QWORD PTR [rdx],rax
    e22d:	48 8b 15 3c 34 00 00 	mov    rdx,QWORD PTR [rip+0x343c]        # 11670 <s_bss>
    e234:	48 8b 05 05 32 00 00 	mov    rax,QWORD PTR [rip+0x3205]        # 11440 <rax>
    e23b:	48 8b 92 c0 00 00 00 	mov    rdx,QWORD PTR [rdx+0xc0]
    e242:	48 89 10             	mov    QWORD PTR [rax],rdx
    e245:	48 8b 05 d4 32 00 00 	mov    rax,QWORD PTR [rip+0x32d4]        # 11520 <rbp>
    e24c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    e24f:	48 83 e8 10          	sub    rax,0x10
    e253:	48 89 c2             	mov    rdx,rax
    e256:	48 8b 05 5b 32 00 00 	mov    rax,QWORD PTR [rip+0x325b]        # 114b8 <rdx>
    e25d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    e260:	48 89 10             	mov    QWORD PTR [rax],rdx
    e263:	48 8b 05 4e 32 00 00 	mov    rax,QWORD PTR [rip+0x324e]        # 114b8 <rdx>
    e26a:	48 8b 15 cf 31 00 00 	mov    rdx,QWORD PTR [rip+0x31cf]        # 11440 <rax>
    e271:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    e274:	48 8b 00             	mov    rax,QWORD PTR [rax]
    e277:	48 89 02             	mov    QWORD PTR [rdx],rax
    e27a:	e8 b6 d6 ff ff       	call   b935 <main__>
    e27f:	48 8b 15 ea 33 00 00 	mov    rdx,QWORD PTR [rip+0x33ea]        # 11670 <s_bss>
    e286:	48 8b 05 b3 31 00 00 	mov    rax,QWORD PTR [rip+0x31b3]        # 11440 <rax>
    e28d:	48 8b 52 28          	mov    rdx,QWORD PTR [rdx+0x28]
    e291:	48 89 10             	mov    QWORD PTR [rax],rdx
    e294:	48 8b 05 a5 31 00 00 	mov    rax,QWORD PTR [rip+0x31a5]        # 11440 <rax>
    e29b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    e29e:	48 89 c2             	mov    rdx,rax
    e2a1:	48 8b 05 98 31 00 00 	mov    rax,QWORD PTR [rip+0x3198]        # 11440 <rax>
    e2a8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    e2ab:	48 89 10             	mov    QWORD PTR [rax],rdx
    e2ae:	48 8b 15 6b 32 00 00 	mov    rdx,QWORD PTR [rip+0x326b]        # 11520 <rbp>
    e2b5:	48 8b 05 84 32 00 00 	mov    rax,QWORD PTR [rip+0x3284]        # 11540 <rsp>
    e2bc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    e2bf:	48 89 10             	mov    QWORD PTR [rax],rdx
    e2c2:	48 8b 1d 57 32 00 00 	mov    rbx,QWORD PTR [rip+0x3257]        # 11520 <rbp>
    e2c9:	e8 6c 33 ff ff       	call   163a <pop_u64>
    e2ce:	48 89 03             	mov    QWORD PTR [rbx],rax
    e2d1:	90                   	nop
    e2d2:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    e2d6:	c9                   	leave  
    e2d7:	c3                   	ret    

000000000000e2d8 <init>:
    e2d8:	f3 0f 1e fa          	endbr64 
    e2dc:	55                   	push   rbp
    e2dd:	48 89 e5             	mov    rbp,rsp
    e2e0:	e8 24 2f ff ff       	call   1209 <init_regs>
    e2e5:	e8 e2 32 ff ff       	call   15cc <init_stack>
    e2ea:	e8 7e 33 ff ff       	call   166d <init_sections>
    e2ef:	90                   	nop
    e2f0:	5d                   	pop    rbp
    e2f1:	c3                   	ret    

000000000000e2f2 <main>:
    e2f2:	f3 0f 1e fa          	endbr64 
    e2f6:	55                   	push   rbp
    e2f7:	48 89 e5             	mov    rbp,rsp
    e2fa:	48 83 ec 10          	sub    rsp,0x10
    e2fe:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    e301:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    e305:	e8 ce ff ff ff       	call   e2d8 <init>
    e30a:	48 8b 05 f7 31 00 00 	mov    rax,QWORD PTR [rip+0x31f7]        # 11508 <edi>
    e311:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
    e314:	48 63 d2             	movsxd rdx,edx
    e317:	48 89 10             	mov    QWORD PTR [rax],rdx
    e31a:	48 8b 05 bf 31 00 00 	mov    rax,QWORD PTR [rip+0x31bf]        # 114e0 <rsi>
    e321:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    e325:	48 89 10             	mov    QWORD PTR [rax],rdx
    e328:	e8 1c fe ff ff       	call   e149 <main_>
    e32d:	48 8b 05 14 31 00 00 	mov    rax,QWORD PTR [rip+0x3114]        # 11448 <eax>
    e334:	48 8b 00             	mov    rax,QWORD PTR [rax]
    e337:	c9                   	leave  
    e338:	c3                   	ret    

Disassembly of section .fini:

000000000000e33c <_fini>:
    e33c:	f3 0f 1e fa          	endbr64 
    e340:	48 83 ec 08          	sub    rsp,0x8
    e344:	48 83 c4 08          	add    rsp,0x8
    e348:	c3                   	ret    
