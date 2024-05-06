
fib.elf.x64.O3:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 62 2f 00 00    	push   QWORD PTR [rip+0x2f62]        # 3f88 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 63 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f63]        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop

Disassembly of section .plt.got:

00000000000010b0 <__cxa_finalize@plt>:
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	f2 ff 25 3d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f3d]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

00000000000010c0 <free@plt>:
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	f2 ff 25 cd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ecd]        # 3f98 <free@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010d0 <__stack_chk_fail@plt>:
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	f2 ff 25 c5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ec5]        # 3fa0 <__stack_chk_fail@GLIBC_2.4>
    10db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010e0 <calloc@plt>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	f2 ff 25 bd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ebd]        # 3fa8 <calloc@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010f0 <__isoc99_sscanf@plt>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	f2 ff 25 b5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2eb5]        # 3fb0 <__isoc99_sscanf@GLIBC_2.7>
    10fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001100 <__printf_chk@plt>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	f2 ff 25 ad 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ead]        # 3fb8 <__printf_chk@GLIBC_2.3.4>
    110b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001110 <exit@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	f2 ff 25 a5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ea5]        # 3fc0 <exit@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001120 <fwrite@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	f2 ff 25 9d 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e9d]        # 3fc8 <fwrite@GLIBC_2.2.5>
    112b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001130 <__fprintf_chk@plt>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	f2 ff 25 95 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e95]        # 3fd0 <__fprintf_chk@GLIBC_2.3.4>
    113b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001140 <main>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	41 54                	push   r12
    1146:	55                   	push   rbp
    1147:	53                   	push   rbx
    1148:	48 83 ec 10          	sub    rsp,0x10
;    114c:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
;    1153:	00 00
;    1155:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    115a:	31 c0                	xor    eax,eax
    115c:	83 ff 02             	cmp    edi,0x2
    115f:	74 3f                	je     11a0 <main+0x60>
    1161:	48 8b 0d b8 2e 00 00 	mov    rcx,QWORD PTR [rip+0x2eb8]        # 4020 <stderr@GLIBC_2.2.5>
    1168:	ba 0f 00 00 00       	mov    edx,0xf
    116d:	be 01 00 00 00       	mov    esi,0x1
    1172:	48 8d 3d 8b 0e 00 00 	lea    rdi,[rip+0xe8b]        # 2004 <_IO_stdin_used+0x4>
    1179:	e8 a2 ff ff ff       	call   1120 <fwrite@plt>
    117e:	b8 01 00 00 00       	mov    eax,0x1
    1183:	90                  	nop
;    1183:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
;    1188:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
;    118f:	00 00
;    1191:	0f 85 da 01 00 00    	jne    1371 <main+0x231>
    1197:	48 83 c4 10          	add    rsp,0x10
    119b:	5b                   	pop    rbx
    119c:	5d                   	pop    rbp
    119d:	41 5c                	pop    r12
    119f:	c3                   	ret
    11a0:	48 8b 7e 08          	mov    rdi,QWORD PTR [rsi+0x8]
    11a4:	31 c0                	xor    eax,eax
    11a6:	48 89 f3             	mov    rbx,rsi
    11a9:	48 89 e2             	mov    rdx,rsp
    11ac:	48 8d 35 61 0e 00 00 	lea    rsi,[rip+0xe61]        # 2014 <_IO_stdin_used+0x14>
    11b3:	48 c7 04 24 00 00 00 	mov    QWORD PTR [rsp],0x0
    11ba:	00
    11bb:	e8 30 ff ff ff       	call   10f0 <__isoc99_sscanf@plt>
    11c0:	83 e8 01             	sub    eax,0x1
    11c3:	0f 85 43 01 00 00    	jne    130c <main+0x1cc>
    11c9:	4c 8b 24 24          	mov    r12,QWORD PTR [rsp]
    11cd:	49 83 fc 5d          	cmp    r12,0x5d
    11d1:	0f 87 69 01 00 00    	ja     1340 <main+0x200>
    11d7:	49 83 fc 01          	cmp    r12,0x1
    11db:	0f 86 58 01 00 00    	jbe    1339 <main+0x1f9>
    11e1:	4c 89 e3             	mov    rbx,r12
    11e4:	31 ed                	xor    ebp,ebp
    11e6:	48 8d 7b ff          	lea    rdi,[rbx-0x1]
    11ea:	48 83 eb 02          	sub    rbx,0x2
    11ee:	e8 9d 02 00 00       	call   1490 <fib_rec>
    11f3:	48 01 c5             	add    rbp,rax
    11f6:	48 83 fb 01          	cmp    rbx,0x1
    11fa:	77 ea                	ja     11e6 <main+0xa6>
    11fc:	41 83 e4 01          	and    r12d,0x1
    1200:	49 8d 14 2c          	lea    rdx,[r12+rbp*1]
    1204:	48 8d 35 26 0e 00 00 	lea    rsi,[rip+0xe26]        # 2031 <_IO_stdin_used+0x31>
    120b:	bf 01 00 00 00       	mov    edi,0x1
    1210:	31 c0                	xor    eax,eax
    1212:	e8 e9 fe ff ff       	call   1100 <__printf_chk@plt>
    1217:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
    121b:	48 8d 35 1e 0e 00 00 	lea    rsi,[rip+0xe1e]        # 2040 <_IO_stdin_used+0x40>
    1222:	e8 19 06 00 00       	call   1840 <fib_tbl_static>
    1227:	bf 01 00 00 00       	mov    edi,0x1
    122c:	48 89 c2             	mov    rdx,rax
    122f:	31 c0                	xor    eax,eax
    1231:	e8 ca fe ff ff       	call   1100 <__printf_chk@plt>
    1236:	48 8b 2c 24          	mov    rbp,QWORD PTR [rsp]
    123a:	be 08 00 00 00       	mov    esi,0x8
    123f:	48 8d 7d 01          	lea    rdi,[rbp+0x1]
    1243:	e8 98 fe ff ff       	call   10e0 <calloc@plt>
    1248:	49 89 c1             	mov    r9,rax
    124b:	48 85 c0             	test   rax,rax
    124e:	0f 84 22 01 00 00    	je     1376 <main+0x236>
    1254:	48 89 c6             	mov    rsi,rax
    1257:	48 89 ef             	mov    rdi,rbp
    125a:	e8 c1 07 00 00       	call   1a20 <fib_tbl_dyn_>
    125f:	4c 89 cf             	mov    rdi,r9
    1262:	49 89 c4             	mov    r12,rax
    1265:	e8 56 fe ff ff       	call   10c0 <free@plt>
    126a:	bf 01 00 00 00       	mov    edi,0x1
    126f:	4c 89 e2             	mov    rdx,r12
    1272:	31 c0                	xor    eax,eax
    1274:	48 8d 35 ec 0d 00 00 	lea    rsi,[rip+0xdec]        # 2067 <_IO_stdin_used+0x67>
    127b:	e8 80 fe ff ff       	call   1100 <__printf_chk@plt>
    1280:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
    1284:	48 83 ff 01          	cmp    rdi,0x1
    1288:	0f 86 a6 00 00 00    	jbe    1334 <main+0x1f4>
    128e:	48 83 ff 02          	cmp    rdi,0x2
    1292:	0f 84 cf 00 00 00    	je     1367 <main+0x227>
    1298:	b8 02 00 00 00       	mov    eax,0x2
    129d:	ba 01 00 00 00       	mov    edx,0x1
    12a2:	b9 01 00 00 00       	mov    ecx,0x1
    12a7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    12ae:	00 00
    12b0:	48 89 d6             	mov    rsi,rdx
    12b3:	48 83 c0 01          	add    rax,0x1
    12b7:	48 01 ca             	add    rdx,rcx
    12ba:	48 89 f1             	mov    rcx,rsi
    12bd:	48 39 c7             	cmp    rdi,rax
    12c0:	75 ee                	jne    12b0 <main+0x170>
    12c2:	48 8d 35 ad 0d 00 00 	lea    rsi,[rip+0xdad]        # 2076 <_IO_stdin_used+0x76>
    12c9:	bf 01 00 00 00       	mov    edi,0x1
    12ce:	31 c0                	xor    eax,eax
    12d0:	e8 2b fe ff ff       	call   1100 <__printf_chk@plt>
    12d5:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    12d9:	31 d2                	xor    edx,edx
    12db:	48 83 e8 01          	sub    rax,0x1
    12df:	48 83 f8 5c          	cmp    rax,0x5c
    12e3:	76 1a                	jbe    12ff <main+0x1bf>
    12e5:	48 8d 35 99 0d 00 00 	lea    rsi,[rip+0xd99]        # 2085 <_IO_stdin_used+0x85>
    12ec:	bf 01 00 00 00       	mov    edi,0x1
    12f1:	31 c0                	xor    eax,eax
    12f3:	e8 08 fe ff ff       	call   1100 <__printf_chk@plt>
    12f8:	31 c0                	xor    eax,eax
    12fa:	e9 84 fe ff ff       	jmp    1183 <main+0x43>
    12ff:	48 8d 15 ba 0d 00 00 	lea    rdx,[rip+0xdba]        # 20c0 <CSWTCH.19>
    1306:	48 8b 14 c2          	mov    rdx,QWORD PTR [rdx+rax*8]
    130a:	eb d9                	jmp    12e5 <main+0x1a5>
    130c:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    1310:	48 8b 3d 09 2d 00 00 	mov    rdi,QWORD PTR [rip+0x2d09]        # 4020 <stderr@GLIBC_2.2.5>
    1317:	48 8d 15 7a 0d 00 00 	lea    rdx,[rip+0xd7a]        # 2098 <_IO_stdin_used+0x98>
    131e:	31 c0                	xor    eax,eax
    1320:	be 01 00 00 00       	mov    esi,0x1
    1325:	e8 06 fe ff ff       	call   1130 <__fprintf_chk@plt>
    132a:	b8 02 00 00 00       	mov    eax,0x2
    132f:	e9 4f fe ff ff       	jmp    1183 <main+0x43>
    1334:	48 89 fa             	mov    rdx,rdi
    1337:	eb 89                	jmp    12c2 <main+0x182>
    1339:	31 ed                	xor    ebp,ebp
    133b:	e9 c0 fe ff ff       	jmp    1200 <main+0xc0>
    1340:	48 8b 3d d9 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2cd9]        # 4020 <stderr@GLIBC_2.2.5>
    1347:	4c 89 e1             	mov    rcx,r12
    134a:	be 01 00 00 00       	mov    esi,0x1
    134f:	31 c0                	xor    eax,eax
    1351:	48 8d 15 c0 0c 00 00 	lea    rdx,[rip+0xcc0]        # 2018 <_IO_stdin_used+0x18>
    1358:	e8 d3 fd ff ff       	call   1130 <__fprintf_chk@plt>
    135d:	b8 03 00 00 00       	mov    eax,0x3
    1362:	e9 1c fe ff ff       	jmp    1183 <main+0x43>
    1367:	ba 01 00 00 00       	mov    edx,0x1
    136c:	e9 51 ff ff ff       	jmp    12c2 <main+0x182>
;    1371:	e8 5a fd ff ff       	call   10d0 <__stack_chk_fail@plt>
    1376:	48 8b 0d a3 2c 00 00 	mov    rcx,QWORD PTR [rip+0x2ca3]        # 4020 <stderr@GLIBC_2.2.5>
    137d:	ba 17 00 00 00       	mov    edx,0x17
    1382:	be 01 00 00 00       	mov    esi,0x1
    1387:	48 8d 3d c1 0c 00 00 	lea    rdi,[rip+0xcc1]        # 204f <_IO_stdin_used+0x4f>
    138e:	e8 8d fd ff ff       	call   1120 <fwrite@plt>
    1393:	bf 01 00 00 00       	mov    edi,0x1
    1398:	e8 73 fd ff ff       	call   1110 <exit@plt>
    139d:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000013a0 <_start>:
    13a0:	f3 0f 1e fa          	endbr64
    13a4:	31 ed                	xor    ebp,ebp
    13a6:	49 89 d1             	mov    r9,rdx
    13a9:	5e                   	pop    rsi
    13aa:	48 89 e2             	mov    rdx,rsp
    13ad:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    13b1:	50                   	push   rax
    13b2:	54                   	push   rsp
    13b3:	45 31 c0             	xor    r8d,r8d
    13b6:	31 c9                	xor    ecx,ecx
    13b8:	48 8d 3d 81 fd ff ff 	lea    rdi,[rip+0xfffffffffffffd81]        # 1140 <main>
    13bf:	ff 15 13 2c 00 00    	call   QWORD PTR [rip+0x2c13]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    13c5:	f4                   	hlt
    13c6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    13cd:	00 00 00

00000000000013d0 <deregister_tm_clones>:
    13d0:	48 8d 3d 39 2c 00 00 	lea    rdi,[rip+0x2c39]        # 4010 <__TMC_END__>
    13d7:	48 8d 05 32 2c 00 00 	lea    rax,[rip+0x2c32]        # 4010 <__TMC_END__>
    13de:	48 39 f8             	cmp    rax,rdi
    13e1:	74 15                	je     13f8 <deregister_tm_clones+0x28>
    13e3:	48 8b 05 f6 2b 00 00 	mov    rax,QWORD PTR [rip+0x2bf6]        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    13ea:	48 85 c0             	test   rax,rax
    13ed:	74 09                	je     13f8 <deregister_tm_clones+0x28>
    13ef:	ff e0                	jmp    rax
    13f1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    13f8:	c3                   	ret
    13f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001400 <register_tm_clones>:
    1400:	48 8d 3d 09 2c 00 00 	lea    rdi,[rip+0x2c09]        # 4010 <__TMC_END__>
    1407:	48 8d 35 02 2c 00 00 	lea    rsi,[rip+0x2c02]        # 4010 <__TMC_END__>
    140e:	48 29 fe             	sub    rsi,rdi
    1411:	48 89 f0             	mov    rax,rsi
    1414:	48 c1 ee 3f          	shr    rsi,0x3f
    1418:	48 c1 f8 03          	sar    rax,0x3
    141c:	48 01 c6             	add    rsi,rax
    141f:	48 d1 fe             	sar    rsi,1
    1422:	74 14                	je     1438 <register_tm_clones+0x38>
    1424:	48 8b 05 c5 2b 00 00 	mov    rax,QWORD PTR [rip+0x2bc5]        # 3ff0 <_ITM_registerTMCloneTable@Base>
    142b:	48 85 c0             	test   rax,rax
    142e:	74 08                	je     1438 <register_tm_clones+0x38>
    1430:	ff e0                	jmp    rax
    1432:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1438:	c3                   	ret
    1439:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001440 <__do_global_dtors_aux>:
    1440:	f3 0f 1e fa          	endbr64
    1444:	80 3d dd 2b 00 00 00 	cmp    BYTE PTR [rip+0x2bdd],0x0        # 4028 <completed.0>
    144b:	75 2b                	jne    1478 <__do_global_dtors_aux+0x38>
    144d:	55                   	push   rbp
    144e:	48 83 3d a2 2b 00 00 	cmp    QWORD PTR [rip+0x2ba2],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1455:	00
    1456:	48 89 e5             	mov    rbp,rsp
    1459:	74 0c                	je     1467 <__do_global_dtors_aux+0x27>
    145b:	48 8b 3d a6 2b 00 00 	mov    rdi,QWORD PTR [rip+0x2ba6]        # 4008 <__dso_handle>
    1462:	e8 49 fc ff ff       	call   10b0 <__cxa_finalize@plt>
    1467:	e8 64 ff ff ff       	call   13d0 <deregister_tm_clones>
    146c:	c6 05 b5 2b 00 00 01 	mov    BYTE PTR [rip+0x2bb5],0x1        # 4028 <completed.0>
    1473:	5d                   	pop    rbp
    1474:	c3                   	ret
    1475:	0f 1f 00             	nop    DWORD PTR [rax]
    1478:	c3                   	ret
    1479:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001480 <frame_dummy>:
    1480:	f3 0f 1e fa          	endbr64
    1484:	e9 77 ff ff ff       	jmp    1400 <register_tm_clones>
    1489:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001490 <fib_rec>:
    1490:	41 57                	push   r15
    1492:	41 56                	push   r14
    1494:	41 55                	push   r13
    1496:	41 54                	push   r12
    1498:	55                   	push   rbp
    1499:	53                   	push   rbx
    149a:	48 81 ec a8 00 00 00 	sub    rsp,0xa8
    14a1:	48 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],rdi
    14a6:	48 83 ff 01          	cmp    rdi,0x1
    14aa:	0f 84 5d 03 00 00    	je     180d <fib_rec+0x37d>
    14b0:	48 c7 44 24 18 00 00 	mov    QWORD PTR [rsp+0x18],0x0
    14b7:	00 00
    14b9:	48 89 f8             	mov    rax,rdi
    14bc:	48 83 e8 01          	sub    rax,0x1
    14c0:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    14c5:	48 83 f8 01          	cmp    rax,0x1
    14c9:	0f 84 0a 03 00 00    	je     17d9 <fib_rec+0x349>
    14cf:	48 c7 44 24 20 00 00 	mov    QWORD PTR [rsp+0x20],0x0
    14d6:	00 00
    14d8:	48 83 e8 01          	sub    rax,0x1
    14dc:	49 89 c2             	mov    r10,rax
    14df:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
    14e4:	49 83 fa 01          	cmp    r10,0x1
    14e8:	0f 84 99 02 00 00    	je     1787 <fib_rec+0x2f7>
    14ee:	49 8d 42 ff          	lea    rax,[r10-0x1]
    14f2:	4c 89 54 24 58       	mov    QWORD PTR [rsp+0x58],r10
    14f7:	49 89 c3             	mov    r11,rax
    14fa:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
    14ff:	48 c7 44 24 28 00 00 	mov    QWORD PTR [rsp+0x28],0x0
    1506:	00 00
    1508:	49 83 fb 01          	cmp    r11,0x1
    150c:	0f 84 25 02 00 00    	je     1737 <fib_rec+0x2a7>
    1512:	49 8d 43 ff          	lea    rax,[r11-0x1]
    1516:	4c 89 5c 24 60       	mov    QWORD PTR [rsp+0x60],r11
    151b:	49 89 c1             	mov    r9,rax
    151e:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
    1523:	48 c7 44 24 30 00 00 	mov    QWORD PTR [rsp+0x30],0x0
    152a:	00 00
    152c:	49 83 f9 01          	cmp    r9,0x1
    1530:	0f 84 b1 01 00 00    	je     16e7 <fib_rec+0x257>
    1536:	49 8d 41 ff          	lea    rax,[r9-0x1]
    153a:	31 c9                	xor    ecx,ecx
    153c:	48 89 c3             	mov    rbx,rax
    153f:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
    1544:	48 83 fb 01          	cmp    rbx,0x1
    1548:	0f 84 5a 01 00 00    	je     16a8 <fib_rec+0x218>
    154e:	4c 8d 7b ff          	lea    r15,[rbx-0x1]
    1552:	31 d2                	xor    edx,edx
    1554:	4d 89 fc             	mov    r12,r15
    1557:	49 83 fc 01          	cmp    r12,0x1
    155b:	0f 84 05 01 00 00    	je     1666 <fib_rec+0x1d6>
    1561:	4d 8d 6c 24 fe       	lea    r13,[r12-0x2]
    1566:	31 f6                	xor    esi,esi
    1568:	4d 89 ee             	mov    r14,r13
    156b:	b8 01 00 00 00       	mov    eax,0x1
    1570:	4d 85 f6             	test   r14,r14
    1573:	0f 84 d4 00 00 00    	je     164d <fib_rec+0x1bd>
    1579:	4c 89 f5             	mov    rbp,r14
    157c:	45 31 c0             	xor    r8d,r8d
    157f:	48 83 fd 01          	cmp    rbp,0x1
    1583:	0f 84 a1 00 00 00    	je     162a <fib_rec+0x19a>
    1589:	49 89 eb             	mov    r11,rbp
    158c:	45 31 d2             	xor    r10d,r10d
    158f:	49 8d 7b ff          	lea    rdi,[r11-0x1]
    1593:	4c 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],r9
    159a:	00
    159b:	4c 89 94 24 90 00 00 	mov    QWORD PTR [rsp+0x90],r10
    15a2:	00
    15a3:	4c 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r8
    15aa:	00
    15ab:	48 89 b4 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rsi
    15b2:	00
    15b3:	48 89 54 24 78       	mov    QWORD PTR [rsp+0x78],rdx
    15b8:	48 89 4c 24 70       	mov    QWORD PTR [rsp+0x70],rcx
    15bd:	4c 89 5c 24 68       	mov    QWORD PTR [rsp+0x68],r11
    15c2:	e8 c9 fe ff ff       	call   1490 <fib_rec>
    15c7:	4c 8b 5c 24 68       	mov    r11,QWORD PTR [rsp+0x68]
    15cc:	48 8b 4c 24 70       	mov    rcx,QWORD PTR [rsp+0x70]
    15d1:	4c 8b 94 24 90 00 00 	mov    r10,QWORD PTR [rsp+0x90]
    15d8:	00
    15d9:	48 8b 54 24 78       	mov    rdx,QWORD PTR [rsp+0x78]
    15de:	49 83 eb 02          	sub    r11,0x2
    15e2:	48 8b b4 24 80 00 00 	mov    rsi,QWORD PTR [rsp+0x80]
    15e9:	00
    15ea:	4c 8b 84 24 88 00 00 	mov    r8,QWORD PTR [rsp+0x88]
    15f1:	00
    15f2:	49 01 c2             	add    r10,rax
    15f5:	49 83 fb 01          	cmp    r11,0x1
    15f9:	4c 8b 8c 24 98 00 00 	mov    r9,QWORD PTR [rsp+0x98]
    1600:	00
    1601:	77 8c                	ja     158f <fib_rec+0xff>
    1603:	48 89 e8             	mov    rax,rbp
    1606:	48 8d 7d fe          	lea    rdi,[rbp-0x2]
    160a:	48 83 ed 01          	sub    rbp,0x1
    160e:	83 e0 01             	and    eax,0x1
    1611:	4c 01 d0             	add    rax,r10
    1614:	49 01 c0             	add    r8,rax
    1617:	48 83 fd 01          	cmp    rbp,0x1
    161b:	76 26                	jbe    1643 <fib_rec+0x1b3>
    161d:	48 89 fd             	mov    rbp,rdi
    1620:	48 83 fd 01          	cmp    rbp,0x1
    1624:	0f 85 5f ff ff ff    	jne    1589 <fib_rec+0xf9>
    162a:	b8 01 00 00 00       	mov    eax,0x1
    162f:	48 83 ed 01          	sub    rbp,0x1
    1633:	48 c7 c7 ff ff ff ff 	mov    rdi,0xffffffffffffffff
    163a:	49 01 c0             	add    r8,rax
    163d:	48 83 fd 01          	cmp    rbp,0x1
    1641:	77 da                	ja     161d <fib_rec+0x18d>
    1643:	49 8d 46 ff          	lea    rax,[r14-0x1]
    1647:	83 e0 01             	and    eax,0x1
    164a:	4c 01 c0             	add    rax,r8
    164d:	48 01 c6             	add    rsi,rax
    1650:	49 8d 46 fe          	lea    rax,[r14-0x2]
    1654:	49 83 fe 01          	cmp    r14,0x1
    1658:	0f 86 ca 01 00 00    	jbe    1828 <fib_rec+0x398>
    165e:	49 89 c6             	mov    r14,rax
    1661:	e9 05 ff ff ff       	jmp    156b <fib_rec+0xdb>
    1666:	b8 01 00 00 00       	mov    eax,0x1
    166b:	49 c7 c5 ff ff ff ff 	mov    r13,0xffffffffffffffff
    1672:	49 83 ec 01          	sub    r12,0x1
    1676:	48 01 c2             	add    rdx,rax
    1679:	49 83 fc 01          	cmp    r12,0x1
    167d:	76 08                	jbe    1687 <fib_rec+0x1f7>
    167f:	4d 89 ec             	mov    r12,r13
    1682:	e9 d0 fe ff ff       	jmp    1557 <fib_rec+0xc7>
    1687:	48 8d 73 fe          	lea    rsi,[rbx-0x2]
    168b:	83 e3 01             	and    ebx,0x1
    168e:	48 8d 04 13          	lea    rax,[rbx+rdx*1]
    1692:	48 01 c1             	add    rcx,rax
    1695:	49 83 ff 01          	cmp    r15,0x1
    1699:	76 25                	jbe    16c0 <fib_rec+0x230>
    169b:	48 89 f3             	mov    rbx,rsi
    169e:	48 83 fb 01          	cmp    rbx,0x1
    16a2:	0f 85 a6 fe ff ff    	jne    154e <fib_rec+0xbe>
    16a8:	b8 01 00 00 00       	mov    eax,0x1
    16ad:	45 31 ff             	xor    r15d,r15d
    16b0:	48 c7 c6 ff ff ff ff 	mov    rsi,0xffffffffffffffff
    16b7:	48 01 c1             	add    rcx,rax
    16ba:	49 83 ff 01          	cmp    r15,0x1
    16be:	77 db                	ja     169b <fib_rec+0x20b>
    16c0:	4c 89 c8             	mov    rax,r9
    16c3:	49 8d 51 fe          	lea    rdx,[r9-0x2]
    16c7:	83 e0 01             	and    eax,0x1
    16ca:	48 01 c8             	add    rax,rcx
    16cd:	48 01 44 24 30       	add    QWORD PTR [rsp+0x30],rax
    16d2:	48 83 7c 24 50 01    	cmp    QWORD PTR [rsp+0x50],0x1
    16d8:	76 2f                	jbe    1709 <fib_rec+0x279>
    16da:	49 89 d1             	mov    r9,rdx
    16dd:	49 83 f9 01          	cmp    r9,0x1
    16e1:	0f 85 4f fe ff ff    	jne    1536 <fib_rec+0xa6>
    16e7:	48 c7 44 24 50 00 00 	mov    QWORD PTR [rsp+0x50],0x0
    16ee:	00 00
    16f0:	b8 01 00 00 00       	mov    eax,0x1
    16f5:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
    16fc:	48 01 44 24 30       	add    QWORD PTR [rsp+0x30],rax
    1701:	48 83 7c 24 50 01    	cmp    QWORD PTR [rsp+0x50],0x1
    1707:	77 d1                	ja     16da <fib_rec+0x24a>
    1709:	4c 8b 5c 24 60       	mov    r11,QWORD PTR [rsp+0x60]
    170e:	4c 89 d8             	mov    rax,r11
    1711:	49 8d 53 fe          	lea    rdx,[r11-0x2]
    1715:	83 e0 01             	and    eax,0x1
    1718:	48 03 44 24 30       	add    rax,QWORD PTR [rsp+0x30]
    171d:	48 01 44 24 28       	add    QWORD PTR [rsp+0x28],rax
    1722:	48 83 7c 24 48 01    	cmp    QWORD PTR [rsp+0x48],0x1
    1728:	76 2f                	jbe    1759 <fib_rec+0x2c9>
    172a:	49 89 d3             	mov    r11,rdx
    172d:	49 83 fb 01          	cmp    r11,0x1
    1731:	0f 85 db fd ff ff    	jne    1512 <fib_rec+0x82>
    1737:	48 c7 44 24 48 00 00 	mov    QWORD PTR [rsp+0x48],0x0
    173e:	00 00
    1740:	b8 01 00 00 00       	mov    eax,0x1
    1745:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
    174c:	48 01 44 24 28       	add    QWORD PTR [rsp+0x28],rax
    1751:	48 83 7c 24 48 01    	cmp    QWORD PTR [rsp+0x48],0x1
    1757:	77 d1                	ja     172a <fib_rec+0x29a>
    1759:	4c 8b 54 24 58       	mov    r10,QWORD PTR [rsp+0x58]
    175e:	4c 89 d0             	mov    rax,r10
    1761:	49 8d 52 fe          	lea    rdx,[r10-0x2]
    1765:	83 e0 01             	and    eax,0x1
    1768:	48 03 44 24 28       	add    rax,QWORD PTR [rsp+0x28]
    176d:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
    1772:	48 83 7c 24 40 01    	cmp    QWORD PTR [rsp+0x40],0x1
    1778:	76 2f                	jbe    17a9 <fib_rec+0x319>
    177a:	49 89 d2             	mov    r10,rdx
    177d:	49 83 fa 01          	cmp    r10,0x1
    1781:	0f 85 67 fd ff ff    	jne    14ee <fib_rec+0x5e>
    1787:	48 c7 44 24 40 00 00 	mov    QWORD PTR [rsp+0x40],0x0
    178e:	00 00
    1790:	b8 01 00 00 00       	mov    eax,0x1
    1795:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
    179c:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
    17a1:	48 83 7c 24 40 01    	cmp    QWORD PTR [rsp+0x40],0x1
    17a7:	77 d1                	ja     177a <fib_rec+0x2ea>
    17a9:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    17ae:	48 8d 50 fe          	lea    rdx,[rax-0x2]
    17b2:	83 e0 01             	and    eax,0x1
    17b5:	48 03 44 24 20       	add    rax,QWORD PTR [rsp+0x20]
    17ba:	48 01 44 24 18       	add    QWORD PTR [rsp+0x18],rax
    17bf:	48 83 7c 24 38 01    	cmp    QWORD PTR [rsp+0x38],0x1
    17c5:	76 34                	jbe    17fb <fib_rec+0x36b>
    17c7:	48 89 d0             	mov    rax,rdx
    17ca:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    17cf:	48 83 f8 01          	cmp    rax,0x1
    17d3:	0f 85 f6 fc ff ff    	jne    14cf <fib_rec+0x3f>
    17d9:	48 c7 44 24 38 00 00 	mov    QWORD PTR [rsp+0x38],0x0
    17e0:	00 00
    17e2:	b8 01 00 00 00       	mov    eax,0x1
    17e7:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
    17ee:	48 01 44 24 18       	add    QWORD PTR [rsp+0x18],rax
    17f3:	48 83 7c 24 38 01    	cmp    QWORD PTR [rsp+0x38],0x1
    17f9:	77 cc                	ja     17c7 <fib_rec+0x337>
    17fb:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
    1800:	83 e0 01             	and    eax,0x1
    1803:	48 03 44 24 18       	add    rax,QWORD PTR [rsp+0x18]
    1808:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    180d:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
    1812:	48 81 c4 a8 00 00 00 	add    rsp,0xa8
    1819:	5b                   	pop    rbx
    181a:	5d                   	pop    rbp
    181b:	41 5c                	pop    r12
    181d:	41 5d                	pop    r13
    181f:	41 5e                	pop    r14
    1821:	41 5f                	pop    r15
    1823:	c3                   	ret
    1824:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1828:	4c 89 e8             	mov    rax,r13
    182b:	83 e0 01             	and    eax,0x1
    182e:	48 01 f0             	add    rax,rsi
    1831:	e9 3c fe ff ff       	jmp    1672 <fib_rec+0x1e2>
    1836:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    183d:	00 00 00

0000000000001840 <fib_tbl_static>:
    1840:	41 57                	push   r15
    1842:	41 56                	push   r14
    1844:	41 55                	push   r13
    1846:	41 54                	push   r12
    1848:	49 89 fc             	mov    r12,rdi
    184b:	55                   	push   rbp
    184c:	53                   	push   rbx
    184d:	48 83 ec 18          	sub    rsp,0x18
    1851:	48 83 ff 01          	cmp    rdi,0x1
    1855:	76 14                	jbe    186b <fib_tbl_static+0x2b>
    1857:	48 8d 2d e2 27 00 00 	lea    rbp,[rip+0x27e2]        # 4040 <cache.0>
    185e:	48 89 fb             	mov    rbx,rdi
    1861:	4c 8b 64 fd 00       	mov    r12,QWORD PTR [rbp+rdi*8+0x0]
    1866:	4d 85 e4             	test   r12,r12
    1869:	74 15                	je     1880 <fib_tbl_static+0x40>
    186b:	48 83 c4 18          	add    rsp,0x18
    186f:	4c 89 e0             	mov    rax,r12
    1872:	5b                   	pop    rbx
    1873:	5d                   	pop    rbp
    1874:	41 5c                	pop    r12
    1876:	41 5d                	pop    r13
    1878:	41 5e                	pop    r14
    187a:	41 5f                	pop    r15
    187c:	c3                   	ret
    187d:	0f 1f 00             	nop    DWORD PTR [rax]
    1880:	4c 8d 67 ff          	lea    r12,[rdi-0x1]
    1884:	4c 8d 77 fe          	lea    r14,[rdi-0x2]
    1888:	48 83 ff 02          	cmp    rdi,0x2
    188c:	74 21                	je     18af <fib_tbl_static+0x6f>
    188e:	4e 8b 6c e5 00       	mov    r13,QWORD PTR [rbp+r12*8+0x0]
    1893:	4d 85 ed             	test   r13,r13
    1896:	74 68                	je     1900 <fib_tbl_static+0xc0>
    1898:	49 83 fe 01          	cmp    r14,0x1
    189c:	0f 86 6e 01 00 00    	jbe    1a10 <fib_tbl_static+0x1d0>
    18a2:	4e 8b 64 f5 00       	mov    r12,QWORD PTR [rbp+r14*8+0x0]
    18a7:	4d 85 e4             	test   r12,r12
    18aa:	74 14                	je     18c0 <fib_tbl_static+0x80>
    18ac:	4d 01 ec             	add    r12,r13
    18af:	4c 89 64 dd 00       	mov    QWORD PTR [rbp+rbx*8+0x0],r12
    18b4:	eb b5                	jmp    186b <fib_tbl_static+0x2b>
    18b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    18bd:	00 00 00
    18c0:	4c 8d 63 fd          	lea    r12,[rbx-0x3]
    18c4:	48 8d 53 fc          	lea    rdx,[rbx-0x4]
    18c8:	48 83 fb 04          	cmp    rbx,0x4
    18cc:	74 29                	je     18f7 <fib_tbl_static+0xb7>
    18ce:	4e 8b 7c e5 00       	mov    r15,QWORD PTR [rbp+r12*8+0x0]
    18d3:	4d 85 ff             	test   r15,r15
    18d6:	0f 84 94 00 00 00    	je     1970 <fib_tbl_static+0x130>
    18dc:	48 83 fa 01          	cmp    rdx,0x1
    18e0:	0f 86 19 01 00 00    	jbe    19ff <fib_tbl_static+0x1bf>
    18e6:	4c 8b 64 d5 00       	mov    r12,QWORD PTR [rbp+rdx*8+0x0]
    18eb:	4d 85 e4             	test   r12,r12
    18ee:	0f 84 ac 00 00 00    	je     19a0 <fib_tbl_static+0x160>
    18f4:	4d 01 fc             	add    r12,r15
    18f7:	4e 89 64 f5 00       	mov    QWORD PTR [rbp+r14*8+0x0],r12
    18fc:	eb ae                	jmp    18ac <fib_tbl_static+0x6c>
    18fe:	66 90                	xchg   ax,ax
    1900:	48 8d 57 fd          	lea    rdx,[rdi-0x3]
    1904:	41 bd 01 00 00 00    	mov    r13d,0x1
    190a:	49 83 fe 01          	cmp    r14,0x1
    190e:	74 25                	je     1935 <fib_tbl_static+0xf5>
    1910:	4e 8b 6c f5 00       	mov    r13,QWORD PTR [rbp+r14*8+0x0]
    1915:	4d 85 ed             	test   r13,r13
    1918:	74 26                	je     1940 <fib_tbl_static+0x100>
    191a:	48 83 fa 01          	cmp    rdx,0x1
    191e:	0f 86 e4 00 00 00    	jbe    1a08 <fib_tbl_static+0x1c8>
    1924:	48 8b 44 d5 00       	mov    rax,QWORD PTR [rbp+rdx*8+0x0]
    1929:	48 85 c0             	test   rax,rax
    192c:	0f 84 9e 00 00 00    	je     19d0 <fib_tbl_static+0x190>
    1932:	49 01 c5             	add    r13,rax
    1935:	4e 89 6c e5 00       	mov    QWORD PTR [rbp+r12*8+0x0],r13
    193a:	e9 59 ff ff ff       	jmp    1898 <fib_tbl_static+0x58>
    193f:	90                   	nop
    1940:	48 89 d7             	mov    rdi,rdx
    1943:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    1948:	e8 f3 fe ff ff       	call   1840 <fib_tbl_static>
    194d:	48 8d 7b fc          	lea    rdi,[rbx-0x4]
    1951:	49 89 c5             	mov    r13,rax
    1954:	e8 e7 fe ff ff       	call   1840 <fib_tbl_static>
    1959:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    195e:	49 01 c5             	add    r13,rax
    1961:	4e 89 6c f5 00       	mov    QWORD PTR [rbp+r14*8+0x0],r13
    1966:	eb b2                	jmp    191a <fib_tbl_static+0xda>
    1968:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    196f:	00
    1970:	48 89 d7             	mov    rdi,rdx
    1973:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    1978:	e8 c3 fe ff ff       	call   1840 <fib_tbl_static>
    197d:	48 8d 7b fb          	lea    rdi,[rbx-0x5]
    1981:	49 89 c7             	mov    r15,rax
    1984:	e8 b7 fe ff ff       	call   1840 <fib_tbl_static>
    1989:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    198e:	49 01 c7             	add    r15,rax
    1991:	4e 89 7c e5 00       	mov    QWORD PTR [rbp+r12*8+0x0],r15
    1996:	e9 41 ff ff ff       	jmp    18dc <fib_tbl_static+0x9c>
    199b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    19a0:	48 8d 7b fb          	lea    rdi,[rbx-0x5]
    19a4:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    19a9:	e8 92 fe ff ff       	call   1840 <fib_tbl_static>
    19ae:	48 8d 7b fa          	lea    rdi,[rbx-0x6]
    19b2:	49 89 c4             	mov    r12,rax
    19b5:	e8 86 fe ff ff       	call   1840 <fib_tbl_static>
    19ba:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    19bf:	49 01 c4             	add    r12,rax
    19c2:	4c 89 64 d5 00       	mov    QWORD PTR [rbp+rdx*8+0x0],r12
    19c7:	e9 28 ff ff ff       	jmp    18f4 <fib_tbl_static+0xb4>
    19cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    19d0:	48 8d 7b fc          	lea    rdi,[rbx-0x4]
    19d4:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    19d9:	e8 62 fe ff ff       	call   1840 <fib_tbl_static>
    19de:	48 8d 7b fb          	lea    rdi,[rbx-0x5]
    19e2:	49 89 c7             	mov    r15,rax
    19e5:	e8 56 fe ff ff       	call   1840 <fib_tbl_static>
    19ea:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    19ef:	49 01 c7             	add    r15,rax
    19f2:	4c 89 7c d5 00       	mov    QWORD PTR [rbp+rdx*8+0x0],r15
    19f7:	4d 01 fd             	add    r13,r15
    19fa:	e9 36 ff ff ff       	jmp    1935 <fib_tbl_static+0xf5>
    19ff:	4d 8d 24 17          	lea    r12,[r15+rdx*1]
    1a03:	e9 ef fe ff ff       	jmp    18f7 <fib_tbl_static+0xb7>
    1a08:	49 01 d5             	add    r13,rdx
    1a0b:	e9 25 ff ff ff       	jmp    1935 <fib_tbl_static+0xf5>
    1a10:	4f 8d 24 2e          	lea    r12,[r14+r13*1]
    1a14:	e9 96 fe ff ff       	jmp    18af <fib_tbl_static+0x6f>
    1a19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001a20 <fib_tbl_dyn_>:
    1a20:	48 89 f8             	mov    rax,rdi
    1a23:	48 83 ff 01          	cmp    rdi,0x1
    1a27:	0f 86 83 00 00 00    	jbe    1ab0 <fib_tbl_dyn_+0x90>
    1a2d:	41 57                	push   r15
    1a2f:	41 56                	push   r14
    1a31:	41 55                	push   r13
    1a33:	4c 8d 2c fe          	lea    r13,[rsi+rdi*8]
    1a37:	41 54                	push   r12
    1a39:	49 89 f4             	mov    r12,rsi
    1a3c:	55                   	push   rbp
    1a3d:	53                   	push   rbx
    1a3e:	48 89 fb             	mov    rbx,rdi
    1a41:	48 83 ec 28          	sub    rsp,0x28
    1a45:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    1a49:	48 85 c0             	test   rax,rax
    1a4c:	74 12                	je     1a60 <fib_tbl_dyn_+0x40>
    1a4e:	48 83 c4 28          	add    rsp,0x28
    1a52:	5b                   	pop    rbx
    1a53:	5d                   	pop    rbp
    1a54:	41 5c                	pop    r12
    1a56:	41 5d                	pop    r13
    1a58:	41 5e                	pop    r14
    1a5a:	41 5f                	pop    r15
    1a5c:	c3                   	ret
    1a5d:	0f 1f 00             	nop    DWORD PTR [rax]
    1a60:	48 8d 47 ff          	lea    rax,[rdi-0x1]
    1a64:	4c 8d 7f fe          	lea    r15,[rdi-0x2]
    1a68:	48 83 ff 02          	cmp    rdi,0x2
    1a6c:	74 2e                	je     1a9c <fib_tbl_dyn_+0x7c>
    1a6e:	4c 8d 34 c5 00 00 00 	lea    r14,[rax*8+0x0]
    1a75:	00
    1a76:	4a 8d 14 36          	lea    rdx,[rsi+r14*1]
    1a7a:	48 8b 2a             	mov    rbp,QWORD PTR [rdx]
    1a7d:	48 85 ed             	test   rbp,rbp
    1a80:	74 7e                	je     1b00 <fib_tbl_dyn_+0xe0>
    1a82:	49 83 ff 01          	cmp    r15,0x1
    1a86:	0f 86 c2 01 00 00    	jbe    1c4e <fib_tbl_dyn_+0x22e>
    1a8c:	4b 8d 54 34 f8       	lea    rdx,[r12+r14*1-0x8]
    1a91:	48 8b 02             	mov    rax,QWORD PTR [rdx]
    1a94:	48 85 c0             	test   rax,rax
    1a97:	74 1f                	je     1ab8 <fib_tbl_dyn_+0x98>
    1a99:	48 01 e8             	add    rax,rbp
    1a9c:	49 89 45 00          	mov    QWORD PTR [r13+0x0],rax
    1aa0:	48 83 c4 28          	add    rsp,0x28
    1aa4:	5b                   	pop    rbx
    1aa5:	5d                   	pop    rbp
    1aa6:	41 5c                	pop    r12
    1aa8:	41 5d                	pop    r13
    1aaa:	41 5e                	pop    r14
    1aac:	41 5f                	pop    r15
    1aae:	c3                   	ret
    1aaf:	90                   	nop
    1ab0:	c3                   	ret
    1ab1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1ab8:	48 8d 4b fc          	lea    rcx,[rbx-0x4]
    1abc:	b8 01 00 00 00       	mov    eax,0x1
    1ac1:	48 83 fb 04          	cmp    rbx,0x4
    1ac5:	74 34                	je     1afb <fib_tbl_dyn_+0xdb>
    1ac7:	4f 8d 44 34 f0       	lea    r8,[r12+r14*1-0x10]
    1acc:	4d 8b 38             	mov    r15,QWORD PTR [r8]
    1acf:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    1ad4:	4d 85 ff             	test   r15,r15
    1ad7:	0f 84 f3 00 00 00    	je     1bd0 <fib_tbl_dyn_+0x1b0>
    1add:	48 83 f9 01          	cmp    rcx,0x1
    1ae1:	0f 86 71 01 00 00    	jbe    1c58 <fib_tbl_dyn_+0x238>
    1ae7:	4b 8d 4c 34 e8       	lea    rcx,[r12+r14*1-0x18]
    1aec:	48 8b 01             	mov    rax,QWORD PTR [rcx]
    1aef:	48 85 c0             	test   rax,rax
    1af2:	0f 84 18 01 00 00    	je     1c10 <fib_tbl_dyn_+0x1f0>
    1af8:	4c 01 f8             	add    rax,r15
    1afb:	48 89 02             	mov    QWORD PTR [rdx],rax
    1afe:	eb 99                	jmp    1a99 <fib_tbl_dyn_+0x79>
    1b00:	4c 8d 47 fd          	lea    r8,[rdi-0x3]
    1b04:	bd 01 00 00 00       	mov    ebp,0x1
    1b09:	49 83 ff 01          	cmp    r15,0x1
    1b0d:	74 29                	je     1b38 <fib_tbl_dyn_+0x118>
    1b0f:	4a 8d 6c 36 f8       	lea    rbp,[rsi+r14*1-0x8]
    1b14:	48 8b 4d 00          	mov    rcx,QWORD PTR [rbp+0x0]
    1b18:	48 85 c9             	test   rcx,rcx
    1b1b:	74 6b                	je     1b88 <fib_tbl_dyn_+0x168>
    1b1d:	49 83 f8 01          	cmp    r8,0x1
    1b21:	0f 86 3a 01 00 00    	jbe    1c61 <fib_tbl_dyn_+0x241>
    1b27:	4f 8d 44 34 f0       	lea    r8,[r12+r14*1-0x10]
    1b2c:	49 8b 00             	mov    rax,QWORD PTR [r8]
    1b2f:	48 8d 2c 08          	lea    rbp,[rax+rcx*1]
    1b33:	48 85 c0             	test   rax,rax
    1b36:	74 08                	je     1b40 <fib_tbl_dyn_+0x120>
    1b38:	48 89 2a             	mov    QWORD PTR [rdx],rbp
    1b3b:	e9 42 ff ff ff       	jmp    1a82 <fib_tbl_dyn_+0x62>
    1b40:	48 8d 7b fc          	lea    rdi,[rbx-0x4]
    1b44:	4c 89 e6             	mov    rsi,r12
    1b47:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    1b4c:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    1b51:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    1b56:	e8 c5 fe ff ff       	call   1a20 <fib_tbl_dyn_>
    1b5b:	48 8d 7b fb          	lea    rdi,[rbx-0x5]
    1b5f:	4c 89 e6             	mov    rsi,r12
    1b62:	48 89 c5             	mov    rbp,rax
    1b65:	e8 b6 fe ff ff       	call   1a20 <fib_tbl_dyn_>
    1b6a:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    1b6f:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    1b74:	48 01 c5             	add    rbp,rax
    1b77:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    1b7c:	49 89 28             	mov    QWORD PTR [r8],rbp
    1b7f:	48 01 cd             	add    rbp,rcx
    1b82:	eb b4                	jmp    1b38 <fib_tbl_dyn_+0x118>
    1b84:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1b88:	4c 89 c7             	mov    rdi,r8
    1b8b:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
    1b90:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    1b95:	e8 86 fe ff ff       	call   1a20 <fib_tbl_dyn_>
    1b9a:	48 8d 7b fc          	lea    rdi,[rbx-0x4]
    1b9e:	4c 89 e6             	mov    rsi,r12
    1ba1:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    1ba6:	e8 75 fe ff ff       	call   1a20 <fib_tbl_dyn_>
    1bab:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    1bb0:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    1bb5:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    1bba:	48 01 c1             	add    rcx,rax
    1bbd:	48 89 4d 00          	mov    QWORD PTR [rbp+0x0],rcx
    1bc1:	e9 57 ff ff ff       	jmp    1b1d <fib_tbl_dyn_+0xfd>
    1bc6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1bcd:	00 00 00
    1bd0:	48 89 cf             	mov    rdi,rcx
    1bd3:	4c 89 e6             	mov    rsi,r12
    1bd6:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
    1bdb:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
    1be0:	e8 3b fe ff ff       	call   1a20 <fib_tbl_dyn_>
    1be5:	48 8d 7b fb          	lea    rdi,[rbx-0x5]
    1be9:	4c 89 e6             	mov    rsi,r12
    1bec:	49 89 c7             	mov    r15,rax
    1bef:	e8 2c fe ff ff       	call   1a20 <fib_tbl_dyn_>
    1bf4:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    1bf9:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    1bfe:	49 01 c7             	add    r15,rax
    1c01:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
    1c06:	4d 89 38             	mov    QWORD PTR [r8],r15
    1c09:	e9 cf fe ff ff       	jmp    1add <fib_tbl_dyn_+0xbd>
    1c0e:	66 90                	xchg   ax,ax
    1c10:	48 8d 7b fb          	lea    rdi,[rbx-0x5]
    1c14:	4c 89 e6             	mov    rsi,r12
    1c17:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
    1c1c:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    1c21:	e8 fa fd ff ff       	call   1a20 <fib_tbl_dyn_>
    1c26:	48 8d 7b fa          	lea    rdi,[rbx-0x6]
    1c2a:	4c 89 e6             	mov    rsi,r12
    1c2d:	49 89 c6             	mov    r14,rax
    1c30:	e8 eb fd ff ff       	call   1a20 <fib_tbl_dyn_>
    1c35:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
    1c3a:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    1c3f:	49 01 c6             	add    r14,rax
    1c42:	4c 89 31             	mov    QWORD PTR [rcx],r14
    1c45:	4b 8d 04 3e          	lea    rax,[r14+r15*1]
    1c49:	e9 ad fe ff ff       	jmp    1afb <fib_tbl_dyn_+0xdb>
    1c4e:	4a 8d 44 3d 00       	lea    rax,[rbp+r15*1+0x0]
    1c53:	e9 44 fe ff ff       	jmp    1a9c <fib_tbl_dyn_+0x7c>
    1c58:	49 8d 04 0f          	lea    rax,[r15+rcx*1]
    1c5c:	e9 9a fe ff ff       	jmp    1afb <fib_tbl_dyn_+0xdb>
    1c61:	4a 8d 2c 01          	lea    rbp,[rcx+r8*1]
    1c65:	e9 ce fe ff ff       	jmp    1b38 <fib_tbl_dyn_+0x118>

Disassembly of section .fini:

0000000000001c6c <_fini>:
    1c6c:	f3 0f 1e fa          	endbr64
    1c70:	48 83 ec 08          	sub    rsp,0x8
    1c74:	48 83 c4 08          	add    rsp,0x8
    1c78:	c3                   	ret
