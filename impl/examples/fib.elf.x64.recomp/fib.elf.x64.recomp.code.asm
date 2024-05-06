
fib.elf.x64.recomp:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 4f 00 00 	mov    rax,QWORD PTR [rip+0x4fd9]        # 5fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 6a 4f 00 00    	push   QWORD PTR [rip+0x4f6a]        # 5f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 6b 4f 00 00 	bnd jmp QWORD PTR [rip+0x4f6b]        # 5f98 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    10a4:	f2 ff 25 4d 4f 00 00 	bnd jmp QWORD PTR [rip+0x4f4d]        # 5ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

00000000000010b0 <free@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 e5 4e 00 00 	bnd jmp QWORD PTR [rip+0x4ee5]        # 5fa0 <free@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010c0 <printf@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 dd 4e 00 00 	bnd jmp QWORD PTR [rip+0x4edd]        # 5fa8 <printf@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010d0 <calloc@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 d5 4e 00 00 	bnd jmp QWORD PTR [rip+0x4ed5]        # 5fb0 <calloc@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010e0 <fprintf@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 cd 4e 00 00 	bnd jmp QWORD PTR [rip+0x4ecd]        # 5fb8 <fprintf@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010f0 <__isoc99_sscanf@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 c5 4e 00 00 	bnd jmp QWORD PTR [rip+0x4ec5]        # 5fc0 <__isoc99_sscanf@GLIBC_2.7>
    10fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001100 <exit@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 bd 4e 00 00 	bnd jmp QWORD PTR [rip+0x4ebd]        # 5fc8 <exit@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001110 <fwrite@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 b5 4e 00 00 	bnd jmp QWORD PTR [rip+0x4eb5]        # 5fd0 <fwrite@GLIBC_2.2.5>
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
    1138:	48 8d 3d b1 2d 00 00 	lea    rdi,[rip+0x2db1]        # 3ef0 <main>
    113f:	ff 15 93 4e 00 00    	call   QWORD PTR [rip+0x4e93]        # 5fd8 <__libc_start_main@GLIBC_2.34>
    1145:	f4                   	hlt    
    1146:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    114d:	00 00 00 

0000000000001150 <deregister_tm_clones>:
    1150:	48 8d 3d 19 51 00 00 	lea    rdi,[rip+0x5119]        # 6270 <__TMC_END__>
    1157:	48 8d 05 12 51 00 00 	lea    rax,[rip+0x5112]        # 6270 <__TMC_END__>
    115e:	48 39 f8             	cmp    rax,rdi
    1161:	74 15                	je     1178 <deregister_tm_clones+0x28>
    1163:	48 8b 05 76 4e 00 00 	mov    rax,QWORD PTR [rip+0x4e76]        # 5fe0 <_ITM_deregisterTMCloneTable@Base>
    116a:	48 85 c0             	test   rax,rax
    116d:	74 09                	je     1178 <deregister_tm_clones+0x28>
    116f:	ff e0                	jmp    rax
    1171:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1178:	c3                   	ret    
    1179:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001180 <register_tm_clones>:
    1180:	48 8d 3d e9 50 00 00 	lea    rdi,[rip+0x50e9]        # 6270 <__TMC_END__>
    1187:	48 8d 35 e2 50 00 00 	lea    rsi,[rip+0x50e2]        # 6270 <__TMC_END__>
    118e:	48 29 fe             	sub    rsi,rdi
    1191:	48 89 f0             	mov    rax,rsi
    1194:	48 c1 ee 3f          	shr    rsi,0x3f
    1198:	48 c1 f8 03          	sar    rax,0x3
    119c:	48 01 c6             	add    rsi,rax
    119f:	48 d1 fe             	sar    rsi,1
    11a2:	74 14                	je     11b8 <register_tm_clones+0x38>
    11a4:	48 8b 05 45 4e 00 00 	mov    rax,QWORD PTR [rip+0x4e45]        # 5ff0 <_ITM_registerTMCloneTable@Base>
    11ab:	48 85 c0             	test   rax,rax
    11ae:	74 08                	je     11b8 <register_tm_clones+0x38>
    11b0:	ff e0                	jmp    rax
    11b2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    11b8:	c3                   	ret    
    11b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011c0 <__do_global_dtors_aux>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	80 3d bd 50 00 00 00 	cmp    BYTE PTR [rip+0x50bd],0x0        # 6288 <completed.0>
    11cb:	75 2b                	jne    11f8 <__do_global_dtors_aux+0x38>
    11cd:	55                   	push   rbp
    11ce:	48 83 3d 22 4e 00 00 	cmp    QWORD PTR [rip+0x4e22],0x0        # 5ff8 <__cxa_finalize@GLIBC_2.2.5>
    11d5:	00 
    11d6:	48 89 e5             	mov    rbp,rsp
    11d9:	74 0c                	je     11e7 <__do_global_dtors_aux+0x27>
    11db:	48 8b 3d 26 4e 00 00 	mov    rdi,QWORD PTR [rip+0x4e26]        # 6008 <__dso_handle>
    11e2:	e8 b9 fe ff ff       	call   10a0 <__cxa_finalize@plt>
    11e7:	e8 64 ff ff ff       	call   1150 <deregister_tm_clones>
    11ec:	c6 05 95 50 00 00 01 	mov    BYTE PTR [rip+0x5095],0x1        # 6288 <completed.0>
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
    1211:	48 8d 05 d0 52 00 00 	lea    rax,[rip+0x52d0]        # 64e8 <regs.4+0x8>
    1218:	48 89 05 81 50 00 00 	mov    QWORD PTR [rip+0x5081],rax        # 62a0 <rax>
    121f:	48 8d 05 c2 52 00 00 	lea    rax,[rip+0x52c2]        # 64e8 <regs.4+0x8>
    1226:	48 89 05 7b 50 00 00 	mov    QWORD PTR [rip+0x507b],rax        # 62a8 <eax>
    122d:	48 8d 05 b4 52 00 00 	lea    rax,[rip+0x52b4]        # 64e8 <regs.4+0x8>
    1234:	48 89 05 75 50 00 00 	mov    QWORD PTR [rip+0x5075],rax        # 62b0 <ax>
    123b:	48 8d 05 a7 52 00 00 	lea    rax,[rip+0x52a7]        # 64e9 <regs.4+0x9>
    1242:	48 89 05 6f 50 00 00 	mov    QWORD PTR [rip+0x506f],rax        # 62b8 <ah>
    1249:	48 8d 05 98 52 00 00 	lea    rax,[rip+0x5298]        # 64e8 <regs.4+0x8>
    1250:	48 89 05 69 50 00 00 	mov    QWORD PTR [rip+0x5069],rax        # 62c0 <al>
    1257:	48 8d 05 92 52 00 00 	lea    rax,[rip+0x5292]        # 64f0 <regs.4+0x10>
    125e:	48 89 05 63 50 00 00 	mov    QWORD PTR [rip+0x5063],rax        # 62c8 <rbx>
    1265:	48 8d 05 84 52 00 00 	lea    rax,[rip+0x5284]        # 64f0 <regs.4+0x10>
    126c:	48 89 05 5d 50 00 00 	mov    QWORD PTR [rip+0x505d],rax        # 62d0 <ebx>
    1273:	48 8d 05 76 52 00 00 	lea    rax,[rip+0x5276]        # 64f0 <regs.4+0x10>
    127a:	48 89 05 57 50 00 00 	mov    QWORD PTR [rip+0x5057],rax        # 62d8 <bx>
    1281:	48 8d 05 69 52 00 00 	lea    rax,[rip+0x5269]        # 64f1 <regs.4+0x11>
    1288:	48 89 05 51 50 00 00 	mov    QWORD PTR [rip+0x5051],rax        # 62e0 <bh>
    128f:	48 8d 05 5a 52 00 00 	lea    rax,[rip+0x525a]        # 64f0 <regs.4+0x10>
    1296:	48 89 05 4b 50 00 00 	mov    QWORD PTR [rip+0x504b],rax        # 62e8 <bl>
    129d:	48 8d 05 54 52 00 00 	lea    rax,[rip+0x5254]        # 64f8 <regs.4+0x18>
    12a4:	48 89 05 45 50 00 00 	mov    QWORD PTR [rip+0x5045],rax        # 62f0 <rcx>
    12ab:	48 8d 05 46 52 00 00 	lea    rax,[rip+0x5246]        # 64f8 <regs.4+0x18>
    12b2:	48 89 05 3f 50 00 00 	mov    QWORD PTR [rip+0x503f],rax        # 62f8 <ecx>
    12b9:	48 8d 05 38 52 00 00 	lea    rax,[rip+0x5238]        # 64f8 <regs.4+0x18>
    12c0:	48 89 05 39 50 00 00 	mov    QWORD PTR [rip+0x5039],rax        # 6300 <cx>
    12c7:	48 8d 05 2b 52 00 00 	lea    rax,[rip+0x522b]        # 64f9 <regs.4+0x19>
    12ce:	48 89 05 33 50 00 00 	mov    QWORD PTR [rip+0x5033],rax        # 6308 <ch>
    12d5:	48 8d 05 1c 52 00 00 	lea    rax,[rip+0x521c]        # 64f8 <regs.4+0x18>
    12dc:	48 89 05 2d 50 00 00 	mov    QWORD PTR [rip+0x502d],rax        # 6310 <cl>
    12e3:	48 8d 05 16 52 00 00 	lea    rax,[rip+0x5216]        # 6500 <regs.4+0x20>
    12ea:	48 89 05 27 50 00 00 	mov    QWORD PTR [rip+0x5027],rax        # 6318 <rdx>
    12f1:	48 8d 05 08 52 00 00 	lea    rax,[rip+0x5208]        # 6500 <regs.4+0x20>
    12f8:	48 89 05 21 50 00 00 	mov    QWORD PTR [rip+0x5021],rax        # 6320 <edx>
    12ff:	48 8d 05 fa 51 00 00 	lea    rax,[rip+0x51fa]        # 6500 <regs.4+0x20>
    1306:	48 89 05 1b 50 00 00 	mov    QWORD PTR [rip+0x501b],rax        # 6328 <dx>
    130d:	48 8d 05 ed 51 00 00 	lea    rax,[rip+0x51ed]        # 6501 <regs.4+0x21>
    1314:	48 89 05 15 50 00 00 	mov    QWORD PTR [rip+0x5015],rax        # 6330 <dh>
    131b:	48 8d 05 de 51 00 00 	lea    rax,[rip+0x51de]        # 6500 <regs.4+0x20>
    1322:	48 89 05 0f 50 00 00 	mov    QWORD PTR [rip+0x500f],rax        # 6338 <dl>
    1329:	48 8d 05 d8 51 00 00 	lea    rax,[rip+0x51d8]        # 6508 <regs.4+0x28>
    1330:	48 89 05 09 50 00 00 	mov    QWORD PTR [rip+0x5009],rax        # 6340 <rsi>
    1337:	48 8d 05 ca 51 00 00 	lea    rax,[rip+0x51ca]        # 6508 <regs.4+0x28>
    133e:	48 89 05 03 50 00 00 	mov    QWORD PTR [rip+0x5003],rax        # 6348 <esi>
    1345:	48 8d 05 bc 51 00 00 	lea    rax,[rip+0x51bc]        # 6508 <regs.4+0x28>
    134c:	48 89 05 fd 4f 00 00 	mov    QWORD PTR [rip+0x4ffd],rax        # 6350 <si>
    1353:	48 8d 05 ae 51 00 00 	lea    rax,[rip+0x51ae]        # 6508 <regs.4+0x28>
    135a:	48 89 05 f7 4f 00 00 	mov    QWORD PTR [rip+0x4ff7],rax        # 6358 <sil>
    1361:	48 8d 05 a8 51 00 00 	lea    rax,[rip+0x51a8]        # 6510 <regs.4+0x30>
    1368:	48 89 05 f1 4f 00 00 	mov    QWORD PTR [rip+0x4ff1],rax        # 6360 <rdi>
    136f:	48 8d 05 9a 51 00 00 	lea    rax,[rip+0x519a]        # 6510 <regs.4+0x30>
    1376:	48 89 05 eb 4f 00 00 	mov    QWORD PTR [rip+0x4feb],rax        # 6368 <edi>
    137d:	48 8d 05 8c 51 00 00 	lea    rax,[rip+0x518c]        # 6510 <regs.4+0x30>
    1384:	48 89 05 e5 4f 00 00 	mov    QWORD PTR [rip+0x4fe5],rax        # 6370 <di>
    138b:	48 8d 05 7e 51 00 00 	lea    rax,[rip+0x517e]        # 6510 <regs.4+0x30>
    1392:	48 89 05 df 4f 00 00 	mov    QWORD PTR [rip+0x4fdf],rax        # 6378 <dil>
    1399:	48 8d 05 78 51 00 00 	lea    rax,[rip+0x5178]        # 6518 <regs.4+0x38>
    13a0:	48 89 05 d9 4f 00 00 	mov    QWORD PTR [rip+0x4fd9],rax        # 6380 <rbp>
    13a7:	48 8d 05 6a 51 00 00 	lea    rax,[rip+0x516a]        # 6518 <regs.4+0x38>
    13ae:	48 89 05 d3 4f 00 00 	mov    QWORD PTR [rip+0x4fd3],rax        # 6388 <ebp>
    13b5:	48 8d 05 5c 51 00 00 	lea    rax,[rip+0x515c]        # 6518 <regs.4+0x38>
    13bc:	48 89 05 cd 4f 00 00 	mov    QWORD PTR [rip+0x4fcd],rax        # 6390 <bp>
    13c3:	48 8d 05 4e 51 00 00 	lea    rax,[rip+0x514e]        # 6518 <regs.4+0x38>
    13ca:	48 89 05 c7 4f 00 00 	mov    QWORD PTR [rip+0x4fc7],rax        # 6398 <bpl>
    13d1:	48 8d 05 48 51 00 00 	lea    rax,[rip+0x5148]        # 6520 <regs.4+0x40>
    13d8:	48 89 05 c1 4f 00 00 	mov    QWORD PTR [rip+0x4fc1],rax        # 63a0 <rsp>
    13df:	48 8d 05 3a 51 00 00 	lea    rax,[rip+0x513a]        # 6520 <regs.4+0x40>
    13e6:	48 89 05 bb 4f 00 00 	mov    QWORD PTR [rip+0x4fbb],rax        # 63a8 <esp>
    13ed:	48 8d 05 2c 51 00 00 	lea    rax,[rip+0x512c]        # 6520 <regs.4+0x40>
    13f4:	48 89 05 b5 4f 00 00 	mov    QWORD PTR [rip+0x4fb5],rax        # 63b0 <sp>
    13fb:	48 8d 05 1e 51 00 00 	lea    rax,[rip+0x511e]        # 6520 <regs.4+0x40>
    1402:	48 89 05 af 4f 00 00 	mov    QWORD PTR [rip+0x4faf],rax        # 63b8 <spl>
    1409:	48 8d 05 18 51 00 00 	lea    rax,[rip+0x5118]        # 6528 <regs.4+0x48>
    1410:	48 89 05 a9 4f 00 00 	mov    QWORD PTR [rip+0x4fa9],rax        # 63c0 <r8>
    1417:	48 8d 05 0a 51 00 00 	lea    rax,[rip+0x510a]        # 6528 <regs.4+0x48>
    141e:	48 89 05 a3 4f 00 00 	mov    QWORD PTR [rip+0x4fa3],rax        # 63c8 <r8d>
    1425:	48 8d 05 fc 50 00 00 	lea    rax,[rip+0x50fc]        # 6528 <regs.4+0x48>
    142c:	48 89 05 9d 4f 00 00 	mov    QWORD PTR [rip+0x4f9d],rax        # 63d0 <r8w>
    1433:	48 8d 05 ee 50 00 00 	lea    rax,[rip+0x50ee]        # 6528 <regs.4+0x48>
    143a:	48 89 05 97 4f 00 00 	mov    QWORD PTR [rip+0x4f97],rax        # 63d8 <r8b>
    1441:	48 8d 05 e8 50 00 00 	lea    rax,[rip+0x50e8]        # 6530 <regs.4+0x50>
    1448:	48 89 05 91 4f 00 00 	mov    QWORD PTR [rip+0x4f91],rax        # 63e0 <r9>
    144f:	48 8d 05 da 50 00 00 	lea    rax,[rip+0x50da]        # 6530 <regs.4+0x50>
    1456:	48 89 05 8b 4f 00 00 	mov    QWORD PTR [rip+0x4f8b],rax        # 63e8 <r9d>
    145d:	48 8d 05 cc 50 00 00 	lea    rax,[rip+0x50cc]        # 6530 <regs.4+0x50>
    1464:	48 89 05 85 4f 00 00 	mov    QWORD PTR [rip+0x4f85],rax        # 63f0 <r9w>
    146b:	48 8d 05 be 50 00 00 	lea    rax,[rip+0x50be]        # 6530 <regs.4+0x50>
    1472:	48 89 05 7f 4f 00 00 	mov    QWORD PTR [rip+0x4f7f],rax        # 63f8 <r9b>
    1479:	48 8d 05 b8 50 00 00 	lea    rax,[rip+0x50b8]        # 6538 <regs.4+0x58>
    1480:	48 89 05 79 4f 00 00 	mov    QWORD PTR [rip+0x4f79],rax        # 6400 <r10>
    1487:	48 8d 05 aa 50 00 00 	lea    rax,[rip+0x50aa]        # 6538 <regs.4+0x58>
    148e:	48 89 05 73 4f 00 00 	mov    QWORD PTR [rip+0x4f73],rax        # 6408 <r10d>
    1495:	48 8d 05 9c 50 00 00 	lea    rax,[rip+0x509c]        # 6538 <regs.4+0x58>
    149c:	48 89 05 6d 4f 00 00 	mov    QWORD PTR [rip+0x4f6d],rax        # 6410 <r10w>
    14a3:	48 8d 05 8e 50 00 00 	lea    rax,[rip+0x508e]        # 6538 <regs.4+0x58>
    14aa:	48 89 05 67 4f 00 00 	mov    QWORD PTR [rip+0x4f67],rax        # 6418 <r10b>
    14b1:	48 8d 05 88 50 00 00 	lea    rax,[rip+0x5088]        # 6540 <regs.4+0x60>
    14b8:	48 89 05 61 4f 00 00 	mov    QWORD PTR [rip+0x4f61],rax        # 6420 <r11>
    14bf:	48 8d 05 7a 50 00 00 	lea    rax,[rip+0x507a]        # 6540 <regs.4+0x60>
    14c6:	48 89 05 5b 4f 00 00 	mov    QWORD PTR [rip+0x4f5b],rax        # 6428 <r11d>
    14cd:	48 8d 05 6c 50 00 00 	lea    rax,[rip+0x506c]        # 6540 <regs.4+0x60>
    14d4:	48 89 05 55 4f 00 00 	mov    QWORD PTR [rip+0x4f55],rax        # 6430 <r11w>
    14db:	48 8d 05 5e 50 00 00 	lea    rax,[rip+0x505e]        # 6540 <regs.4+0x60>
    14e2:	48 89 05 4f 4f 00 00 	mov    QWORD PTR [rip+0x4f4f],rax        # 6438 <r11b>
    14e9:	48 8d 05 58 50 00 00 	lea    rax,[rip+0x5058]        # 6548 <regs.4+0x68>
    14f0:	48 89 05 49 4f 00 00 	mov    QWORD PTR [rip+0x4f49],rax        # 6440 <r12>
    14f7:	48 8d 05 4a 50 00 00 	lea    rax,[rip+0x504a]        # 6548 <regs.4+0x68>
    14fe:	48 89 05 43 4f 00 00 	mov    QWORD PTR [rip+0x4f43],rax        # 6448 <r12d>
    1505:	48 8d 05 3c 50 00 00 	lea    rax,[rip+0x503c]        # 6548 <regs.4+0x68>
    150c:	48 89 05 3d 4f 00 00 	mov    QWORD PTR [rip+0x4f3d],rax        # 6450 <r12w>
    1513:	48 8d 05 2e 50 00 00 	lea    rax,[rip+0x502e]        # 6548 <regs.4+0x68>
    151a:	48 89 05 37 4f 00 00 	mov    QWORD PTR [rip+0x4f37],rax        # 6458 <r12b>
    1521:	48 8d 05 28 50 00 00 	lea    rax,[rip+0x5028]        # 6550 <regs.4+0x70>
    1528:	48 89 05 31 4f 00 00 	mov    QWORD PTR [rip+0x4f31],rax        # 6460 <r13>
    152f:	48 8d 05 1a 50 00 00 	lea    rax,[rip+0x501a]        # 6550 <regs.4+0x70>
    1536:	48 89 05 2b 4f 00 00 	mov    QWORD PTR [rip+0x4f2b],rax        # 6468 <r13d>
    153d:	48 8d 05 0c 50 00 00 	lea    rax,[rip+0x500c]        # 6550 <regs.4+0x70>
    1544:	48 89 05 25 4f 00 00 	mov    QWORD PTR [rip+0x4f25],rax        # 6470 <r13w>
    154b:	48 8d 05 fe 4f 00 00 	lea    rax,[rip+0x4ffe]        # 6550 <regs.4+0x70>
    1552:	48 89 05 1f 4f 00 00 	mov    QWORD PTR [rip+0x4f1f],rax        # 6478 <r13b>
    1559:	48 8d 05 f8 4f 00 00 	lea    rax,[rip+0x4ff8]        # 6558 <regs.4+0x78>
    1560:	48 89 05 19 4f 00 00 	mov    QWORD PTR [rip+0x4f19],rax        # 6480 <r14>
    1567:	48 8d 05 ea 4f 00 00 	lea    rax,[rip+0x4fea]        # 6558 <regs.4+0x78>
    156e:	48 89 05 13 4f 00 00 	mov    QWORD PTR [rip+0x4f13],rax        # 6488 <r14d>
    1575:	48 8d 05 dc 4f 00 00 	lea    rax,[rip+0x4fdc]        # 6558 <regs.4+0x78>
    157c:	48 89 05 0d 4f 00 00 	mov    QWORD PTR [rip+0x4f0d],rax        # 6490 <r14w>
    1583:	48 8d 05 ce 4f 00 00 	lea    rax,[rip+0x4fce]        # 6558 <regs.4+0x78>
    158a:	48 89 05 07 4f 00 00 	mov    QWORD PTR [rip+0x4f07],rax        # 6498 <r14b>
    1591:	48 8d 05 c8 4f 00 00 	lea    rax,[rip+0x4fc8]        # 6560 <regs.4+0x80>
    1598:	48 89 05 01 4f 00 00 	mov    QWORD PTR [rip+0x4f01],rax        # 64a0 <r15>
    159f:	48 8d 05 ba 4f 00 00 	lea    rax,[rip+0x4fba]        # 6560 <regs.4+0x80>
    15a6:	48 89 05 fb 4e 00 00 	mov    QWORD PTR [rip+0x4efb],rax        # 64a8 <r15d>
    15ad:	48 8d 05 ac 4f 00 00 	lea    rax,[rip+0x4fac]        # 6560 <regs.4+0x80>
    15b4:	48 89 05 f5 4e 00 00 	mov    QWORD PTR [rip+0x4ef5],rax        # 64b0 <r15w>
    15bb:	48 8d 05 9e 4f 00 00 	lea    rax,[rip+0x4f9e]        # 6560 <regs.4+0x80>
    15c2:	48 89 05 ef 4e 00 00 	mov    QWORD PTR [rip+0x4eef],rax        # 64b8 <r15b>
    15c9:	90                   	nop
    15ca:	5d                   	pop    rbp
    15cb:	c3                   	ret    

00000000000015cc <init_stack>:
    15cc:	f3 0f 1e fa          	endbr64 
    15d0:	55                   	push   rbp
    15d1:	48 89 e5             	mov    rbp,rsp
    15d4:	48 8b 05 c5 4d 00 00 	mov    rax,QWORD PTR [rip+0x4dc5]        # 63a0 <rsp>
    15db:	48 8d 15 9e 4f 00 00 	lea    rdx,[rip+0x4f9e]        # 6580 <stack.3>
    15e2:	48 8d 92 f8 ff ff 03 	lea    rdx,[rdx+0x3fffff8]
    15e9:	48 89 10             	mov    QWORD PTR [rax],rdx
    15ec:	48 8b 15 ad 4d 00 00 	mov    rdx,QWORD PTR [rip+0x4dad]        # 63a0 <rsp>
    15f3:	48 8b 05 86 4d 00 00 	mov    rax,QWORD PTR [rip+0x4d86]        # 6380 <rbp>
    15fa:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    15fd:	48 89 10             	mov    QWORD PTR [rax],rdx
    1600:	90                   	nop
    1601:	5d                   	pop    rbp
    1602:	c3                   	ret    

0000000000001603 <push_u64>:
    1603:	55                   	push   rbp
    1604:	48 89 e5             	mov    rbp,rsp
    1607:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    160b:	48 8b 05 8e 4d 00 00 	mov    rax,QWORD PTR [rip+0x4d8e]        # 63a0 <rsp>
    1612:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1615:	48 8b 05 84 4d 00 00 	mov    rax,QWORD PTR [rip+0x4d84]        # 63a0 <rsp>
    161c:	48 83 ea 08          	sub    rdx,0x8
    1620:	48 89 10             	mov    QWORD PTR [rax],rdx
    1623:	48 8b 05 76 4d 00 00 	mov    rax,QWORD PTR [rip+0x4d76]        # 63a0 <rsp>
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
    163e:	48 8b 05 5b 4d 00 00 	mov    rax,QWORD PTR [rip+0x4d5b]        # 63a0 <rsp>
    1645:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1648:	48 8b 00             	mov    rax,QWORD PTR [rax]
    164b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    164f:	48 8b 05 4a 4d 00 00 	mov    rax,QWORD PTR [rip+0x4d4a]        # 63a0 <rsp>
    1656:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1659:	48 8b 05 40 4d 00 00 	mov    rax,QWORD PTR [rip+0x4d40]        # 63a0 <rsp>
    1660:	48 83 c2 08          	add    rdx,0x8
    1664:	48 89 10             	mov    QWORD PTR [rax],rdx
    1667:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    166b:	5d                   	pop    rbp
    166c:	c3                   	ret    

000000000000166d <init_sections>:
    166d:	f3 0f 1e fa          	endbr64 
    1671:	55                   	push   rbp
    1672:	48 89 e5             	mov    rbp,rsp
    1675:	48 8d 05 a4 49 00 00 	lea    rax,[rip+0x49a4]        # 6020 <s_rodata_.2>
    167c:	48 89 05 3d 4e 00 00 	mov    QWORD PTR [rip+0x4e3d],rax        # 64c0 <s_rodata>
    1683:	48 8d 05 d6 4b 00 00 	lea    rax,[rip+0x4bd6]        # 6260 <s_data_.1>
    168a:	48 89 05 37 4e 00 00 	mov    QWORD PTR [rip+0x4e37],rax        # 64c8 <s_data>
    1691:	48 8d 05 e8 4e 00 04 	lea    rax,[rip+0x4004ee8]        # 4006580 <s_bss_.0>
    1698:	48 89 05 31 4e 00 00 	mov    QWORD PTR [rip+0x4e31],rax        # 64d0 <s_bss>
    169f:	90                   	nop
    16a0:	5d                   	pop    rbp
    16a1:	c3                   	ret    

00000000000016a2 <fib_rec>:
    16a2:	f3 0f 1e fa          	endbr64 
    16a6:	55                   	push   rbp
    16a7:	48 89 e5             	mov    rbp,rsp
    16aa:	53                   	push   rbx
    16ab:	48 83 ec 08          	sub    rsp,0x8
    16af:	48 8b 05 ca 4c 00 00 	mov    rax,QWORD PTR [rip+0x4cca]        # 6380 <rbp>
    16b6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    16b9:	48 89 c7             	mov    rdi,rax
    16bc:	e8 42 ff ff ff       	call   1603 <push_u64>
    16c1:	48 8b 15 d8 4c 00 00 	mov    rdx,QWORD PTR [rip+0x4cd8]        # 63a0 <rsp>
    16c8:	48 8b 05 b1 4c 00 00 	mov    rax,QWORD PTR [rip+0x4cb1]        # 6380 <rbp>
    16cf:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    16d2:	48 89 10             	mov    QWORD PTR [rax],rdx
    16d5:	48 8b 05 ec 4b 00 00 	mov    rax,QWORD PTR [rip+0x4bec]        # 62c8 <rbx>
    16dc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    16df:	48 89 c7             	mov    rdi,rax
    16e2:	e8 1c ff ff ff       	call   1603 <push_u64>
    16e7:	48 8b 05 b2 4c 00 00 	mov    rax,QWORD PTR [rip+0x4cb2]        # 63a0 <rsp>
    16ee:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    16f1:	48 8b 05 a8 4c 00 00 	mov    rax,QWORD PTR [rip+0x4ca8]        # 63a0 <rsp>
    16f8:	48 83 ea 18          	sub    rdx,0x18
    16fc:	48 89 10             	mov    QWORD PTR [rax],rdx
    16ff:	48 8b 05 5a 4c 00 00 	mov    rax,QWORD PTR [rip+0x4c5a]        # 6360 <rdi>
    1706:	48 8b 15 73 4c 00 00 	mov    rdx,QWORD PTR [rip+0x4c73]        # 6380 <rbp>
    170d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1710:	48 83 ea 18          	sub    rdx,0x18
    1714:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1717:	48 89 02             	mov    QWORD PTR [rdx],rax
    171a:	48 8b 05 5f 4c 00 00 	mov    rax,QWORD PTR [rip+0x4c5f]        # 6380 <rbp>
    1721:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1724:	48 83 e8 18          	sub    rax,0x18
    1728:	48 8b 00             	mov    rax,QWORD PTR [rax]
    172b:	48 83 f8 01          	cmp    rax,0x1
    172f:	0f 86 d5 00 00 00    	jbe    180a <fib_rec+0x168>
    1735:	48 8b 05 44 4c 00 00 	mov    rax,QWORD PTR [rip+0x4c44]        # 6380 <rbp>
    173c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    173f:	48 83 e8 18          	sub    rax,0x18
    1743:	48 89 c2             	mov    rdx,rax
    1746:	48 8b 05 53 4b 00 00 	mov    rax,QWORD PTR [rip+0x4b53]        # 62a0 <rax>
    174d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1750:	48 89 10             	mov    QWORD PTR [rax],rdx
    1753:	48 8b 05 46 4b 00 00 	mov    rax,QWORD PTR [rip+0x4b46]        # 62a0 <rax>
    175a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    175d:	48 8b 05 3c 4b 00 00 	mov    rax,QWORD PTR [rip+0x4b3c]        # 62a0 <rax>
    1764:	48 83 ea 01          	sub    rdx,0x1
    1768:	48 89 10             	mov    QWORD PTR [rax],rdx
    176b:	48 8b 15 2e 4b 00 00 	mov    rdx,QWORD PTR [rip+0x4b2e]        # 62a0 <rax>
    1772:	48 8b 05 e7 4b 00 00 	mov    rax,QWORD PTR [rip+0x4be7]        # 6360 <rdi>
    1779:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    177c:	48 89 10             	mov    QWORD PTR [rax],rdx
    177f:	e8 1e ff ff ff       	call   16a2 <fib_rec>
    1784:	48 8b 15 15 4b 00 00 	mov    rdx,QWORD PTR [rip+0x4b15]        # 62a0 <rax>
    178b:	48 8b 05 36 4b 00 00 	mov    rax,QWORD PTR [rip+0x4b36]        # 62c8 <rbx>
    1792:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1795:	48 89 10             	mov    QWORD PTR [rax],rdx
    1798:	48 8b 05 e1 4b 00 00 	mov    rax,QWORD PTR [rip+0x4be1]        # 6380 <rbp>
    179f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    17a2:	48 83 e8 18          	sub    rax,0x18
    17a6:	48 89 c2             	mov    rdx,rax
    17a9:	48 8b 05 f0 4a 00 00 	mov    rax,QWORD PTR [rip+0x4af0]        # 62a0 <rax>
    17b0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    17b3:	48 89 10             	mov    QWORD PTR [rax],rdx
    17b6:	48 8b 05 e3 4a 00 00 	mov    rax,QWORD PTR [rip+0x4ae3]        # 62a0 <rax>
    17bd:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    17c0:	48 8b 05 d9 4a 00 00 	mov    rax,QWORD PTR [rip+0x4ad9]        # 62a0 <rax>
    17c7:	48 83 ea 02          	sub    rdx,0x2
    17cb:	48 89 10             	mov    QWORD PTR [rax],rdx
    17ce:	48 8b 15 cb 4a 00 00 	mov    rdx,QWORD PTR [rip+0x4acb]        # 62a0 <rax>
    17d5:	48 8b 05 84 4b 00 00 	mov    rax,QWORD PTR [rip+0x4b84]        # 6360 <rdi>
    17dc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    17df:	48 89 10             	mov    QWORD PTR [rax],rdx
    17e2:	e8 bb fe ff ff       	call   16a2 <fib_rec>
    17e7:	48 8b 05 b2 4a 00 00 	mov    rax,QWORD PTR [rip+0x4ab2]        # 62a0 <rax>
    17ee:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    17f1:	48 8b 05 d0 4a 00 00 	mov    rax,QWORD PTR [rip+0x4ad0]        # 62c8 <rbx>
    17f8:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    17fb:	48 8b 05 9e 4a 00 00 	mov    rax,QWORD PTR [rip+0x4a9e]        # 62a0 <rax>
    1802:	48 01 ca             	add    rdx,rcx
    1805:	48 89 10             	mov    QWORD PTR [rax],rdx
    1808:	eb 1f                	jmp    1829 <fib_rec+0x187>
    180a:	90                   	nop
    180b:	48 8b 05 6e 4b 00 00 	mov    rax,QWORD PTR [rip+0x4b6e]        # 6380 <rbp>
    1812:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1815:	48 83 e8 18          	sub    rax,0x18
    1819:	48 89 c2             	mov    rdx,rax
    181c:	48 8b 05 7d 4a 00 00 	mov    rax,QWORD PTR [rip+0x4a7d]        # 62a0 <rax>
    1823:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1826:	48 89 10             	mov    QWORD PTR [rax],rdx
    1829:	48 8b 05 50 4b 00 00 	mov    rax,QWORD PTR [rip+0x4b50]        # 6380 <rbp>
    1830:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1833:	48 83 e8 08          	sub    rax,0x8
    1837:	48 89 c2             	mov    rdx,rax
    183a:	48 8b 05 87 4a 00 00 	mov    rax,QWORD PTR [rip+0x4a87]        # 62c8 <rbx>
    1841:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1844:	48 89 10             	mov    QWORD PTR [rax],rdx
    1847:	48 8b 15 32 4b 00 00 	mov    rdx,QWORD PTR [rip+0x4b32]        # 6380 <rbp>
    184e:	48 8b 05 4b 4b 00 00 	mov    rax,QWORD PTR [rip+0x4b4b]        # 63a0 <rsp>
    1855:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1858:	48 89 10             	mov    QWORD PTR [rax],rdx
    185b:	48 8b 1d 1e 4b 00 00 	mov    rbx,QWORD PTR [rip+0x4b1e]        # 6380 <rbp>
    1862:	e8 d3 fd ff ff       	call   163a <pop_u64>
    1867:	48 89 03             	mov    QWORD PTR [rbx],rax
    186a:	90                   	nop
    186b:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    186f:	c9                   	leave  
    1870:	c3                   	ret    

0000000000001871 <fib_tbl_static>:
    1871:	f3 0f 1e fa          	endbr64 
    1875:	55                   	push   rbp
    1876:	48 89 e5             	mov    rbp,rsp
    1879:	53                   	push   rbx
    187a:	48 83 ec 08          	sub    rsp,0x8
    187e:	48 8b 05 fb 4a 00 00 	mov    rax,QWORD PTR [rip+0x4afb]        # 6380 <rbp>
    1885:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1888:	48 89 c7             	mov    rdi,rax
    188b:	e8 73 fd ff ff       	call   1603 <push_u64>
    1890:	48 8b 15 09 4b 00 00 	mov    rdx,QWORD PTR [rip+0x4b09]        # 63a0 <rsp>
    1897:	48 8b 05 e2 4a 00 00 	mov    rax,QWORD PTR [rip+0x4ae2]        # 6380 <rbp>
    189e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    18a1:	48 89 10             	mov    QWORD PTR [rax],rdx
    18a4:	48 8b 05 1d 4a 00 00 	mov    rax,QWORD PTR [rip+0x4a1d]        # 62c8 <rbx>
    18ab:	48 8b 00             	mov    rax,QWORD PTR [rax]
    18ae:	48 89 c7             	mov    rdi,rax
    18b1:	e8 4d fd ff ff       	call   1603 <push_u64>
    18b6:	48 8b 05 e3 4a 00 00 	mov    rax,QWORD PTR [rip+0x4ae3]        # 63a0 <rsp>
    18bd:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    18c0:	48 8b 05 d9 4a 00 00 	mov    rax,QWORD PTR [rip+0x4ad9]        # 63a0 <rsp>
    18c7:	48 83 ea 18          	sub    rdx,0x18
    18cb:	48 89 10             	mov    QWORD PTR [rax],rdx
    18ce:	48 8b 05 8b 4a 00 00 	mov    rax,QWORD PTR [rip+0x4a8b]        # 6360 <rdi>
    18d5:	48 8b 15 a4 4a 00 00 	mov    rdx,QWORD PTR [rip+0x4aa4]        # 6380 <rbp>
    18dc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    18df:	48 83 ea 18          	sub    rdx,0x18
    18e3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    18e6:	48 89 02             	mov    QWORD PTR [rdx],rax
    18e9:	48 8b 05 90 4a 00 00 	mov    rax,QWORD PTR [rip+0x4a90]        # 6380 <rbp>
    18f0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    18f3:	48 83 e8 18          	sub    rax,0x18
    18f7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    18fa:	48 83 f8 01          	cmp    rax,0x1
    18fe:	77 23                	ja     1923 <fib_tbl_static+0xb2>
    1900:	48 8b 05 79 4a 00 00 	mov    rax,QWORD PTR [rip+0x4a79]        # 6380 <rbp>
    1907:	48 8b 00             	mov    rax,QWORD PTR [rax]
    190a:	48 83 e8 18          	sub    rax,0x18
    190e:	48 89 c2             	mov    rdx,rax
    1911:	48 8b 05 88 49 00 00 	mov    rax,QWORD PTR [rip+0x4988]        # 62a0 <rax>
    1918:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    191b:	48 89 10             	mov    QWORD PTR [rax],rdx
    191e:	e9 ae 02 00 00       	jmp    1bd1 <fib_tbl_static+0x360>
    1923:	90                   	nop
    1924:	48 8b 05 55 4a 00 00 	mov    rax,QWORD PTR [rip+0x4a55]        # 6380 <rbp>
    192b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    192e:	48 83 e8 18          	sub    rax,0x18
    1932:	48 89 c2             	mov    rdx,rax
    1935:	48 8b 05 64 49 00 00 	mov    rax,QWORD PTR [rip+0x4964]        # 62a0 <rax>
    193c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    193f:	48 89 10             	mov    QWORD PTR [rax],rdx
    1942:	48 8b 05 57 49 00 00 	mov    rax,QWORD PTR [rip+0x4957]        # 62a0 <rax>
    1949:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    194c:	48 8b 05 c5 49 00 00 	mov    rax,QWORD PTR [rip+0x49c5]        # 6318 <rdx>
    1953:	48 c1 e2 03          	shl    rdx,0x3
    1957:	48 89 10             	mov    QWORD PTR [rax],rdx
    195a:	48 8b 05 6f 4b 00 00 	mov    rax,QWORD PTR [rip+0x4b6f]        # 64d0 <s_bss>
    1961:	48 8d 50 20          	lea    rdx,[rax+0x20]
    1965:	48 8b 05 34 49 00 00 	mov    rax,QWORD PTR [rip+0x4934]        # 62a0 <rax>
    196c:	48 89 10             	mov    QWORD PTR [rax],rdx
    196f:	48 8b 05 a2 49 00 00 	mov    rax,QWORD PTR [rip+0x49a2]        # 6318 <rdx>
    1976:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1979:	48 8b 05 20 49 00 00 	mov    rax,QWORD PTR [rip+0x4920]        # 62a0 <rax>
    1980:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1983:	48 01 d0             	add    rax,rdx
    1986:	48 89 c2             	mov    rdx,rax
    1989:	48 8b 05 10 49 00 00 	mov    rax,QWORD PTR [rip+0x4910]        # 62a0 <rax>
    1990:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1993:	48 89 10             	mov    QWORD PTR [rax],rdx
    1996:	48 8b 05 03 49 00 00 	mov    rax,QWORD PTR [rip+0x4903]        # 62a0 <rax>
    199d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    19a0:	48 85 c0             	test   rax,rax
    19a3:	74 77                	je     1a1c <fib_tbl_static+0x1ab>
    19a5:	48 8b 05 d4 49 00 00 	mov    rax,QWORD PTR [rip+0x49d4]        # 6380 <rbp>
    19ac:	48 8b 00             	mov    rax,QWORD PTR [rax]
    19af:	48 83 e8 18          	sub    rax,0x18
    19b3:	48 89 c2             	mov    rdx,rax
    19b6:	48 8b 05 e3 48 00 00 	mov    rax,QWORD PTR [rip+0x48e3]        # 62a0 <rax>
    19bd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    19c0:	48 89 10             	mov    QWORD PTR [rax],rdx
    19c3:	48 8b 05 d6 48 00 00 	mov    rax,QWORD PTR [rip+0x48d6]        # 62a0 <rax>
    19ca:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    19cd:	48 8b 05 44 49 00 00 	mov    rax,QWORD PTR [rip+0x4944]        # 6318 <rdx>
    19d4:	48 c1 e2 03          	shl    rdx,0x3
    19d8:	48 89 10             	mov    QWORD PTR [rax],rdx
    19db:	48 8b 05 ee 4a 00 00 	mov    rax,QWORD PTR [rip+0x4aee]        # 64d0 <s_bss>
    19e2:	48 8d 50 20          	lea    rdx,[rax+0x20]
    19e6:	48 8b 05 b3 48 00 00 	mov    rax,QWORD PTR [rip+0x48b3]        # 62a0 <rax>
    19ed:	48 89 10             	mov    QWORD PTR [rax],rdx
    19f0:	48 8b 05 21 49 00 00 	mov    rax,QWORD PTR [rip+0x4921]        # 6318 <rdx>
    19f7:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    19fa:	48 8b 05 9f 48 00 00 	mov    rax,QWORD PTR [rip+0x489f]        # 62a0 <rax>
    1a01:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1a04:	48 01 d0             	add    rax,rdx
    1a07:	48 89 c2             	mov    rdx,rax
    1a0a:	48 8b 05 8f 48 00 00 	mov    rax,QWORD PTR [rip+0x488f]        # 62a0 <rax>
    1a11:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1a14:	48 89 10             	mov    QWORD PTR [rax],rdx
    1a17:	e9 b5 01 00 00       	jmp    1bd1 <fib_tbl_static+0x360>
    1a1c:	90                   	nop
    1a1d:	48 8b 05 5c 49 00 00 	mov    rax,QWORD PTR [rip+0x495c]        # 6380 <rbp>
    1a24:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1a27:	48 83 e8 18          	sub    rax,0x18
    1a2b:	48 89 c2             	mov    rdx,rax
    1a2e:	48 8b 05 6b 48 00 00 	mov    rax,QWORD PTR [rip+0x486b]        # 62a0 <rax>
    1a35:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1a38:	48 89 10             	mov    QWORD PTR [rax],rdx
    1a3b:	48 8b 05 5e 48 00 00 	mov    rax,QWORD PTR [rip+0x485e]        # 62a0 <rax>
    1a42:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1a45:	48 8b 05 54 48 00 00 	mov    rax,QWORD PTR [rip+0x4854]        # 62a0 <rax>
    1a4c:	48 83 ea 01          	sub    rdx,0x1
    1a50:	48 89 10             	mov    QWORD PTR [rax],rdx
    1a53:	48 8b 15 46 48 00 00 	mov    rdx,QWORD PTR [rip+0x4846]        # 62a0 <rax>
    1a5a:	48 8b 05 ff 48 00 00 	mov    rax,QWORD PTR [rip+0x48ff]        # 6360 <rdi>
    1a61:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1a64:	48 89 10             	mov    QWORD PTR [rax],rdx
    1a67:	e8 05 fe ff ff       	call   1871 <fib_tbl_static>
    1a6c:	48 8b 15 2d 48 00 00 	mov    rdx,QWORD PTR [rip+0x482d]        # 62a0 <rax>
    1a73:	48 8b 05 4e 48 00 00 	mov    rax,QWORD PTR [rip+0x484e]        # 62c8 <rbx>
    1a7a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1a7d:	48 89 10             	mov    QWORD PTR [rax],rdx
    1a80:	48 8b 05 f9 48 00 00 	mov    rax,QWORD PTR [rip+0x48f9]        # 6380 <rbp>
    1a87:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1a8a:	48 83 e8 18          	sub    rax,0x18
    1a8e:	48 89 c2             	mov    rdx,rax
    1a91:	48 8b 05 08 48 00 00 	mov    rax,QWORD PTR [rip+0x4808]        # 62a0 <rax>
    1a98:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1a9b:	48 89 10             	mov    QWORD PTR [rax],rdx
    1a9e:	48 8b 05 fb 47 00 00 	mov    rax,QWORD PTR [rip+0x47fb]        # 62a0 <rax>
    1aa5:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1aa8:	48 8b 05 f1 47 00 00 	mov    rax,QWORD PTR [rip+0x47f1]        # 62a0 <rax>
    1aaf:	48 83 ea 02          	sub    rdx,0x2
    1ab3:	48 89 10             	mov    QWORD PTR [rax],rdx
    1ab6:	48 8b 15 e3 47 00 00 	mov    rdx,QWORD PTR [rip+0x47e3]        # 62a0 <rax>
    1abd:	48 8b 05 9c 48 00 00 	mov    rax,QWORD PTR [rip+0x489c]        # 6360 <rdi>
    1ac4:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1ac7:	48 89 10             	mov    QWORD PTR [rax],rdx
    1aca:	e8 a2 fd ff ff       	call   1871 <fib_tbl_static>
    1acf:	48 8b 05 f2 47 00 00 	mov    rax,QWORD PTR [rip+0x47f2]        # 62c8 <rbx>
    1ad6:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    1ad9:	48 8b 05 c0 47 00 00 	mov    rax,QWORD PTR [rip+0x47c0]        # 62a0 <rax>
    1ae0:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1ae3:	48 8b 05 06 48 00 00 	mov    rax,QWORD PTR [rip+0x4806]        # 62f0 <rcx>
    1aea:	48 01 ca             	add    rdx,rcx
    1aed:	48 89 10             	mov    QWORD PTR [rax],rdx
    1af0:	48 8b 05 89 48 00 00 	mov    rax,QWORD PTR [rip+0x4889]        # 6380 <rbp>
    1af7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1afa:	48 83 e8 18          	sub    rax,0x18
    1afe:	48 89 c2             	mov    rdx,rax
    1b01:	48 8b 05 98 47 00 00 	mov    rax,QWORD PTR [rip+0x4798]        # 62a0 <rax>
    1b08:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1b0b:	48 89 10             	mov    QWORD PTR [rax],rdx
    1b0e:	48 8b 05 8b 47 00 00 	mov    rax,QWORD PTR [rip+0x478b]        # 62a0 <rax>
    1b15:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1b18:	48 8b 05 f9 47 00 00 	mov    rax,QWORD PTR [rip+0x47f9]        # 6318 <rdx>
    1b1f:	48 c1 e2 03          	shl    rdx,0x3
    1b23:	48 89 10             	mov    QWORD PTR [rax],rdx
    1b26:	48 8b 05 a3 49 00 00 	mov    rax,QWORD PTR [rip+0x49a3]        # 64d0 <s_bss>
    1b2d:	48 8d 50 20          	lea    rdx,[rax+0x20]
    1b31:	48 8b 05 68 47 00 00 	mov    rax,QWORD PTR [rip+0x4768]        # 62a0 <rax>
    1b38:	48 89 10             	mov    QWORD PTR [rax],rdx
    1b3b:	48 8b 05 ae 47 00 00 	mov    rax,QWORD PTR [rip+0x47ae]        # 62f0 <rcx>
    1b42:	48 8b 15 cf 47 00 00 	mov    rdx,QWORD PTR [rip+0x47cf]        # 6318 <rdx>
    1b49:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
    1b4c:	48 8b 15 4d 47 00 00 	mov    rdx,QWORD PTR [rip+0x474d]        # 62a0 <rax>
    1b53:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1b56:	48 01 ca             	add    rdx,rcx
    1b59:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1b5c:	48 89 02             	mov    QWORD PTR [rdx],rax
    1b5f:	48 8b 05 1a 48 00 00 	mov    rax,QWORD PTR [rip+0x481a]        # 6380 <rbp>
    1b66:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1b69:	48 83 e8 18          	sub    rax,0x18
    1b6d:	48 89 c2             	mov    rdx,rax
    1b70:	48 8b 05 29 47 00 00 	mov    rax,QWORD PTR [rip+0x4729]        # 62a0 <rax>
    1b77:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1b7a:	48 89 10             	mov    QWORD PTR [rax],rdx
    1b7d:	48 8b 05 1c 47 00 00 	mov    rax,QWORD PTR [rip+0x471c]        # 62a0 <rax>
    1b84:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1b87:	48 8b 05 8a 47 00 00 	mov    rax,QWORD PTR [rip+0x478a]        # 6318 <rdx>
    1b8e:	48 c1 e2 03          	shl    rdx,0x3
    1b92:	48 89 10             	mov    QWORD PTR [rax],rdx
    1b95:	48 8b 05 34 49 00 00 	mov    rax,QWORD PTR [rip+0x4934]        # 64d0 <s_bss>
    1b9c:	48 8d 50 20          	lea    rdx,[rax+0x20]
    1ba0:	48 8b 05 f9 46 00 00 	mov    rax,QWORD PTR [rip+0x46f9]        # 62a0 <rax>
    1ba7:	48 89 10             	mov    QWORD PTR [rax],rdx
    1baa:	48 8b 05 67 47 00 00 	mov    rax,QWORD PTR [rip+0x4767]        # 6318 <rdx>
    1bb1:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1bb4:	48 8b 05 e5 46 00 00 	mov    rax,QWORD PTR [rip+0x46e5]        # 62a0 <rax>
    1bbb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1bbe:	48 01 d0             	add    rax,rdx
    1bc1:	48 89 c2             	mov    rdx,rax
    1bc4:	48 8b 05 d5 46 00 00 	mov    rax,QWORD PTR [rip+0x46d5]        # 62a0 <rax>
    1bcb:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1bce:	48 89 10             	mov    QWORD PTR [rax],rdx
    1bd1:	48 8b 05 a8 47 00 00 	mov    rax,QWORD PTR [rip+0x47a8]        # 6380 <rbp>
    1bd8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1bdb:	48 83 e8 08          	sub    rax,0x8
    1bdf:	48 89 c2             	mov    rdx,rax
    1be2:	48 8b 05 df 46 00 00 	mov    rax,QWORD PTR [rip+0x46df]        # 62c8 <rbx>
    1be9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1bec:	48 89 10             	mov    QWORD PTR [rax],rdx
    1bef:	48 8b 15 8a 47 00 00 	mov    rdx,QWORD PTR [rip+0x478a]        # 6380 <rbp>
    1bf6:	48 8b 05 a3 47 00 00 	mov    rax,QWORD PTR [rip+0x47a3]        # 63a0 <rsp>
    1bfd:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1c00:	48 89 10             	mov    QWORD PTR [rax],rdx
    1c03:	48 8b 1d 76 47 00 00 	mov    rbx,QWORD PTR [rip+0x4776]        # 6380 <rbp>
    1c0a:	e8 2b fa ff ff       	call   163a <pop_u64>
    1c0f:	48 89 03             	mov    QWORD PTR [rbx],rax
    1c12:	90                   	nop
    1c13:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    1c17:	c9                   	leave  
    1c18:	c3                   	ret    

0000000000001c19 <fib_tbl_dyn_>:
    1c19:	f3 0f 1e fa          	endbr64 
    1c1d:	55                   	push   rbp
    1c1e:	48 89 e5             	mov    rbp,rsp
    1c21:	53                   	push   rbx
    1c22:	48 83 ec 08          	sub    rsp,0x8
    1c26:	48 8b 05 53 47 00 00 	mov    rax,QWORD PTR [rip+0x4753]        # 6380 <rbp>
    1c2d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1c30:	48 89 c7             	mov    rdi,rax
    1c33:	e8 cb f9 ff ff       	call   1603 <push_u64>
    1c38:	48 8b 15 61 47 00 00 	mov    rdx,QWORD PTR [rip+0x4761]        # 63a0 <rsp>
    1c3f:	48 8b 05 3a 47 00 00 	mov    rax,QWORD PTR [rip+0x473a]        # 6380 <rbp>
    1c46:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1c49:	48 89 10             	mov    QWORD PTR [rax],rdx
    1c4c:	48 8b 05 75 46 00 00 	mov    rax,QWORD PTR [rip+0x4675]        # 62c8 <rbx>
    1c53:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1c56:	48 89 c7             	mov    rdi,rax
    1c59:	e8 a5 f9 ff ff       	call   1603 <push_u64>
    1c5e:	48 8b 05 3b 47 00 00 	mov    rax,QWORD PTR [rip+0x473b]        # 63a0 <rsp>
    1c65:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1c68:	48 8b 05 31 47 00 00 	mov    rax,QWORD PTR [rip+0x4731]        # 63a0 <rsp>
    1c6f:	48 83 ea 18          	sub    rdx,0x18
    1c73:	48 89 10             	mov    QWORD PTR [rax],rdx
    1c76:	48 8b 05 e3 46 00 00 	mov    rax,QWORD PTR [rip+0x46e3]        # 6360 <rdi>
    1c7d:	48 8b 15 fc 46 00 00 	mov    rdx,QWORD PTR [rip+0x46fc]        # 6380 <rbp>
    1c84:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1c87:	48 83 ea 18          	sub    rdx,0x18
    1c8b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1c8e:	48 89 02             	mov    QWORD PTR [rdx],rax
    1c91:	48 8b 05 a8 46 00 00 	mov    rax,QWORD PTR [rip+0x46a8]        # 6340 <rsi>
    1c98:	48 8b 15 e1 46 00 00 	mov    rdx,QWORD PTR [rip+0x46e1]        # 6380 <rbp>
    1c9f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1ca2:	48 83 ea 20          	sub    rdx,0x20
    1ca6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1ca9:	48 89 02             	mov    QWORD PTR [rdx],rax
    1cac:	48 8b 05 cd 46 00 00 	mov    rax,QWORD PTR [rip+0x46cd]        # 6380 <rbp>
    1cb3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1cb6:	48 83 e8 18          	sub    rax,0x18
    1cba:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1cbd:	48 83 f8 01          	cmp    rax,0x1
    1cc1:	77 23                	ja     1ce6 <fib_tbl_dyn_+0xcd>
    1cc3:	48 8b 05 b6 46 00 00 	mov    rax,QWORD PTR [rip+0x46b6]        # 6380 <rbp>
    1cca:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1ccd:	48 83 e8 18          	sub    rax,0x18
    1cd1:	48 89 c2             	mov    rdx,rax
    1cd4:	48 8b 05 c5 45 00 00 	mov    rax,QWORD PTR [rip+0x45c5]        # 62a0 <rax>
    1cdb:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1cde:	48 89 10             	mov    QWORD PTR [rax],rdx
    1ce1:	e9 29 03 00 00       	jmp    200f <fib_tbl_dyn_+0x3f6>
    1ce6:	90                   	nop
    1ce7:	48 8b 05 92 46 00 00 	mov    rax,QWORD PTR [rip+0x4692]        # 6380 <rbp>
    1cee:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1cf1:	48 83 e8 18          	sub    rax,0x18
    1cf5:	48 89 c2             	mov    rdx,rax
    1cf8:	48 8b 05 a1 45 00 00 	mov    rax,QWORD PTR [rip+0x45a1]        # 62a0 <rax>
    1cff:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1d02:	48 89 10             	mov    QWORD PTR [rax],rdx
    1d05:	48 8b 05 94 45 00 00 	mov    rax,QWORD PTR [rip+0x4594]        # 62a0 <rax>
    1d0c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1d0f:	48 8b 05 02 46 00 00 	mov    rax,QWORD PTR [rip+0x4602]        # 6318 <rdx>
    1d16:	48 c1 e2 03          	shl    rdx,0x3
    1d1a:	48 89 10             	mov    QWORD PTR [rax],rdx
    1d1d:	48 8b 05 5c 46 00 00 	mov    rax,QWORD PTR [rip+0x465c]        # 6380 <rbp>
    1d24:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1d27:	48 83 e8 20          	sub    rax,0x20
    1d2b:	48 89 c2             	mov    rdx,rax
    1d2e:	48 8b 05 6b 45 00 00 	mov    rax,QWORD PTR [rip+0x456b]        # 62a0 <rax>
    1d35:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1d38:	48 89 10             	mov    QWORD PTR [rax],rdx
    1d3b:	48 8b 05 5e 45 00 00 	mov    rax,QWORD PTR [rip+0x455e]        # 62a0 <rax>
    1d42:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    1d45:	48 8b 05 cc 45 00 00 	mov    rax,QWORD PTR [rip+0x45cc]        # 6318 <rdx>
    1d4c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1d4f:	48 8b 05 4a 45 00 00 	mov    rax,QWORD PTR [rip+0x454a]        # 62a0 <rax>
    1d56:	48 01 ca             	add    rdx,rcx
    1d59:	48 89 10             	mov    QWORD PTR [rax],rdx
    1d5c:	48 8b 05 3d 45 00 00 	mov    rax,QWORD PTR [rip+0x453d]        # 62a0 <rax>
    1d63:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1d66:	48 89 c2             	mov    rdx,rax
    1d69:	48 8b 05 30 45 00 00 	mov    rax,QWORD PTR [rip+0x4530]        # 62a0 <rax>
    1d70:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1d73:	48 89 10             	mov    QWORD PTR [rax],rdx
    1d76:	48 8b 05 23 45 00 00 	mov    rax,QWORD PTR [rip+0x4523]        # 62a0 <rax>
    1d7d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1d80:	48 85 c0             	test   rax,rax
    1d83:	0f 84 94 00 00 00    	je     1e1d <fib_tbl_dyn_+0x204>
    1d89:	48 8b 05 f0 45 00 00 	mov    rax,QWORD PTR [rip+0x45f0]        # 6380 <rbp>
    1d90:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1d93:	48 83 e8 18          	sub    rax,0x18
    1d97:	48 89 c2             	mov    rdx,rax
    1d9a:	48 8b 05 ff 44 00 00 	mov    rax,QWORD PTR [rip+0x44ff]        # 62a0 <rax>
    1da1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1da4:	48 89 10             	mov    QWORD PTR [rax],rdx
    1da7:	48 8b 05 f2 44 00 00 	mov    rax,QWORD PTR [rip+0x44f2]        # 62a0 <rax>
    1dae:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1db1:	48 8b 05 60 45 00 00 	mov    rax,QWORD PTR [rip+0x4560]        # 6318 <rdx>
    1db8:	48 c1 e2 03          	shl    rdx,0x3
    1dbc:	48 89 10             	mov    QWORD PTR [rax],rdx
    1dbf:	48 8b 05 ba 45 00 00 	mov    rax,QWORD PTR [rip+0x45ba]        # 6380 <rbp>
    1dc6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1dc9:	48 83 e8 20          	sub    rax,0x20
    1dcd:	48 89 c2             	mov    rdx,rax
    1dd0:	48 8b 05 c9 44 00 00 	mov    rax,QWORD PTR [rip+0x44c9]        # 62a0 <rax>
    1dd7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1dda:	48 89 10             	mov    QWORD PTR [rax],rdx
    1ddd:	48 8b 05 bc 44 00 00 	mov    rax,QWORD PTR [rip+0x44bc]        # 62a0 <rax>
    1de4:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    1de7:	48 8b 05 2a 45 00 00 	mov    rax,QWORD PTR [rip+0x452a]        # 6318 <rdx>
    1dee:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1df1:	48 8b 05 a8 44 00 00 	mov    rax,QWORD PTR [rip+0x44a8]        # 62a0 <rax>
    1df8:	48 01 ca             	add    rdx,rcx
    1dfb:	48 89 10             	mov    QWORD PTR [rax],rdx
    1dfe:	48 8b 05 9b 44 00 00 	mov    rax,QWORD PTR [rip+0x449b]        # 62a0 <rax>
    1e05:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1e08:	48 89 c2             	mov    rdx,rax
    1e0b:	48 8b 05 8e 44 00 00 	mov    rax,QWORD PTR [rip+0x448e]        # 62a0 <rax>
    1e12:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1e15:	48 89 10             	mov    QWORD PTR [rax],rdx
    1e18:	e9 f2 01 00 00       	jmp    200f <fib_tbl_dyn_+0x3f6>
    1e1d:	90                   	nop
    1e1e:	48 8b 05 5b 45 00 00 	mov    rax,QWORD PTR [rip+0x455b]        # 6380 <rbp>
    1e25:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1e28:	48 83 e8 18          	sub    rax,0x18
    1e2c:	48 89 c2             	mov    rdx,rax
    1e2f:	48 8b 05 6a 44 00 00 	mov    rax,QWORD PTR [rip+0x446a]        # 62a0 <rax>
    1e36:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1e39:	48 89 10             	mov    QWORD PTR [rax],rdx
    1e3c:	48 8b 05 5d 44 00 00 	mov    rax,QWORD PTR [rip+0x445d]        # 62a0 <rax>
    1e43:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1e46:	48 8b 05 cb 44 00 00 	mov    rax,QWORD PTR [rip+0x44cb]        # 6318 <rdx>
    1e4d:	48 83 ea 01          	sub    rdx,0x1
    1e51:	48 89 10             	mov    QWORD PTR [rax],rdx
    1e54:	48 8b 05 25 45 00 00 	mov    rax,QWORD PTR [rip+0x4525]        # 6380 <rbp>
    1e5b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1e5e:	48 83 e8 20          	sub    rax,0x20
    1e62:	48 89 c2             	mov    rdx,rax
    1e65:	48 8b 05 34 44 00 00 	mov    rax,QWORD PTR [rip+0x4434]        # 62a0 <rax>
    1e6c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1e6f:	48 89 10             	mov    QWORD PTR [rax],rdx
    1e72:	48 8b 15 27 44 00 00 	mov    rdx,QWORD PTR [rip+0x4427]        # 62a0 <rax>
    1e79:	48 8b 05 c0 44 00 00 	mov    rax,QWORD PTR [rip+0x44c0]        # 6340 <rsi>
    1e80:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1e83:	48 89 10             	mov    QWORD PTR [rax],rdx
    1e86:	48 8b 15 8b 44 00 00 	mov    rdx,QWORD PTR [rip+0x448b]        # 6318 <rdx>
    1e8d:	48 8b 05 cc 44 00 00 	mov    rax,QWORD PTR [rip+0x44cc]        # 6360 <rdi>
    1e94:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1e97:	48 89 10             	mov    QWORD PTR [rax],rdx
    1e9a:	e8 7a fd ff ff       	call   1c19 <fib_tbl_dyn_>
    1e9f:	48 8b 15 fa 43 00 00 	mov    rdx,QWORD PTR [rip+0x43fa]        # 62a0 <rax>
    1ea6:	48 8b 05 1b 44 00 00 	mov    rax,QWORD PTR [rip+0x441b]        # 62c8 <rbx>
    1ead:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1eb0:	48 89 10             	mov    QWORD PTR [rax],rdx
    1eb3:	48 8b 05 c6 44 00 00 	mov    rax,QWORD PTR [rip+0x44c6]        # 6380 <rbp>
    1eba:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1ebd:	48 83 e8 18          	sub    rax,0x18
    1ec1:	48 89 c2             	mov    rdx,rax
    1ec4:	48 8b 05 d5 43 00 00 	mov    rax,QWORD PTR [rip+0x43d5]        # 62a0 <rax>
    1ecb:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1ece:	48 89 10             	mov    QWORD PTR [rax],rdx
    1ed1:	48 8b 05 c8 43 00 00 	mov    rax,QWORD PTR [rip+0x43c8]        # 62a0 <rax>
    1ed8:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1edb:	48 8b 05 36 44 00 00 	mov    rax,QWORD PTR [rip+0x4436]        # 6318 <rdx>
    1ee2:	48 83 ea 02          	sub    rdx,0x2
    1ee6:	48 89 10             	mov    QWORD PTR [rax],rdx
    1ee9:	48 8b 05 90 44 00 00 	mov    rax,QWORD PTR [rip+0x4490]        # 6380 <rbp>
    1ef0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1ef3:	48 83 e8 20          	sub    rax,0x20
    1ef7:	48 89 c2             	mov    rdx,rax
    1efa:	48 8b 05 9f 43 00 00 	mov    rax,QWORD PTR [rip+0x439f]        # 62a0 <rax>
    1f01:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1f04:	48 89 10             	mov    QWORD PTR [rax],rdx
    1f07:	48 8b 15 92 43 00 00 	mov    rdx,QWORD PTR [rip+0x4392]        # 62a0 <rax>
    1f0e:	48 8b 05 2b 44 00 00 	mov    rax,QWORD PTR [rip+0x442b]        # 6340 <rsi>
    1f15:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1f18:	48 89 10             	mov    QWORD PTR [rax],rdx
    1f1b:	48 8b 15 f6 43 00 00 	mov    rdx,QWORD PTR [rip+0x43f6]        # 6318 <rdx>
    1f22:	48 8b 05 37 44 00 00 	mov    rax,QWORD PTR [rip+0x4437]        # 6360 <rdi>
    1f29:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1f2c:	48 89 10             	mov    QWORD PTR [rax],rdx
    1f2f:	e8 e5 fc ff ff       	call   1c19 <fib_tbl_dyn_>
    1f34:	48 8b 15 65 43 00 00 	mov    rdx,QWORD PTR [rip+0x4365]        # 62a0 <rax>
    1f3b:	48 8b 05 d6 43 00 00 	mov    rax,QWORD PTR [rip+0x43d6]        # 6318 <rdx>
    1f42:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1f45:	48 89 10             	mov    QWORD PTR [rax],rdx
    1f48:	48 8b 05 31 44 00 00 	mov    rax,QWORD PTR [rip+0x4431]        # 6380 <rbp>
    1f4f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1f52:	48 83 e8 18          	sub    rax,0x18
    1f56:	48 89 c2             	mov    rdx,rax
    1f59:	48 8b 05 40 43 00 00 	mov    rax,QWORD PTR [rip+0x4340]        # 62a0 <rax>
    1f60:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1f63:	48 89 10             	mov    QWORD PTR [rax],rdx
    1f66:	48 8b 05 33 43 00 00 	mov    rax,QWORD PTR [rip+0x4333]        # 62a0 <rax>
    1f6d:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1f70:	48 8b 05 79 43 00 00 	mov    rax,QWORD PTR [rip+0x4379]        # 62f0 <rcx>
    1f77:	48 c1 e2 03          	shl    rdx,0x3
    1f7b:	48 89 10             	mov    QWORD PTR [rax],rdx
    1f7e:	48 8b 05 fb 43 00 00 	mov    rax,QWORD PTR [rip+0x43fb]        # 6380 <rbp>
    1f85:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1f88:	48 83 e8 20          	sub    rax,0x20
    1f8c:	48 89 c2             	mov    rdx,rax
    1f8f:	48 8b 05 0a 43 00 00 	mov    rax,QWORD PTR [rip+0x430a]        # 62a0 <rax>
    1f96:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1f99:	48 89 10             	mov    QWORD PTR [rax],rdx
    1f9c:	48 8b 05 fd 42 00 00 	mov    rax,QWORD PTR [rip+0x42fd]        # 62a0 <rax>
    1fa3:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    1fa6:	48 8b 05 43 43 00 00 	mov    rax,QWORD PTR [rip+0x4343]        # 62f0 <rcx>
    1fad:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1fb0:	48 8b 05 e9 42 00 00 	mov    rax,QWORD PTR [rip+0x42e9]        # 62a0 <rax>
    1fb7:	48 01 ca             	add    rdx,rcx
    1fba:	48 89 10             	mov    QWORD PTR [rax],rdx
    1fbd:	48 8b 05 54 43 00 00 	mov    rax,QWORD PTR [rip+0x4354]        # 6318 <rdx>
    1fc4:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    1fc7:	48 8b 05 fa 42 00 00 	mov    rax,QWORD PTR [rip+0x42fa]        # 62c8 <rbx>
    1fce:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1fd1:	48 8b 05 40 43 00 00 	mov    rax,QWORD PTR [rip+0x4340]        # 6318 <rdx>
    1fd8:	48 01 ca             	add    rdx,rcx
    1fdb:	48 89 10             	mov    QWORD PTR [rax],rdx
    1fde:	48 8b 05 33 43 00 00 	mov    rax,QWORD PTR [rip+0x4333]        # 6318 <rdx>
    1fe5:	48 8b 15 b4 42 00 00 	mov    rdx,QWORD PTR [rip+0x42b4]        # 62a0 <rax>
    1fec:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    1fef:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1ff2:	48 89 02             	mov    QWORD PTR [rdx],rax
    1ff5:	48 8b 05 a4 42 00 00 	mov    rax,QWORD PTR [rip+0x42a4]        # 62a0 <rax>
    1ffc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1fff:	48 89 c2             	mov    rdx,rax
    2002:	48 8b 05 97 42 00 00 	mov    rax,QWORD PTR [rip+0x4297]        # 62a0 <rax>
    2009:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    200c:	48 89 10             	mov    QWORD PTR [rax],rdx
    200f:	48 8b 05 6a 43 00 00 	mov    rax,QWORD PTR [rip+0x436a]        # 6380 <rbp>
    2016:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2019:	48 83 e8 08          	sub    rax,0x8
    201d:	48 89 c2             	mov    rdx,rax
    2020:	48 8b 05 a1 42 00 00 	mov    rax,QWORD PTR [rip+0x42a1]        # 62c8 <rbx>
    2027:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    202a:	48 89 10             	mov    QWORD PTR [rax],rdx
    202d:	48 8b 15 4c 43 00 00 	mov    rdx,QWORD PTR [rip+0x434c]        # 6380 <rbp>
    2034:	48 8b 05 65 43 00 00 	mov    rax,QWORD PTR [rip+0x4365]        # 63a0 <rsp>
    203b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    203e:	48 89 10             	mov    QWORD PTR [rax],rdx
    2041:	48 8b 1d 38 43 00 00 	mov    rbx,QWORD PTR [rip+0x4338]        # 6380 <rbp>
    2048:	e8 ed f5 ff ff       	call   163a <pop_u64>
    204d:	48 89 03             	mov    QWORD PTR [rbx],rax
    2050:	90                   	nop
    2051:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    2055:	c9                   	leave  
    2056:	c3                   	ret    

0000000000002057 <fib_tbl_dyn>:
    2057:	f3 0f 1e fa          	endbr64 
    205b:	55                   	push   rbp
    205c:	48 89 e5             	mov    rbp,rsp
    205f:	53                   	push   rbx
    2060:	48 83 ec 08          	sub    rsp,0x8
    2064:	48 8b 05 15 43 00 00 	mov    rax,QWORD PTR [rip+0x4315]        # 6380 <rbp>
    206b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    206e:	48 89 c7             	mov    rdi,rax
    2071:	e8 8d f5 ff ff       	call   1603 <push_u64>
    2076:	48 8b 15 23 43 00 00 	mov    rdx,QWORD PTR [rip+0x4323]        # 63a0 <rsp>
    207d:	48 8b 05 fc 42 00 00 	mov    rax,QWORD PTR [rip+0x42fc]        # 6380 <rbp>
    2084:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2087:	48 89 10             	mov    QWORD PTR [rax],rdx
    208a:	48 8b 05 0f 43 00 00 	mov    rax,QWORD PTR [rip+0x430f]        # 63a0 <rsp>
    2091:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2094:	48 8b 05 05 43 00 00 	mov    rax,QWORD PTR [rip+0x4305]        # 63a0 <rsp>
    209b:	48 83 ea 20          	sub    rdx,0x20
    209f:	48 89 10             	mov    QWORD PTR [rax],rdx
    20a2:	48 8b 05 b7 42 00 00 	mov    rax,QWORD PTR [rip+0x42b7]        # 6360 <rdi>
    20a9:	48 8b 15 d0 42 00 00 	mov    rdx,QWORD PTR [rip+0x42d0]        # 6380 <rbp>
    20b0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    20b3:	48 83 ea 18          	sub    rdx,0x18
    20b7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    20ba:	48 89 02             	mov    QWORD PTR [rdx],rax
    20bd:	48 8b 05 bc 42 00 00 	mov    rax,QWORD PTR [rip+0x42bc]        # 6380 <rbp>
    20c4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    20c7:	48 83 e8 18          	sub    rax,0x18
    20cb:	48 89 c2             	mov    rdx,rax
    20ce:	48 8b 05 cb 41 00 00 	mov    rax,QWORD PTR [rip+0x41cb]        # 62a0 <rax>
    20d5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    20d8:	48 89 10             	mov    QWORD PTR [rax],rdx
    20db:	48 8b 05 be 41 00 00 	mov    rax,QWORD PTR [rip+0x41be]        # 62a0 <rax>
    20e2:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    20e5:	48 8b 05 b4 41 00 00 	mov    rax,QWORD PTR [rip+0x41b4]        # 62a0 <rax>
    20ec:	48 83 c2 01          	add    rdx,0x1
    20f0:	48 89 10             	mov    QWORD PTR [rax],rdx
    20f3:	48 8b 05 4e 42 00 00 	mov    rax,QWORD PTR [rip+0x424e]        # 6348 <esi>
    20fa:	48 c7 00 08 00 00 00 	mov    QWORD PTR [rax],0x8
    2101:	48 8b 15 98 41 00 00 	mov    rdx,QWORD PTR [rip+0x4198]        # 62a0 <rax>
    2108:	48 8b 05 51 42 00 00 	mov    rax,QWORD PTR [rip+0x4251]        # 6360 <rdi>
    210f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2112:	48 89 10             	mov    QWORD PTR [rax],rdx
    2115:	48 8b 05 24 42 00 00 	mov    rax,QWORD PTR [rip+0x4224]        # 6340 <rsi>
    211c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    211f:	48 8b 05 3a 42 00 00 	mov    rax,QWORD PTR [rip+0x423a]        # 6360 <rdi>
    2126:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2129:	48 89 d6             	mov    rsi,rdx
    212c:	48 89 c7             	mov    rdi,rax
    212f:	e8 9c ef ff ff       	call   10d0 <calloc@plt>
    2134:	48 89 c2             	mov    rdx,rax
    2137:	48 8b 05 62 41 00 00 	mov    rax,QWORD PTR [rip+0x4162]        # 62a0 <rax>
    213e:	48 89 10             	mov    QWORD PTR [rax],rdx
    2141:	48 8b 05 58 41 00 00 	mov    rax,QWORD PTR [rip+0x4158]        # 62a0 <rax>
    2148:	48 8b 15 31 42 00 00 	mov    rdx,QWORD PTR [rip+0x4231]        # 6380 <rbp>
    214f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2152:	48 83 ea 10          	sub    rdx,0x10
    2156:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2159:	48 89 02             	mov    QWORD PTR [rdx],rax
    215c:	48 8b 05 1d 42 00 00 	mov    rax,QWORD PTR [rip+0x421d]        # 6380 <rbp>
    2163:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2166:	48 83 e8 10          	sub    rax,0x10
    216a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    216d:	48 85 c0             	test   rax,rax
    2170:	0f 85 cc 00 00 00    	jne    2242 <fib_tbl_dyn+0x1eb>
    2176:	48 8b 15 03 41 00 00 	mov    rdx,QWORD PTR [rip+0x4103]        # 6280 <stderr@GLIBC_2.2.5>
    217d:	48 8b 05 1c 41 00 00 	mov    rax,QWORD PTR [rip+0x411c]        # 62a0 <rax>
    2184:	48 89 10             	mov    QWORD PTR [rax],rdx
    2187:	48 8b 15 12 41 00 00 	mov    rdx,QWORD PTR [rip+0x4112]        # 62a0 <rax>
    218e:	48 8b 05 5b 41 00 00 	mov    rax,QWORD PTR [rip+0x415b]        # 62f0 <rcx>
    2195:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2198:	48 89 10             	mov    QWORD PTR [rax],rdx
    219b:	48 8b 05 7e 41 00 00 	mov    rax,QWORD PTR [rip+0x417e]        # 6320 <edx>
    21a2:	48 c7 00 17 00 00 00 	mov    QWORD PTR [rax],0x17
    21a9:	48 8b 05 98 41 00 00 	mov    rax,QWORD PTR [rip+0x4198]        # 6348 <esi>
    21b0:	48 c7 00 01 00 00 00 	mov    QWORD PTR [rax],0x1
    21b7:	48 8b 05 02 43 00 00 	mov    rax,QWORD PTR [rip+0x4302]        # 64c0 <s_rodata>
    21be:	48 8d 50 08          	lea    rdx,[rax+0x8]
    21c2:	48 8b 05 d7 40 00 00 	mov    rax,QWORD PTR [rip+0x40d7]        # 62a0 <rax>
    21c9:	48 89 10             	mov    QWORD PTR [rax],rdx
    21cc:	48 8b 15 cd 40 00 00 	mov    rdx,QWORD PTR [rip+0x40cd]        # 62a0 <rax>
    21d3:	48 8b 05 86 41 00 00 	mov    rax,QWORD PTR [rip+0x4186]        # 6360 <rdi>
    21da:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    21dd:	48 89 10             	mov    QWORD PTR [rax],rdx
    21e0:	48 8b 05 09 41 00 00 	mov    rax,QWORD PTR [rip+0x4109]        # 62f0 <rcx>
    21e7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    21ea:	48 89 c6             	mov    rsi,rax
    21ed:	48 8b 05 24 41 00 00 	mov    rax,QWORD PTR [rip+0x4124]        # 6318 <rdx>
    21f4:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    21f7:	48 8b 05 42 41 00 00 	mov    rax,QWORD PTR [rip+0x4142]        # 6340 <rsi>
    21fe:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2201:	48 8b 0d 58 41 00 00 	mov    rcx,QWORD PTR [rip+0x4158]        # 6360 <rdi>
    2208:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
    220b:	48 89 cf             	mov    rdi,rcx
    220e:	48 8b 1d 8b 40 00 00 	mov    rbx,QWORD PTR [rip+0x408b]        # 62a0 <rax>
    2215:	48 89 f1             	mov    rcx,rsi
    2218:	48 89 c6             	mov    rsi,rax
    221b:	e8 f0 ee ff ff       	call   1110 <fwrite@plt>
    2220:	48 89 03             	mov    QWORD PTR [rbx],rax
    2223:	48 8b 05 3e 41 00 00 	mov    rax,QWORD PTR [rip+0x413e]        # 6368 <edi>
    222a:	48 c7 00 01 00 00 00 	mov    QWORD PTR [rax],0x1
    2231:	48 8b 05 30 41 00 00 	mov    rax,QWORD PTR [rip+0x4130]        # 6368 <edi>
    2238:	48 8b 00             	mov    rax,QWORD PTR [rax]
    223b:	89 c7                	mov    edi,eax
    223d:	e8 be ee ff ff       	call   1100 <exit@plt>
    2242:	90                   	nop
    2243:	48 8b 05 36 41 00 00 	mov    rax,QWORD PTR [rip+0x4136]        # 6380 <rbp>
    224a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    224d:	48 83 e8 10          	sub    rax,0x10
    2251:	48 89 c2             	mov    rdx,rax
    2254:	48 8b 05 bd 40 00 00 	mov    rax,QWORD PTR [rip+0x40bd]        # 6318 <rdx>
    225b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    225e:	48 89 10             	mov    QWORD PTR [rax],rdx
    2261:	48 8b 05 18 41 00 00 	mov    rax,QWORD PTR [rip+0x4118]        # 6380 <rbp>
    2268:	48 8b 00             	mov    rax,QWORD PTR [rax]
    226b:	48 83 e8 18          	sub    rax,0x18
    226f:	48 89 c2             	mov    rdx,rax
    2272:	48 8b 05 27 40 00 00 	mov    rax,QWORD PTR [rip+0x4027]        # 62a0 <rax>
    2279:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    227c:	48 89 10             	mov    QWORD PTR [rax],rdx
    227f:	48 8b 15 92 40 00 00 	mov    rdx,QWORD PTR [rip+0x4092]        # 6318 <rdx>
    2286:	48 8b 05 b3 40 00 00 	mov    rax,QWORD PTR [rip+0x40b3]        # 6340 <rsi>
    228d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2290:	48 89 10             	mov    QWORD PTR [rax],rdx
    2293:	48 8b 15 06 40 00 00 	mov    rdx,QWORD PTR [rip+0x4006]        # 62a0 <rax>
    229a:	48 8b 05 bf 40 00 00 	mov    rax,QWORD PTR [rip+0x40bf]        # 6360 <rdi>
    22a1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    22a4:	48 89 10             	mov    QWORD PTR [rax],rdx
    22a7:	e8 6d f9 ff ff       	call   1c19 <fib_tbl_dyn_>
    22ac:	48 8b 05 ed 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fed]        # 62a0 <rax>
    22b3:	48 8b 15 c6 40 00 00 	mov    rdx,QWORD PTR [rip+0x40c6]        # 6380 <rbp>
    22ba:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    22bd:	48 83 ea 08          	sub    rdx,0x8
    22c1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    22c4:	48 89 02             	mov    QWORD PTR [rdx],rax
    22c7:	48 8b 05 b2 40 00 00 	mov    rax,QWORD PTR [rip+0x40b2]        # 6380 <rbp>
    22ce:	48 8b 00             	mov    rax,QWORD PTR [rax]
    22d1:	48 83 e8 10          	sub    rax,0x10
    22d5:	48 89 c2             	mov    rdx,rax
    22d8:	48 8b 05 c1 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fc1]        # 62a0 <rax>
    22df:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    22e2:	48 89 10             	mov    QWORD PTR [rax],rdx
    22e5:	48 8b 15 b4 3f 00 00 	mov    rdx,QWORD PTR [rip+0x3fb4]        # 62a0 <rax>
    22ec:	48 8b 05 6d 40 00 00 	mov    rax,QWORD PTR [rip+0x406d]        # 6360 <rdi>
    22f3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    22f6:	48 89 10             	mov    QWORD PTR [rax],rdx
    22f9:	48 8b 05 60 40 00 00 	mov    rax,QWORD PTR [rip+0x4060]        # 6360 <rdi>
    2300:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2303:	48 89 c7             	mov    rdi,rax
    2306:	e8 a5 ed ff ff       	call   10b0 <free@plt>
    230b:	48 8b 05 6e 40 00 00 	mov    rax,QWORD PTR [rip+0x406e]        # 6380 <rbp>
    2312:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2315:	48 83 e8 08          	sub    rax,0x8
    2319:	48 89 c2             	mov    rdx,rax
    231c:	48 8b 05 7d 3f 00 00 	mov    rax,QWORD PTR [rip+0x3f7d]        # 62a0 <rax>
    2323:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2326:	48 89 10             	mov    QWORD PTR [rax],rdx
    2329:	48 8b 15 50 40 00 00 	mov    rdx,QWORD PTR [rip+0x4050]        # 6380 <rbp>
    2330:	48 8b 05 69 40 00 00 	mov    rax,QWORD PTR [rip+0x4069]        # 63a0 <rsp>
    2337:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    233a:	48 89 10             	mov    QWORD PTR [rax],rdx
    233d:	48 8b 1d 3c 40 00 00 	mov    rbx,QWORD PTR [rip+0x403c]        # 6380 <rbp>
    2344:	e8 f1 f2 ff ff       	call   163a <pop_u64>
    2349:	48 89 03             	mov    QWORD PTR [rbx],rax
    234c:	90                   	nop
    234d:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    2351:	c9                   	leave  
    2352:	c3                   	ret    

0000000000002353 <fib_loop>:
    2353:	f3 0f 1e fa          	endbr64 
    2357:	55                   	push   rbp
    2358:	48 89 e5             	mov    rbp,rsp
    235b:	53                   	push   rbx
    235c:	48 8b 05 1d 40 00 00 	mov    rax,QWORD PTR [rip+0x401d]        # 6380 <rbp>
    2363:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2366:	48 89 c7             	mov    rdi,rax
    2369:	e8 95 f2 ff ff       	call   1603 <push_u64>
    236e:	48 8b 15 2b 40 00 00 	mov    rdx,QWORD PTR [rip+0x402b]        # 63a0 <rsp>
    2375:	48 8b 05 04 40 00 00 	mov    rax,QWORD PTR [rip+0x4004]        # 6380 <rbp>
    237c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    237f:	48 89 10             	mov    QWORD PTR [rax],rdx
    2382:	48 8b 05 d7 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fd7]        # 6360 <rdi>
    2389:	48 8b 15 f0 3f 00 00 	mov    rdx,QWORD PTR [rip+0x3ff0]        # 6380 <rbp>
    2390:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2393:	48 83 ea 28          	sub    rdx,0x28
    2397:	48 8b 00             	mov    rax,QWORD PTR [rax]
    239a:	48 89 02             	mov    QWORD PTR [rdx],rax
    239d:	48 8b 05 dc 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fdc]        # 6380 <rbp>
    23a4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    23a7:	48 83 e8 28          	sub    rax,0x28
    23ab:	48 8b 00             	mov    rax,QWORD PTR [rax]
    23ae:	48 83 f8 01          	cmp    rax,0x1
    23b2:	77 23                	ja     23d7 <fib_loop+0x84>
    23b4:	48 8b 05 c5 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fc5]        # 6380 <rbp>
    23bb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    23be:	48 83 e8 28          	sub    rax,0x28
    23c2:	48 89 c2             	mov    rdx,rax
    23c5:	48 8b 05 d4 3e 00 00 	mov    rax,QWORD PTR [rip+0x3ed4]        # 62a0 <rax>
    23cc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    23cf:	48 89 10             	mov    QWORD PTR [rax],rdx
    23d2:	e9 31 02 00 00       	jmp    2608 <fib_loop+0x2b5>
    23d7:	90                   	nop
    23d8:	48 8b 05 a1 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fa1]        # 6380 <rbp>
    23df:	48 8b 00             	mov    rax,QWORD PTR [rax]
    23e2:	48 83 e8 08          	sub    rax,0x8
    23e6:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    23ed:	48 8b 05 8c 3f 00 00 	mov    rax,QWORD PTR [rip+0x3f8c]        # 6380 <rbp>
    23f4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    23f7:	48 83 e8 20          	sub    rax,0x20
    23fb:	48 c7 00 01 00 00 00 	mov    QWORD PTR [rax],0x1
    2402:	48 8b 05 77 3f 00 00 	mov    rax,QWORD PTR [rip+0x3f77]        # 6380 <rbp>
    2409:	48 8b 00             	mov    rax,QWORD PTR [rax]
    240c:	48 83 e8 08          	sub    rax,0x8
    2410:	48 89 c2             	mov    rdx,rax
    2413:	48 8b 05 fe 3e 00 00 	mov    rax,QWORD PTR [rip+0x3efe]        # 6318 <rdx>
    241a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    241d:	48 89 10             	mov    QWORD PTR [rax],rdx
    2420:	48 8b 05 59 3f 00 00 	mov    rax,QWORD PTR [rip+0x3f59]        # 6380 <rbp>
    2427:	48 8b 00             	mov    rax,QWORD PTR [rax]
    242a:	48 83 e8 20          	sub    rax,0x20
    242e:	48 89 c2             	mov    rdx,rax
    2431:	48 8b 05 68 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e68]        # 62a0 <rax>
    2438:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    243b:	48 89 10             	mov    QWORD PTR [rax],rdx
    243e:	48 8b 05 5b 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e5b]        # 62a0 <rax>
    2445:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    2448:	48 8b 05 c9 3e 00 00 	mov    rax,QWORD PTR [rip+0x3ec9]        # 6318 <rdx>
    244f:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2452:	48 8b 05 47 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e47]        # 62a0 <rax>
    2459:	48 01 ca             	add    rdx,rcx
    245c:	48 89 10             	mov    QWORD PTR [rax],rdx
    245f:	48 8b 05 3a 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e3a]        # 62a0 <rax>
    2466:	48 8b 15 13 3f 00 00 	mov    rdx,QWORD PTR [rip+0x3f13]        # 6380 <rbp>
    246d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2470:	48 83 ea 18          	sub    rdx,0x18
    2474:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2477:	48 89 02             	mov    QWORD PTR [rdx],rax
    247a:	48 8b 05 ff 3e 00 00 	mov    rax,QWORD PTR [rip+0x3eff]        # 6380 <rbp>
    2481:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2484:	48 83 e8 10          	sub    rax,0x10
    2488:	48 c7 00 02 00 00 00 	mov    QWORD PTR [rax],0x2
    248f:	e9 14 01 00 00       	jmp    25a8 <fib_loop+0x255>
    2494:	90                   	nop
    2495:	48 8b 05 e4 3e 00 00 	mov    rax,QWORD PTR [rip+0x3ee4]        # 6380 <rbp>
    249c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    249f:	48 83 e8 20          	sub    rax,0x20
    24a3:	48 89 c2             	mov    rdx,rax
    24a6:	48 8b 05 f3 3d 00 00 	mov    rax,QWORD PTR [rip+0x3df3]        # 62a0 <rax>
    24ad:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    24b0:	48 89 10             	mov    QWORD PTR [rax],rdx
    24b3:	48 8b 05 e6 3d 00 00 	mov    rax,QWORD PTR [rip+0x3de6]        # 62a0 <rax>
    24ba:	48 8b 15 bf 3e 00 00 	mov    rdx,QWORD PTR [rip+0x3ebf]        # 6380 <rbp>
    24c1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    24c4:	48 83 ea 08          	sub    rdx,0x8
    24c8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    24cb:	48 89 02             	mov    QWORD PTR [rdx],rax
    24ce:	48 8b 05 ab 3e 00 00 	mov    rax,QWORD PTR [rip+0x3eab]        # 6380 <rbp>
    24d5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    24d8:	48 83 e8 18          	sub    rax,0x18
    24dc:	48 89 c2             	mov    rdx,rax
    24df:	48 8b 05 ba 3d 00 00 	mov    rax,QWORD PTR [rip+0x3dba]        # 62a0 <rax>
    24e6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    24e9:	48 89 10             	mov    QWORD PTR [rax],rdx
    24ec:	48 8b 05 ad 3d 00 00 	mov    rax,QWORD PTR [rip+0x3dad]        # 62a0 <rax>
    24f3:	48 8b 15 86 3e 00 00 	mov    rdx,QWORD PTR [rip+0x3e86]        # 6380 <rbp>
    24fa:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    24fd:	48 83 ea 20          	sub    rdx,0x20
    2501:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2504:	48 89 02             	mov    QWORD PTR [rdx],rax
    2507:	48 8b 05 72 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e72]        # 6380 <rbp>
    250e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2511:	48 83 e8 08          	sub    rax,0x8
    2515:	48 89 c2             	mov    rdx,rax
    2518:	48 8b 05 f9 3d 00 00 	mov    rax,QWORD PTR [rip+0x3df9]        # 6318 <rdx>
    251f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2522:	48 89 10             	mov    QWORD PTR [rax],rdx
    2525:	48 8b 05 54 3e 00 00 	mov    rax,QWORD PTR [rip+0x3e54]        # 6380 <rbp>
    252c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    252f:	48 83 e8 20          	sub    rax,0x20
    2533:	48 89 c2             	mov    rdx,rax
    2536:	48 8b 05 63 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d63]        # 62a0 <rax>
    253d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2540:	48 89 10             	mov    QWORD PTR [rax],rdx
    2543:	48 8b 05 56 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d56]        # 62a0 <rax>
    254a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    254d:	48 8b 05 c4 3d 00 00 	mov    rax,QWORD PTR [rip+0x3dc4]        # 6318 <rdx>
    2554:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2557:	48 8b 05 42 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d42]        # 62a0 <rax>
    255e:	48 01 ca             	add    rdx,rcx
    2561:	48 89 10             	mov    QWORD PTR [rax],rdx
    2564:	48 8b 05 35 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d35]        # 62a0 <rax>
    256b:	48 8b 15 0e 3e 00 00 	mov    rdx,QWORD PTR [rip+0x3e0e]        # 6380 <rbp>
    2572:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2575:	48 83 ea 18          	sub    rdx,0x18
    2579:	48 8b 00             	mov    rax,QWORD PTR [rax]
    257c:	48 89 02             	mov    QWORD PTR [rdx],rax
    257f:	48 8b 05 fa 3d 00 00 	mov    rax,QWORD PTR [rip+0x3dfa]        # 6380 <rbp>
    2586:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2589:	48 83 e8 10          	sub    rax,0x10
    258d:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2590:	48 8b 05 e9 3d 00 00 	mov    rax,QWORD PTR [rip+0x3de9]        # 6380 <rbp>
    2597:	48 8b 00             	mov    rax,QWORD PTR [rax]
    259a:	48 83 e8 10          	sub    rax,0x10
    259e:	48 89 c1             	mov    rcx,rax
    25a1:	48 8d 42 01          	lea    rax,[rdx+0x1]
    25a5:	48 89 01             	mov    QWORD PTR [rcx],rax
    25a8:	48 8b 05 d1 3d 00 00 	mov    rax,QWORD PTR [rip+0x3dd1]        # 6380 <rbp>
    25af:	48 8b 00             	mov    rax,QWORD PTR [rax]
    25b2:	48 83 e8 10          	sub    rax,0x10
    25b6:	48 89 c2             	mov    rdx,rax
    25b9:	48 8b 05 e0 3c 00 00 	mov    rax,QWORD PTR [rip+0x3ce0]        # 62a0 <rax>
    25c0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    25c3:	48 89 10             	mov    QWORD PTR [rax],rdx
    25c6:	48 8b 05 d3 3c 00 00 	mov    rax,QWORD PTR [rip+0x3cd3]        # 62a0 <rax>
    25cd:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    25d0:	48 8b 05 a9 3d 00 00 	mov    rax,QWORD PTR [rip+0x3da9]        # 6380 <rbp>
    25d7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    25da:	48 83 e8 28          	sub    rax,0x28
    25de:	48 8b 00             	mov    rax,QWORD PTR [rax]
    25e1:	48 39 c2             	cmp    rdx,rax
    25e4:	0f 82 aa fe ff ff    	jb     2494 <fib_loop+0x141>
    25ea:	48 8b 05 8f 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d8f]        # 6380 <rbp>
    25f1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    25f4:	48 83 e8 18          	sub    rax,0x18
    25f8:	48 89 c2             	mov    rdx,rax
    25fb:	48 8b 05 9e 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c9e]        # 62a0 <rax>
    2602:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2605:	48 89 10             	mov    QWORD PTR [rax],rdx
    2608:	48 8b 1d 71 3d 00 00 	mov    rbx,QWORD PTR [rip+0x3d71]        # 6380 <rbp>
    260f:	e8 26 f0 ff ff       	call   163a <pop_u64>
    2614:	48 89 03             	mov    QWORD PTR [rbx],rax
    2617:	90                   	nop
    2618:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    261c:	c9                   	leave  
    261d:	c3                   	ret    

000000000000261e <fib_switch>:
    261e:	f3 0f 1e fa          	endbr64 
    2622:	55                   	push   rbp
    2623:	48 89 e5             	mov    rbp,rsp
    2626:	53                   	push   rbx
    2627:	48 83 ec 10          	sub    rsp,0x10
    262b:	48 8b 05 4e 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d4e]        # 6380 <rbp>
    2632:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2635:	48 89 c7             	mov    rdi,rax
    2638:	e8 c6 ef ff ff       	call   1603 <push_u64>
    263d:	48 8b 15 5c 3d 00 00 	mov    rdx,QWORD PTR [rip+0x3d5c]        # 63a0 <rsp>
    2644:	48 8b 05 35 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d35]        # 6380 <rbp>
    264b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    264e:	48 89 10             	mov    QWORD PTR [rax],rdx
    2651:	48 8b 05 08 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d08]        # 6360 <rdi>
    2658:	48 8b 15 21 3d 00 00 	mov    rdx,QWORD PTR [rip+0x3d21]        # 6380 <rbp>
    265f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2662:	48 83 ea 18          	sub    rdx,0x18
    2666:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2669:	48 89 02             	mov    QWORD PTR [rdx],rax
    266c:	48 8b 05 0d 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d0d]        # 6380 <rbp>
    2673:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2676:	48 83 e8 08          	sub    rax,0x8
    267a:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    2681:	48 8b 05 f8 3c 00 00 	mov    rax,QWORD PTR [rip+0x3cf8]        # 6380 <rbp>
    2688:	48 8b 00             	mov    rax,QWORD PTR [rax]
    268b:	48 83 e8 18          	sub    rax,0x18
    268f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2692:	48 83 f8 5d          	cmp    rax,0x5d
    2696:	0f 87 a1 0f 00 00    	ja     363d <fib_switch+0x101f>
    269c:	48 8b 05 dd 3c 00 00 	mov    rax,QWORD PTR [rip+0x3cdd]        # 6380 <rbp>
    26a3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    26a6:	48 83 e8 18          	sub    rax,0x18
    26aa:	48 8b 00             	mov    rax,QWORD PTR [rax]
    26ad:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    26b1:	48 8b 05 c8 3c 00 00 	mov    rax,QWORD PTR [rip+0x3cc8]        # 6380 <rbp>
    26b8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    26bb:	48 83 e8 18          	sub    rax,0x18
    26bf:	48 89 c2             	mov    rdx,rax
    26c2:	48 8b 05 d7 3b 00 00 	mov    rax,QWORD PTR [rip+0x3bd7]        # 62a0 <rax>
    26c9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    26cc:	48 89 10             	mov    QWORD PTR [rax],rdx
    26cf:	48 8b 05 ca 3b 00 00 	mov    rax,QWORD PTR [rip+0x3bca]        # 62a0 <rax>
    26d6:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    26d9:	48 8b 05 38 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c38]        # 6318 <rdx>
    26e0:	48 c1 e2 02          	shl    rdx,0x2
    26e4:	48 89 10             	mov    QWORD PTR [rax],rdx
    26e7:	48 8b 05 d2 3d 00 00 	mov    rax,QWORD PTR [rip+0x3dd2]        # 64c0 <s_rodata>
    26ee:	48 8d 50 20          	lea    rdx,[rax+0x20]
    26f2:	48 8b 05 a7 3b 00 00 	mov    rax,QWORD PTR [rip+0x3ba7]        # 62a0 <rax>
    26f9:	48 89 10             	mov    QWORD PTR [rax],rdx
    26fc:	48 8b 05 15 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c15]        # 6318 <rdx>
    2703:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    2706:	48 8b 05 93 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b93]        # 62a0 <rax>
    270d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2710:	48 01 d0             	add    rax,rdx
    2713:	8b 10                	mov    edx,DWORD PTR [rax]
    2715:	48 8b 05 8c 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b8c]        # 62a8 <eax>
    271c:	89 d2                	mov    edx,edx
    271e:	48 89 10             	mov    QWORD PTR [rax],rdx
    2721:	48 8b 15 80 3b 00 00 	mov    rdx,QWORD PTR [rip+0x3b80]        # 62a8 <eax>
    2728:	48 8b 05 71 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b71]        # 62a0 <rax>
    272f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2732:	48 89 10             	mov    QWORD PTR [rax],rdx
    2735:	48 8b 05 84 3d 00 00 	mov    rax,QWORD PTR [rip+0x3d84]        # 64c0 <s_rodata>
    273c:	48 8d 50 20          	lea    rdx,[rax+0x20]
    2740:	48 8b 05 d1 3b 00 00 	mov    rax,QWORD PTR [rip+0x3bd1]        # 6318 <rdx>
    2747:	48 89 10             	mov    QWORD PTR [rax],rdx
    274a:	48 8b 05 4f 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b4f]        # 62a0 <rax>
    2751:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    2754:	48 8b 05 bd 3b 00 00 	mov    rax,QWORD PTR [rip+0x3bbd]        # 6318 <rdx>
    275b:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    275e:	48 8b 05 3b 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b3b]        # 62a0 <rax>
    2765:	48 01 ca             	add    rdx,rcx
    2768:	48 89 10             	mov    QWORD PTR [rax],rdx
    276b:	48 83 7d f0 5d       	cmp    QWORD PTR [rbp-0x10],0x5d
    2770:	0f 87 ca 0e 00 00    	ja     3640 <fib_switch+0x1022>
    2776:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    277a:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    2781:	00 
    2782:	48 8d 05 7b 18 00 00 	lea    rax,[rip+0x187b]        # 4004 <_IO_stdin_used+0x4>
    2789:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    278c:	48 98                	cdqe   
    278e:	48 8d 15 6f 18 00 00 	lea    rdx,[rip+0x186f]        # 4004 <_IO_stdin_used+0x4>
    2795:	48 01 d0             	add    rax,rdx
    2798:	3e ff e0             	notrack jmp rax
    279b:	90                   	nop
    279c:	48 8b 05 dd 3b 00 00 	mov    rax,QWORD PTR [rip+0x3bdd]        # 6380 <rbp>
    27a3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    27a6:	48 83 e8 08          	sub    rax,0x8
    27aa:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    27b1:	e9 8b 0e 00 00       	jmp    3641 <fib_switch+0x1023>
    27b6:	90                   	nop
    27b7:	48 8b 05 c2 3b 00 00 	mov    rax,QWORD PTR [rip+0x3bc2]        # 6380 <rbp>
    27be:	48 8b 00             	mov    rax,QWORD PTR [rax]
    27c1:	48 83 e8 08          	sub    rax,0x8
    27c5:	48 c7 00 01 00 00 00 	mov    QWORD PTR [rax],0x1
    27cc:	e9 70 0e 00 00       	jmp    3641 <fib_switch+0x1023>
    27d1:	90                   	nop
    27d2:	48 8b 05 a7 3b 00 00 	mov    rax,QWORD PTR [rip+0x3ba7]        # 6380 <rbp>
    27d9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    27dc:	48 83 e8 08          	sub    rax,0x8
    27e0:	48 c7 00 01 00 00 00 	mov    QWORD PTR [rax],0x1
    27e7:	e9 55 0e 00 00       	jmp    3641 <fib_switch+0x1023>
    27ec:	90                   	nop
    27ed:	48 8b 05 8c 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b8c]        # 6380 <rbp>
    27f4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    27f7:	48 83 e8 08          	sub    rax,0x8
    27fb:	48 c7 00 02 00 00 00 	mov    QWORD PTR [rax],0x2
    2802:	e9 3a 0e 00 00       	jmp    3641 <fib_switch+0x1023>
    2807:	90                   	nop
    2808:	48 8b 05 71 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b71]        # 6380 <rbp>
    280f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2812:	48 83 e8 08          	sub    rax,0x8
    2816:	48 c7 00 03 00 00 00 	mov    QWORD PTR [rax],0x3
    281d:	e9 1f 0e 00 00       	jmp    3641 <fib_switch+0x1023>
    2822:	90                   	nop
    2823:	48 8b 05 56 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b56]        # 6380 <rbp>
    282a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    282d:	48 83 e8 08          	sub    rax,0x8
    2831:	48 c7 00 05 00 00 00 	mov    QWORD PTR [rax],0x5
    2838:	e9 04 0e 00 00       	jmp    3641 <fib_switch+0x1023>
    283d:	90                   	nop
    283e:	48 8b 05 3b 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b3b]        # 6380 <rbp>
    2845:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2848:	48 83 e8 08          	sub    rax,0x8
    284c:	48 c7 00 08 00 00 00 	mov    QWORD PTR [rax],0x8
    2853:	e9 e9 0d 00 00       	jmp    3641 <fib_switch+0x1023>
    2858:	90                   	nop
    2859:	48 8b 05 20 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b20]        # 6380 <rbp>
    2860:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2863:	48 83 e8 08          	sub    rax,0x8
    2867:	48 c7 00 0d 00 00 00 	mov    QWORD PTR [rax],0xd
    286e:	e9 ce 0d 00 00       	jmp    3641 <fib_switch+0x1023>
    2873:	90                   	nop
    2874:	48 8b 05 05 3b 00 00 	mov    rax,QWORD PTR [rip+0x3b05]        # 6380 <rbp>
    287b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    287e:	48 83 e8 08          	sub    rax,0x8
    2882:	48 c7 00 15 00 00 00 	mov    QWORD PTR [rax],0x15
    2889:	e9 b3 0d 00 00       	jmp    3641 <fib_switch+0x1023>
    288e:	90                   	nop
    288f:	48 8b 05 ea 3a 00 00 	mov    rax,QWORD PTR [rip+0x3aea]        # 6380 <rbp>
    2896:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2899:	48 83 e8 08          	sub    rax,0x8
    289d:	48 c7 00 22 00 00 00 	mov    QWORD PTR [rax],0x22
    28a4:	e9 98 0d 00 00       	jmp    3641 <fib_switch+0x1023>
    28a9:	90                   	nop
    28aa:	48 8b 05 cf 3a 00 00 	mov    rax,QWORD PTR [rip+0x3acf]        # 6380 <rbp>
    28b1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    28b4:	48 83 e8 08          	sub    rax,0x8
    28b8:	48 c7 00 37 00 00 00 	mov    QWORD PTR [rax],0x37
    28bf:	e9 7d 0d 00 00       	jmp    3641 <fib_switch+0x1023>
    28c4:	90                   	nop
    28c5:	48 8b 05 b4 3a 00 00 	mov    rax,QWORD PTR [rip+0x3ab4]        # 6380 <rbp>
    28cc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    28cf:	48 83 e8 08          	sub    rax,0x8
    28d3:	48 c7 00 59 00 00 00 	mov    QWORD PTR [rax],0x59
    28da:	e9 62 0d 00 00       	jmp    3641 <fib_switch+0x1023>
    28df:	90                   	nop
    28e0:	48 8b 05 99 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a99]        # 6380 <rbp>
    28e7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    28ea:	48 83 e8 08          	sub    rax,0x8
    28ee:	48 c7 00 90 00 00 00 	mov    QWORD PTR [rax],0x90
    28f5:	e9 47 0d 00 00       	jmp    3641 <fib_switch+0x1023>
    28fa:	90                   	nop
    28fb:	48 8b 05 7e 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a7e]        # 6380 <rbp>
    2902:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2905:	48 83 e8 08          	sub    rax,0x8
    2909:	48 c7 00 e9 00 00 00 	mov    QWORD PTR [rax],0xe9
    2910:	e9 2c 0d 00 00       	jmp    3641 <fib_switch+0x1023>
    2915:	90                   	nop
    2916:	48 8b 05 63 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a63]        # 6380 <rbp>
    291d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2920:	48 83 e8 08          	sub    rax,0x8
    2924:	48 c7 00 79 01 00 00 	mov    QWORD PTR [rax],0x179
    292b:	e9 11 0d 00 00       	jmp    3641 <fib_switch+0x1023>
    2930:	90                   	nop
    2931:	48 8b 05 48 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a48]        # 6380 <rbp>
    2938:	48 8b 00             	mov    rax,QWORD PTR [rax]
    293b:	48 83 e8 08          	sub    rax,0x8
    293f:	48 c7 00 62 02 00 00 	mov    QWORD PTR [rax],0x262
    2946:	e9 f6 0c 00 00       	jmp    3641 <fib_switch+0x1023>
    294b:	90                   	nop
    294c:	48 8b 05 2d 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a2d]        # 6380 <rbp>
    2953:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2956:	48 83 e8 08          	sub    rax,0x8
    295a:	48 c7 00 db 03 00 00 	mov    QWORD PTR [rax],0x3db
    2961:	e9 db 0c 00 00       	jmp    3641 <fib_switch+0x1023>
    2966:	90                   	nop
    2967:	48 8b 05 12 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a12]        # 6380 <rbp>
    296e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2971:	48 83 e8 08          	sub    rax,0x8
    2975:	48 c7 00 3d 06 00 00 	mov    QWORD PTR [rax],0x63d
    297c:	e9 c0 0c 00 00       	jmp    3641 <fib_switch+0x1023>
    2981:	90                   	nop
    2982:	48 8b 05 f7 39 00 00 	mov    rax,QWORD PTR [rip+0x39f7]        # 6380 <rbp>
    2989:	48 8b 00             	mov    rax,QWORD PTR [rax]
    298c:	48 83 e8 08          	sub    rax,0x8
    2990:	48 c7 00 18 0a 00 00 	mov    QWORD PTR [rax],0xa18
    2997:	e9 a5 0c 00 00       	jmp    3641 <fib_switch+0x1023>
    299c:	90                   	nop
    299d:	48 8b 05 dc 39 00 00 	mov    rax,QWORD PTR [rip+0x39dc]        # 6380 <rbp>
    29a4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    29a7:	48 83 e8 08          	sub    rax,0x8
    29ab:	48 c7 00 55 10 00 00 	mov    QWORD PTR [rax],0x1055
    29b2:	e9 8a 0c 00 00       	jmp    3641 <fib_switch+0x1023>
    29b7:	90                   	nop
    29b8:	48 8b 05 c1 39 00 00 	mov    rax,QWORD PTR [rip+0x39c1]        # 6380 <rbp>
    29bf:	48 8b 00             	mov    rax,QWORD PTR [rax]
    29c2:	48 83 e8 08          	sub    rax,0x8
    29c6:	48 c7 00 6d 1a 00 00 	mov    QWORD PTR [rax],0x1a6d
    29cd:	e9 6f 0c 00 00       	jmp    3641 <fib_switch+0x1023>
    29d2:	90                   	nop
    29d3:	48 8b 05 a6 39 00 00 	mov    rax,QWORD PTR [rip+0x39a6]        # 6380 <rbp>
    29da:	48 8b 00             	mov    rax,QWORD PTR [rax]
    29dd:	48 83 e8 08          	sub    rax,0x8
    29e1:	48 c7 00 c2 2a 00 00 	mov    QWORD PTR [rax],0x2ac2
    29e8:	e9 54 0c 00 00       	jmp    3641 <fib_switch+0x1023>
    29ed:	90                   	nop
    29ee:	48 8b 05 8b 39 00 00 	mov    rax,QWORD PTR [rip+0x398b]        # 6380 <rbp>
    29f5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    29f8:	48 83 e8 08          	sub    rax,0x8
    29fc:	48 c7 00 2f 45 00 00 	mov    QWORD PTR [rax],0x452f
    2a03:	e9 39 0c 00 00       	jmp    3641 <fib_switch+0x1023>
    2a08:	90                   	nop
    2a09:	48 8b 05 70 39 00 00 	mov    rax,QWORD PTR [rip+0x3970]        # 6380 <rbp>
    2a10:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2a13:	48 83 e8 08          	sub    rax,0x8
    2a17:	48 c7 00 f1 6f 00 00 	mov    QWORD PTR [rax],0x6ff1
    2a1e:	e9 1e 0c 00 00       	jmp    3641 <fib_switch+0x1023>
    2a23:	90                   	nop
    2a24:	48 8b 05 55 39 00 00 	mov    rax,QWORD PTR [rip+0x3955]        # 6380 <rbp>
    2a2b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2a2e:	48 83 e8 08          	sub    rax,0x8
    2a32:	48 c7 00 20 b5 00 00 	mov    QWORD PTR [rax],0xb520
    2a39:	e9 03 0c 00 00       	jmp    3641 <fib_switch+0x1023>
    2a3e:	90                   	nop
    2a3f:	48 8b 05 3a 39 00 00 	mov    rax,QWORD PTR [rip+0x393a]        # 6380 <rbp>
    2a46:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2a49:	48 83 e8 08          	sub    rax,0x8
    2a4d:	48 c7 00 11 25 01 00 	mov    QWORD PTR [rax],0x12511
    2a54:	e9 e8 0b 00 00       	jmp    3641 <fib_switch+0x1023>
    2a59:	90                   	nop
    2a5a:	48 8b 05 1f 39 00 00 	mov    rax,QWORD PTR [rip+0x391f]        # 6380 <rbp>
    2a61:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2a64:	48 83 e8 08          	sub    rax,0x8
    2a68:	48 c7 00 31 da 01 00 	mov    QWORD PTR [rax],0x1da31
    2a6f:	e9 cd 0b 00 00       	jmp    3641 <fib_switch+0x1023>
    2a74:	90                   	nop
    2a75:	48 8b 05 04 39 00 00 	mov    rax,QWORD PTR [rip+0x3904]        # 6380 <rbp>
    2a7c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2a7f:	48 83 e8 08          	sub    rax,0x8
    2a83:	48 c7 00 42 ff 02 00 	mov    QWORD PTR [rax],0x2ff42
    2a8a:	e9 b2 0b 00 00       	jmp    3641 <fib_switch+0x1023>
    2a8f:	90                   	nop
    2a90:	48 8b 05 e9 38 00 00 	mov    rax,QWORD PTR [rip+0x38e9]        # 6380 <rbp>
    2a97:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2a9a:	48 83 e8 08          	sub    rax,0x8
    2a9e:	48 c7 00 73 d9 04 00 	mov    QWORD PTR [rax],0x4d973
    2aa5:	e9 97 0b 00 00       	jmp    3641 <fib_switch+0x1023>
    2aaa:	90                   	nop
    2aab:	48 8b 05 ce 38 00 00 	mov    rax,QWORD PTR [rip+0x38ce]        # 6380 <rbp>
    2ab2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2ab5:	48 83 e8 08          	sub    rax,0x8
    2ab9:	48 c7 00 b5 d8 07 00 	mov    QWORD PTR [rax],0x7d8b5
    2ac0:	e9 7c 0b 00 00       	jmp    3641 <fib_switch+0x1023>
    2ac5:	90                   	nop
    2ac6:	48 8b 05 b3 38 00 00 	mov    rax,QWORD PTR [rip+0x38b3]        # 6380 <rbp>
    2acd:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2ad0:	48 83 e8 08          	sub    rax,0x8
    2ad4:	48 c7 00 28 b2 0c 00 	mov    QWORD PTR [rax],0xcb228
    2adb:	e9 61 0b 00 00       	jmp    3641 <fib_switch+0x1023>
    2ae0:	90                   	nop
    2ae1:	48 8b 05 98 38 00 00 	mov    rax,QWORD PTR [rip+0x3898]        # 6380 <rbp>
    2ae8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2aeb:	48 83 e8 08          	sub    rax,0x8
    2aef:	48 c7 00 dd 8a 14 00 	mov    QWORD PTR [rax],0x148add
    2af6:	e9 46 0b 00 00       	jmp    3641 <fib_switch+0x1023>
    2afb:	90                   	nop
    2afc:	48 8b 05 7d 38 00 00 	mov    rax,QWORD PTR [rip+0x387d]        # 6380 <rbp>
    2b03:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2b06:	48 83 e8 08          	sub    rax,0x8
    2b0a:	48 c7 00 05 3d 21 00 	mov    QWORD PTR [rax],0x213d05
    2b11:	e9 2b 0b 00 00       	jmp    3641 <fib_switch+0x1023>
    2b16:	90                   	nop
    2b17:	48 8b 05 62 38 00 00 	mov    rax,QWORD PTR [rip+0x3862]        # 6380 <rbp>
    2b1e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2b21:	48 83 e8 08          	sub    rax,0x8
    2b25:	48 c7 00 e2 c7 35 00 	mov    QWORD PTR [rax],0x35c7e2
    2b2c:	e9 10 0b 00 00       	jmp    3641 <fib_switch+0x1023>
    2b31:	90                   	nop
    2b32:	48 8b 05 47 38 00 00 	mov    rax,QWORD PTR [rip+0x3847]        # 6380 <rbp>
    2b39:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2b3c:	48 83 e8 08          	sub    rax,0x8
    2b40:	48 c7 00 e7 04 57 00 	mov    QWORD PTR [rax],0x5704e7
    2b47:	e9 f5 0a 00 00       	jmp    3641 <fib_switch+0x1023>
    2b4c:	90                   	nop
    2b4d:	48 8b 05 2c 38 00 00 	mov    rax,QWORD PTR [rip+0x382c]        # 6380 <rbp>
    2b54:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2b57:	48 83 e8 08          	sub    rax,0x8
    2b5b:	48 c7 00 c9 cc 8c 00 	mov    QWORD PTR [rax],0x8cccc9
    2b62:	e9 da 0a 00 00       	jmp    3641 <fib_switch+0x1023>
    2b67:	90                   	nop
    2b68:	48 8b 05 11 38 00 00 	mov    rax,QWORD PTR [rip+0x3811]        # 6380 <rbp>
    2b6f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2b72:	48 83 e8 08          	sub    rax,0x8
    2b76:	48 c7 00 b0 d1 e3 00 	mov    QWORD PTR [rax],0xe3d1b0
    2b7d:	e9 bf 0a 00 00       	jmp    3641 <fib_switch+0x1023>
    2b82:	90                   	nop
    2b83:	48 8b 05 f6 37 00 00 	mov    rax,QWORD PTR [rip+0x37f6]        # 6380 <rbp>
    2b8a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2b8d:	48 83 e8 08          	sub    rax,0x8
    2b91:	48 c7 00 79 9e 70 01 	mov    QWORD PTR [rax],0x1709e79
    2b98:	e9 a4 0a 00 00       	jmp    3641 <fib_switch+0x1023>
    2b9d:	90                   	nop
    2b9e:	48 8b 05 db 37 00 00 	mov    rax,QWORD PTR [rip+0x37db]        # 6380 <rbp>
    2ba5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2ba8:	48 83 e8 08          	sub    rax,0x8
    2bac:	48 c7 00 29 70 54 02 	mov    QWORD PTR [rax],0x2547029
    2bb3:	e9 89 0a 00 00       	jmp    3641 <fib_switch+0x1023>
    2bb8:	90                   	nop
    2bb9:	48 8b 05 c0 37 00 00 	mov    rax,QWORD PTR [rip+0x37c0]        # 6380 <rbp>
    2bc0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2bc3:	48 83 e8 08          	sub    rax,0x8
    2bc7:	48 c7 00 a2 0e c5 03 	mov    QWORD PTR [rax],0x3c50ea2
    2bce:	e9 6e 0a 00 00       	jmp    3641 <fib_switch+0x1023>
    2bd3:	90                   	nop
    2bd4:	48 8b 05 a5 37 00 00 	mov    rax,QWORD PTR [rip+0x37a5]        # 6380 <rbp>
    2bdb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2bde:	48 83 e8 08          	sub    rax,0x8
    2be2:	48 c7 00 cb 7e 19 06 	mov    QWORD PTR [rax],0x6197ecb
    2be9:	e9 53 0a 00 00       	jmp    3641 <fib_switch+0x1023>
    2bee:	90                   	nop
    2bef:	48 8b 05 8a 37 00 00 	mov    rax,QWORD PTR [rip+0x378a]        # 6380 <rbp>
    2bf6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2bf9:	48 83 e8 08          	sub    rax,0x8
    2bfd:	48 c7 00 6d 8d de 09 	mov    QWORD PTR [rax],0x9de8d6d
    2c04:	e9 38 0a 00 00       	jmp    3641 <fib_switch+0x1023>
    2c09:	90                   	nop
    2c0a:	48 8b 05 6f 37 00 00 	mov    rax,QWORD PTR [rip+0x376f]        # 6380 <rbp>
    2c11:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2c14:	48 83 e8 08          	sub    rax,0x8
    2c18:	48 c7 00 38 0c f8 0f 	mov    QWORD PTR [rax],0xff80c38
    2c1f:	e9 1d 0a 00 00       	jmp    3641 <fib_switch+0x1023>
    2c24:	90                   	nop
    2c25:	48 8b 05 54 37 00 00 	mov    rax,QWORD PTR [rip+0x3754]        # 6380 <rbp>
    2c2c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2c2f:	48 83 e8 08          	sub    rax,0x8
    2c33:	48 c7 00 a5 99 d6 19 	mov    QWORD PTR [rax],0x19d699a5
    2c3a:	e9 02 0a 00 00       	jmp    3641 <fib_switch+0x1023>
    2c3f:	90                   	nop
    2c40:	48 8b 05 39 37 00 00 	mov    rax,QWORD PTR [rip+0x3739]        # 6380 <rbp>
    2c47:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2c4a:	48 83 e8 08          	sub    rax,0x8
    2c4e:	48 c7 00 dd a5 ce 29 	mov    QWORD PTR [rax],0x29cea5dd
    2c55:	e9 e7 09 00 00       	jmp    3641 <fib_switch+0x1023>
    2c5a:	90                   	nop
    2c5b:	48 8b 05 1e 37 00 00 	mov    rax,QWORD PTR [rip+0x371e]        # 6380 <rbp>
    2c62:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2c65:	48 83 e8 08          	sub    rax,0x8
    2c69:	48 c7 00 82 3f a5 43 	mov    QWORD PTR [rax],0x43a53f82
    2c70:	e9 cc 09 00 00       	jmp    3641 <fib_switch+0x1023>
    2c75:	90                   	nop
    2c76:	48 8b 05 03 37 00 00 	mov    rax,QWORD PTR [rip+0x3703]        # 6380 <rbp>
    2c7d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2c80:	48 83 e8 08          	sub    rax,0x8
    2c84:	48 c7 00 5f e5 73 6d 	mov    QWORD PTR [rax],0x6d73e55f
    2c8b:	e9 b1 09 00 00       	jmp    3641 <fib_switch+0x1023>
    2c90:	90                   	nop
    2c91:	48 8b 05 10 36 00 00 	mov    rax,QWORD PTR [rip+0x3610]        # 62a8 <eax>
    2c98:	be e1 24 19 b1       	mov    esi,0xb11924e1
    2c9d:	48 89 30             	mov    QWORD PTR [rax],rsi
    2ca0:	48 8b 05 f9 35 00 00 	mov    rax,QWORD PTR [rip+0x35f9]        # 62a0 <rax>
    2ca7:	48 8b 15 d2 36 00 00 	mov    rdx,QWORD PTR [rip+0x36d2]        # 6380 <rbp>
    2cae:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2cb1:	48 83 ea 08          	sub    rdx,0x8
    2cb5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2cb8:	48 89 02             	mov    QWORD PTR [rdx],rax
    2cbb:	e9 81 09 00 00       	jmp    3641 <fib_switch+0x1023>
    2cc0:	90                   	nop
    2cc1:	48 8b 05 d8 35 00 00 	mov    rax,QWORD PTR [rip+0x35d8]        # 62a0 <rax>
    2cc8:	48 bf 40 0a 8d 1e 01 	movabs rdi,0x11e8d0a40
    2ccf:	00 00 00 
    2cd2:	48 89 38             	mov    QWORD PTR [rax],rdi
    2cd5:	48 8b 05 c4 35 00 00 	mov    rax,QWORD PTR [rip+0x35c4]        # 62a0 <rax>
    2cdc:	48 8b 15 9d 36 00 00 	mov    rdx,QWORD PTR [rip+0x369d]        # 6380 <rbp>
    2ce3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2ce6:	48 83 ea 08          	sub    rdx,0x8
    2cea:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2ced:	48 89 02             	mov    QWORD PTR [rdx],rax
    2cf0:	e9 4c 09 00 00       	jmp    3641 <fib_switch+0x1023>
    2cf5:	90                   	nop
    2cf6:	48 8b 05 a3 35 00 00 	mov    rax,QWORD PTR [rip+0x35a3]        # 62a0 <rax>
    2cfd:	48 b9 21 2f a6 cf 01 	movabs rcx,0x1cfa62f21
    2d04:	00 00 00 
    2d07:	48 89 08             	mov    QWORD PTR [rax],rcx
    2d0a:	48 8b 05 8f 35 00 00 	mov    rax,QWORD PTR [rip+0x358f]        # 62a0 <rax>
    2d11:	48 8b 15 68 36 00 00 	mov    rdx,QWORD PTR [rip+0x3668]        # 6380 <rbp>
    2d18:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2d1b:	48 83 ea 08          	sub    rdx,0x8
    2d1f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2d22:	48 89 02             	mov    QWORD PTR [rdx],rax
    2d25:	e9 17 09 00 00       	jmp    3641 <fib_switch+0x1023>
    2d2a:	90                   	nop
    2d2b:	48 8b 05 6e 35 00 00 	mov    rax,QWORD PTR [rip+0x356e]        # 62a0 <rax>
    2d32:	48 be 61 39 33 ee 02 	movabs rsi,0x2ee333961
    2d39:	00 00 00 
    2d3c:	48 89 30             	mov    QWORD PTR [rax],rsi
    2d3f:	48 8b 05 5a 35 00 00 	mov    rax,QWORD PTR [rip+0x355a]        # 62a0 <rax>
    2d46:	48 8b 15 33 36 00 00 	mov    rdx,QWORD PTR [rip+0x3633]        # 6380 <rbp>
    2d4d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2d50:	48 83 ea 08          	sub    rdx,0x8
    2d54:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2d57:	48 89 02             	mov    QWORD PTR [rdx],rax
    2d5a:	e9 e2 08 00 00       	jmp    3641 <fib_switch+0x1023>
    2d5f:	90                   	nop
    2d60:	48 8b 05 39 35 00 00 	mov    rax,QWORD PTR [rip+0x3539]        # 62a0 <rax>
    2d67:	48 bb 82 68 d9 bd 04 	movabs rbx,0x4bdd96882
    2d6e:	00 00 00 
    2d71:	48 89 18             	mov    QWORD PTR [rax],rbx
    2d74:	48 8b 05 25 35 00 00 	mov    rax,QWORD PTR [rip+0x3525]        # 62a0 <rax>
    2d7b:	48 8b 15 fe 35 00 00 	mov    rdx,QWORD PTR [rip+0x35fe]        # 6380 <rbp>
    2d82:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2d85:	48 83 ea 08          	sub    rdx,0x8
    2d89:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2d8c:	48 89 02             	mov    QWORD PTR [rdx],rax
    2d8f:	e9 ad 08 00 00       	jmp    3641 <fib_switch+0x1023>
    2d94:	90                   	nop
    2d95:	48 8b 05 04 35 00 00 	mov    rax,QWORD PTR [rip+0x3504]        # 62a0 <rax>
    2d9c:	48 bf e3 a1 0c ac 07 	movabs rdi,0x7ac0ca1e3
    2da3:	00 00 00 
    2da6:	48 89 38             	mov    QWORD PTR [rax],rdi
    2da9:	48 8b 05 f0 34 00 00 	mov    rax,QWORD PTR [rip+0x34f0]        # 62a0 <rax>
    2db0:	48 8b 15 c9 35 00 00 	mov    rdx,QWORD PTR [rip+0x35c9]        # 6380 <rbp>
    2db7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2dba:	48 83 ea 08          	sub    rdx,0x8
    2dbe:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2dc1:	48 89 02             	mov    QWORD PTR [rdx],rax
    2dc4:	e9 78 08 00 00       	jmp    3641 <fib_switch+0x1023>
    2dc9:	90                   	nop
    2dca:	48 8b 05 cf 34 00 00 	mov    rax,QWORD PTR [rip+0x34cf]        # 62a0 <rax>
    2dd1:	48 b9 65 0a e6 69 0c 	movabs rcx,0xc69e60a65
    2dd8:	00 00 00 
    2ddb:	48 89 08             	mov    QWORD PTR [rax],rcx
    2dde:	48 8b 05 bb 34 00 00 	mov    rax,QWORD PTR [rip+0x34bb]        # 62a0 <rax>
    2de5:	48 8b 15 94 35 00 00 	mov    rdx,QWORD PTR [rip+0x3594]        # 6380 <rbp>
    2dec:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2def:	48 83 ea 08          	sub    rdx,0x8
    2df3:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2df6:	48 89 02             	mov    QWORD PTR [rdx],rax
    2df9:	e9 43 08 00 00       	jmp    3641 <fib_switch+0x1023>
    2dfe:	90                   	nop
    2dff:	48 8b 05 9a 34 00 00 	mov    rax,QWORD PTR [rip+0x349a]        # 62a0 <rax>
    2e06:	48 be 48 ac f2 15 14 	movabs rsi,0x1415f2ac48
    2e0d:	00 00 00 
    2e10:	48 89 30             	mov    QWORD PTR [rax],rsi
    2e13:	48 8b 05 86 34 00 00 	mov    rax,QWORD PTR [rip+0x3486]        # 62a0 <rax>
    2e1a:	48 8b 15 5f 35 00 00 	mov    rdx,QWORD PTR [rip+0x355f]        # 6380 <rbp>
    2e21:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2e24:	48 83 ea 08          	sub    rdx,0x8
    2e28:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2e2b:	48 89 02             	mov    QWORD PTR [rdx],rax
    2e2e:	e9 0e 08 00 00       	jmp    3641 <fib_switch+0x1023>
    2e33:	90                   	nop
    2e34:	48 8b 05 65 34 00 00 	mov    rax,QWORD PTR [rip+0x3465]        # 62a0 <rax>
    2e3b:	48 bb ad b6 d8 7f 20 	movabs rbx,0x207fd8b6ad
    2e42:	00 00 00 
    2e45:	48 89 18             	mov    QWORD PTR [rax],rbx
    2e48:	48 8b 05 51 34 00 00 	mov    rax,QWORD PTR [rip+0x3451]        # 62a0 <rax>
    2e4f:	48 8b 15 2a 35 00 00 	mov    rdx,QWORD PTR [rip+0x352a]        # 6380 <rbp>
    2e56:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2e59:	48 83 ea 08          	sub    rdx,0x8
    2e5d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2e60:	48 89 02             	mov    QWORD PTR [rdx],rax
    2e63:	e9 d9 07 00 00       	jmp    3641 <fib_switch+0x1023>
    2e68:	90                   	nop
    2e69:	48 8b 05 30 34 00 00 	mov    rax,QWORD PTR [rip+0x3430]        # 62a0 <rax>
    2e70:	48 bf f5 62 cb 95 34 	movabs rdi,0x3495cb62f5
    2e77:	00 00 00 
    2e7a:	48 89 38             	mov    QWORD PTR [rax],rdi
    2e7d:	48 8b 05 1c 34 00 00 	mov    rax,QWORD PTR [rip+0x341c]        # 62a0 <rax>
    2e84:	48 8b 15 f5 34 00 00 	mov    rdx,QWORD PTR [rip+0x34f5]        # 6380 <rbp>
    2e8b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2e8e:	48 83 ea 08          	sub    rdx,0x8
    2e92:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2e95:	48 89 02             	mov    QWORD PTR [rdx],rax
    2e98:	e9 a4 07 00 00       	jmp    3641 <fib_switch+0x1023>
    2e9d:	90                   	nop
    2e9e:	48 8b 05 fb 33 00 00 	mov    rax,QWORD PTR [rip+0x33fb]        # 62a0 <rax>
    2ea5:	48 b9 a2 19 a4 15 55 	movabs rcx,0x5515a419a2
    2eac:	00 00 00 
    2eaf:	48 89 08             	mov    QWORD PTR [rax],rcx
    2eb2:	48 8b 05 e7 33 00 00 	mov    rax,QWORD PTR [rip+0x33e7]        # 62a0 <rax>
    2eb9:	48 8b 15 c0 34 00 00 	mov    rdx,QWORD PTR [rip+0x34c0]        # 6380 <rbp>
    2ec0:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2ec3:	48 83 ea 08          	sub    rdx,0x8
    2ec7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2eca:	48 89 02             	mov    QWORD PTR [rdx],rax
    2ecd:	e9 6f 07 00 00       	jmp    3641 <fib_switch+0x1023>
    2ed2:	90                   	nop
    2ed3:	48 8b 05 c6 33 00 00 	mov    rax,QWORD PTR [rip+0x33c6]        # 62a0 <rax>
    2eda:	48 be 97 7c 6f ab 89 	movabs rsi,0x89ab6f7c97
    2ee1:	00 00 00 
    2ee4:	48 89 30             	mov    QWORD PTR [rax],rsi
    2ee7:	48 8b 05 b2 33 00 00 	mov    rax,QWORD PTR [rip+0x33b2]        # 62a0 <rax>
    2eee:	48 8b 15 8b 34 00 00 	mov    rdx,QWORD PTR [rip+0x348b]        # 6380 <rbp>
    2ef5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2ef8:	48 83 ea 08          	sub    rdx,0x8
    2efc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2eff:	48 89 02             	mov    QWORD PTR [rdx],rax
    2f02:	e9 3a 07 00 00       	jmp    3641 <fib_switch+0x1023>
    2f07:	90                   	nop
    2f08:	48 8b 05 91 33 00 00 	mov    rax,QWORD PTR [rip+0x3391]        # 62a0 <rax>
    2f0f:	48 bb 39 96 13 c1 de 	movabs rbx,0xdec1139639
    2f16:	00 00 00 
    2f19:	48 89 18             	mov    QWORD PTR [rax],rbx
    2f1c:	48 8b 05 7d 33 00 00 	mov    rax,QWORD PTR [rip+0x337d]        # 62a0 <rax>
    2f23:	48 8b 15 56 34 00 00 	mov    rdx,QWORD PTR [rip+0x3456]        # 6380 <rbp>
    2f2a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2f2d:	48 83 ea 08          	sub    rdx,0x8
    2f31:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2f34:	48 89 02             	mov    QWORD PTR [rdx],rax
    2f37:	e9 05 07 00 00       	jmp    3641 <fib_switch+0x1023>
    2f3c:	90                   	nop
    2f3d:	48 8b 05 5c 33 00 00 	mov    rax,QWORD PTR [rip+0x335c]        # 62a0 <rax>
    2f44:	48 bf d0 12 83 6c 68 	movabs rdi,0x1686c8312d0
    2f4b:	01 00 00 
    2f4e:	48 89 38             	mov    QWORD PTR [rax],rdi
    2f51:	48 8b 05 48 33 00 00 	mov    rax,QWORD PTR [rip+0x3348]        # 62a0 <rax>
    2f58:	48 8b 15 21 34 00 00 	mov    rdx,QWORD PTR [rip+0x3421]        # 6380 <rbp>
    2f5f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2f62:	48 83 ea 08          	sub    rdx,0x8
    2f66:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2f69:	48 89 02             	mov    QWORD PTR [rdx],rax
    2f6c:	e9 d0 06 00 00       	jmp    3641 <fib_switch+0x1023>
    2f71:	90                   	nop
    2f72:	48 8b 05 27 33 00 00 	mov    rax,QWORD PTR [rip+0x3327]        # 62a0 <rax>
    2f79:	48 b9 09 a9 96 2d 47 	movabs rcx,0x2472d96a909
    2f80:	02 00 00 
    2f83:	48 89 08             	mov    QWORD PTR [rax],rcx
    2f86:	48 8b 05 13 33 00 00 	mov    rax,QWORD PTR [rip+0x3313]        # 62a0 <rax>
    2f8d:	48 8b 15 ec 33 00 00 	mov    rdx,QWORD PTR [rip+0x33ec]        # 6380 <rbp>
    2f94:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2f97:	48 83 ea 08          	sub    rdx,0x8
    2f9b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2f9e:	48 89 02             	mov    QWORD PTR [rdx],rax
    2fa1:	e9 9b 06 00 00       	jmp    3641 <fib_switch+0x1023>
    2fa6:	90                   	nop
    2fa7:	48 8b 05 f2 32 00 00 	mov    rax,QWORD PTR [rip+0x32f2]        # 62a0 <rax>
    2fae:	48 be d9 bb 19 9a af 	movabs rsi,0x3af9a19bbd9
    2fb5:	03 00 00 
    2fb8:	48 89 30             	mov    QWORD PTR [rax],rsi
    2fbb:	48 8b 05 de 32 00 00 	mov    rax,QWORD PTR [rip+0x32de]        # 62a0 <rax>
    2fc2:	48 8b 15 b7 33 00 00 	mov    rdx,QWORD PTR [rip+0x33b7]        # 6380 <rbp>
    2fc9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    2fcc:	48 83 ea 08          	sub    rdx,0x8
    2fd0:	48 8b 00             	mov    rax,QWORD PTR [rax]
    2fd3:	48 89 02             	mov    QWORD PTR [rdx],rax
    2fd6:	e9 66 06 00 00       	jmp    3641 <fib_switch+0x1023>
    2fdb:	90                   	nop
    2fdc:	48 8b 05 bd 32 00 00 	mov    rax,QWORD PTR [rip+0x32bd]        # 62a0 <rax>
    2fe3:	48 bb e2 64 b0 c7 f6 	movabs rbx,0x5f6c7b064e2
    2fea:	05 00 00 
    2fed:	48 89 18             	mov    QWORD PTR [rax],rbx
    2ff0:	48 8b 05 a9 32 00 00 	mov    rax,QWORD PTR [rip+0x32a9]        # 62a0 <rax>
    2ff7:	48 8b 15 82 33 00 00 	mov    rdx,QWORD PTR [rip+0x3382]        # 6380 <rbp>
    2ffe:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3001:	48 83 ea 08          	sub    rdx,0x8
    3005:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3008:	48 89 02             	mov    QWORD PTR [rdx],rax
    300b:	e9 31 06 00 00       	jmp    3641 <fib_switch+0x1023>
    3010:	90                   	nop
    3011:	48 8b 05 88 32 00 00 	mov    rax,QWORD PTR [rip+0x3288]        # 62a0 <rax>
    3018:	48 bf bb 20 ca 61 a6 	movabs rdi,0x9a661ca20bb
    301f:	09 00 00 
    3022:	48 89 38             	mov    QWORD PTR [rax],rdi
    3025:	48 8b 05 74 32 00 00 	mov    rax,QWORD PTR [rip+0x3274]        # 62a0 <rax>
    302c:	48 8b 15 4d 33 00 00 	mov    rdx,QWORD PTR [rip+0x334d]        # 6380 <rbp>
    3033:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3036:	48 83 ea 08          	sub    rdx,0x8
    303a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    303d:	48 89 02             	mov    QWORD PTR [rdx],rax
    3040:	e9 fc 05 00 00       	jmp    3641 <fib_switch+0x1023>
    3045:	90                   	nop
    3046:	48 8b 05 53 32 00 00 	mov    rax,QWORD PTR [rip+0x3253]        # 62a0 <rax>
    304d:	48 b9 9d 85 7a 29 9d 	movabs rcx,0xf9d297a859d
    3054:	0f 00 00 
    3057:	48 89 08             	mov    QWORD PTR [rax],rcx
    305a:	48 8b 05 3f 32 00 00 	mov    rax,QWORD PTR [rip+0x323f]        # 62a0 <rax>
    3061:	48 8b 15 18 33 00 00 	mov    rdx,QWORD PTR [rip+0x3318]        # 6380 <rbp>
    3068:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    306b:	48 83 ea 08          	sub    rdx,0x8
    306f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3072:	48 89 02             	mov    QWORD PTR [rdx],rax
    3075:	e9 c7 05 00 00       	jmp    3641 <fib_switch+0x1023>
    307a:	90                   	nop
    307b:	48 8b 05 1e 32 00 00 	mov    rax,QWORD PTR [rip+0x321e]        # 62a0 <rax>
    3082:	48 be 58 a6 44 8b 43 	movabs rsi,0x19438b44a658
    3089:	19 00 00 
    308c:	48 89 30             	mov    QWORD PTR [rax],rsi
    308f:	48 8b 05 0a 32 00 00 	mov    rax,QWORD PTR [rip+0x320a]        # 62a0 <rax>
    3096:	48 8b 15 e3 32 00 00 	mov    rdx,QWORD PTR [rip+0x32e3]        # 6380 <rbp>
    309d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    30a0:	48 83 ea 08          	sub    rdx,0x8
    30a4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    30a7:	48 89 02             	mov    QWORD PTR [rdx],rax
    30aa:	e9 92 05 00 00       	jmp    3641 <fib_switch+0x1023>
    30af:	90                   	nop
    30b0:	48 8b 05 e9 31 00 00 	mov    rax,QWORD PTR [rip+0x31e9]        # 62a0 <rax>
    30b7:	48 bb f5 2b bf b4 e0 	movabs rbx,0x28e0b4bf2bf5
    30be:	28 00 00 
    30c1:	48 89 18             	mov    QWORD PTR [rax],rbx
    30c4:	48 8b 05 d5 31 00 00 	mov    rax,QWORD PTR [rip+0x31d5]        # 62a0 <rax>
    30cb:	48 8b 15 ae 32 00 00 	mov    rdx,QWORD PTR [rip+0x32ae]        # 6380 <rbp>
    30d2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    30d5:	48 83 ea 08          	sub    rdx,0x8
    30d9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    30dc:	48 89 02             	mov    QWORD PTR [rdx],rax
    30df:	e9 5d 05 00 00       	jmp    3641 <fib_switch+0x1023>
    30e4:	90                   	nop
    30e5:	48 8b 05 b4 31 00 00 	mov    rax,QWORD PTR [rip+0x31b4]        # 62a0 <rax>
    30ec:	48 bf 4d d2 03 40 24 	movabs rdi,0x42244003d24d
    30f3:	42 00 00 
    30f6:	48 89 38             	mov    QWORD PTR [rax],rdi
    30f9:	48 8b 05 a0 31 00 00 	mov    rax,QWORD PTR [rip+0x31a0]        # 62a0 <rax>
    3100:	48 8b 15 79 32 00 00 	mov    rdx,QWORD PTR [rip+0x3279]        # 6380 <rbp>
    3107:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    310a:	48 83 ea 08          	sub    rdx,0x8
    310e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3111:	48 89 02             	mov    QWORD PTR [rdx],rax
    3114:	e9 28 05 00 00       	jmp    3641 <fib_switch+0x1023>
    3119:	90                   	nop
    311a:	48 8b 05 7f 31 00 00 	mov    rax,QWORD PTR [rip+0x317f]        # 62a0 <rax>
    3121:	48 b9 42 fe c2 f4 04 	movabs rcx,0x6b04f4c2fe42
    3128:	6b 00 00 
    312b:	48 89 08             	mov    QWORD PTR [rax],rcx
    312e:	48 8b 05 6b 31 00 00 	mov    rax,QWORD PTR [rip+0x316b]        # 62a0 <rax>
    3135:	48 8b 15 44 32 00 00 	mov    rdx,QWORD PTR [rip+0x3244]        # 6380 <rbp>
    313c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    313f:	48 83 ea 08          	sub    rdx,0x8
    3143:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3146:	48 89 02             	mov    QWORD PTR [rdx],rax
    3149:	e9 f3 04 00 00       	jmp    3641 <fib_switch+0x1023>
    314e:	90                   	nop
    314f:	48 8b 05 4a 31 00 00 	mov    rax,QWORD PTR [rip+0x314a]        # 62a0 <rax>
    3156:	48 be 8f d0 c6 34 29 	movabs rsi,0xad2934c6d08f
    315d:	ad 00 00 
    3160:	48 89 30             	mov    QWORD PTR [rax],rsi
    3163:	48 8b 05 36 31 00 00 	mov    rax,QWORD PTR [rip+0x3136]        # 62a0 <rax>
    316a:	48 8b 15 0f 32 00 00 	mov    rdx,QWORD PTR [rip+0x320f]        # 6380 <rbp>
    3171:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3174:	48 83 ea 08          	sub    rdx,0x8
    3178:	48 8b 00             	mov    rax,QWORD PTR [rax]
    317b:	48 89 02             	mov    QWORD PTR [rdx],rax
    317e:	e9 be 04 00 00       	jmp    3641 <fib_switch+0x1023>
    3183:	90                   	nop
    3184:	48 8b 05 15 31 00 00 	mov    rax,QWORD PTR [rip+0x3115]        # 62a0 <rax>
    318b:	48 bb d1 ce 89 29 2e 	movabs rbx,0x1182e2989ced1
    3192:	18 01 00 
    3195:	48 89 18             	mov    QWORD PTR [rax],rbx
    3198:	48 8b 05 01 31 00 00 	mov    rax,QWORD PTR [rip+0x3101]        # 62a0 <rax>
    319f:	48 8b 15 da 31 00 00 	mov    rdx,QWORD PTR [rip+0x31da]        # 6380 <rbp>
    31a6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    31a9:	48 83 ea 08          	sub    rdx,0x8
    31ad:	48 8b 00             	mov    rax,QWORD PTR [rax]
    31b0:	48 89 02             	mov    QWORD PTR [rdx],rax
    31b3:	e9 89 04 00 00       	jmp    3641 <fib_switch+0x1023>
    31b8:	90                   	nop
    31b9:	48 8b 05 e0 30 00 00 	mov    rax,QWORD PTR [rip+0x30e0]        # 62a0 <rax>
    31c0:	48 bf 60 9f 50 5e 57 	movabs rdi,0x1c5575e509f60
    31c7:	c5 01 00 
    31ca:	48 89 38             	mov    QWORD PTR [rax],rdi
    31cd:	48 8b 05 cc 30 00 00 	mov    rax,QWORD PTR [rip+0x30cc]        # 62a0 <rax>
    31d4:	48 8b 15 a5 31 00 00 	mov    rdx,QWORD PTR [rip+0x31a5]        # 6380 <rbp>
    31db:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    31de:	48 83 ea 08          	sub    rdx,0x8
    31e2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    31e5:	48 89 02             	mov    QWORD PTR [rdx],rax
    31e8:	e9 54 04 00 00       	jmp    3641 <fib_switch+0x1023>
    31ed:	90                   	nop
    31ee:	48 8b 05 ab 30 00 00 	mov    rax,QWORD PTR [rip+0x30ab]        # 62a0 <rax>
    31f5:	48 b9 31 6e da 87 85 	movabs rcx,0x2dd8587da6e31
    31fc:	dd 02 00 
    31ff:	48 89 08             	mov    QWORD PTR [rax],rcx
    3202:	48 8b 05 97 30 00 00 	mov    rax,QWORD PTR [rip+0x3097]        # 62a0 <rax>
    3209:	48 8b 15 70 31 00 00 	mov    rdx,QWORD PTR [rip+0x3170]        # 6380 <rbp>
    3210:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3213:	48 83 ea 08          	sub    rdx,0x8
    3217:	48 8b 00             	mov    rax,QWORD PTR [rax]
    321a:	48 89 02             	mov    QWORD PTR [rdx],rax
    321d:	e9 1f 04 00 00       	jmp    3641 <fib_switch+0x1023>
    3222:	90                   	nop
    3223:	48 8b 05 76 30 00 00 	mov    rax,QWORD PTR [rip+0x3076]        # 62a0 <rax>
    322a:	48 be 91 0d 2b e6 dc 	movabs rsi,0x4a2dce62b0d91
    3231:	a2 04 00 
    3234:	48 89 30             	mov    QWORD PTR [rax],rsi
    3237:	48 8b 05 62 30 00 00 	mov    rax,QWORD PTR [rip+0x3062]        # 62a0 <rax>
    323e:	48 8b 15 3b 31 00 00 	mov    rdx,QWORD PTR [rip+0x313b]        # 6380 <rbp>
    3245:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3248:	48 83 ea 08          	sub    rdx,0x8
    324c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    324f:	48 89 02             	mov    QWORD PTR [rdx],rax
    3252:	e9 ea 03 00 00       	jmp    3641 <fib_switch+0x1023>
    3257:	90                   	nop
    3258:	48 8b 05 41 30 00 00 	mov    rax,QWORD PTR [rip+0x3041]        # 62a0 <rax>
    325f:	48 bb c2 7b 05 6e 62 	movabs rbx,0x780626e057bc2
    3266:	80 07 00 
    3269:	48 89 18             	mov    QWORD PTR [rax],rbx
    326c:	48 8b 05 2d 30 00 00 	mov    rax,QWORD PTR [rip+0x302d]        # 62a0 <rax>
    3273:	48 8b 15 06 31 00 00 	mov    rdx,QWORD PTR [rip+0x3106]        # 6380 <rbp>
    327a:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    327d:	48 83 ea 08          	sub    rdx,0x8
    3281:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3284:	48 89 02             	mov    QWORD PTR [rdx],rax
    3287:	e9 b5 03 00 00       	jmp    3641 <fib_switch+0x1023>
    328c:	90                   	nop
    328d:	48 8b 05 0c 30 00 00 	mov    rax,QWORD PTR [rip+0x300c]        # 62a0 <rax>
    3294:	48 bf 53 89 30 54 3f 	movabs rdi,0xc233f54308953
    329b:	23 0c 00 
    329e:	48 89 38             	mov    QWORD PTR [rax],rdi
    32a1:	48 8b 05 f8 2f 00 00 	mov    rax,QWORD PTR [rip+0x2ff8]        # 62a0 <rax>
    32a8:	48 8b 15 d1 30 00 00 	mov    rdx,QWORD PTR [rip+0x30d1]        # 6380 <rbp>
    32af:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    32b2:	48 83 ea 08          	sub    rdx,0x8
    32b6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    32b9:	48 89 02             	mov    QWORD PTR [rdx],rax
    32bc:	e9 80 03 00 00       	jmp    3641 <fib_switch+0x1023>
    32c1:	90                   	nop
    32c2:	48 8b 05 d7 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd7]        # 62a0 <rax>
    32c9:	48 b9 15 05 36 c2 a1 	movabs rcx,0x13a3a1c2360515
    32d0:	a3 13 00 
    32d3:	48 89 08             	mov    QWORD PTR [rax],rcx
    32d6:	48 8b 05 c3 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fc3]        # 62a0 <rax>
    32dd:	48 8b 15 9c 30 00 00 	mov    rdx,QWORD PTR [rip+0x309c]        # 6380 <rbp>
    32e4:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    32e7:	48 83 ea 08          	sub    rdx,0x8
    32eb:	48 8b 00             	mov    rax,QWORD PTR [rax]
    32ee:	48 89 02             	mov    QWORD PTR [rdx],rax
    32f1:	e9 4b 03 00 00       	jmp    3641 <fib_switch+0x1023>
    32f6:	90                   	nop
    32f7:	48 8b 05 a2 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fa2]        # 62a0 <rax>
    32fe:	48 be 68 8e 66 16 e1 	movabs rsi,0x1fc6e116668e68
    3305:	c6 1f 00 
    3308:	48 89 30             	mov    QWORD PTR [rax],rsi
    330b:	48 8b 05 8e 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f8e]        # 62a0 <rax>
    3312:	48 8b 15 67 30 00 00 	mov    rdx,QWORD PTR [rip+0x3067]        # 6380 <rbp>
    3319:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    331c:	48 83 ea 08          	sub    rdx,0x8
    3320:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3323:	48 89 02             	mov    QWORD PTR [rdx],rax
    3326:	e9 16 03 00 00       	jmp    3641 <fib_switch+0x1023>
    332b:	90                   	nop
    332c:	48 8b 05 6d 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f6d]        # 62a0 <rax>
    3333:	48 bb 7d 93 9c d8 82 	movabs rbx,0x336a82d89c937d
    333a:	6a 33 00 
    333d:	48 89 18             	mov    QWORD PTR [rax],rbx
    3340:	48 8b 05 59 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f59]        # 62a0 <rax>
    3347:	48 8b 15 32 30 00 00 	mov    rdx,QWORD PTR [rip+0x3032]        # 6380 <rbp>
    334e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3351:	48 83 ea 08          	sub    rdx,0x8
    3355:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3358:	48 89 02             	mov    QWORD PTR [rdx],rax
    335b:	e9 e1 02 00 00       	jmp    3641 <fib_switch+0x1023>
    3360:	90                   	nop
    3361:	48 8b 05 38 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f38]        # 62a0 <rax>
    3368:	48 bf e5 21 03 ef 63 	movabs rdi,0x533163ef0321e5
    336f:	31 53 00 
    3372:	48 89 38             	mov    QWORD PTR [rax],rdi
    3375:	48 8b 05 24 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f24]        # 62a0 <rax>
    337c:	48 8b 15 fd 2f 00 00 	mov    rdx,QWORD PTR [rip+0x2ffd]        # 6380 <rbp>
    3383:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3386:	48 83 ea 08          	sub    rdx,0x8
    338a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    338d:	48 89 02             	mov    QWORD PTR [rdx],rax
    3390:	e9 ac 02 00 00       	jmp    3641 <fib_switch+0x1023>
    3395:	90                   	nop
    3396:	48 8b 05 03 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f03]        # 62a0 <rax>
    339d:	48 b9 62 b5 9f c7 e6 	movabs rcx,0x869be6c79fb562
    33a4:	9b 86 00 
    33a7:	48 89 08             	mov    QWORD PTR [rax],rcx
    33aa:	48 8b 05 ef 2e 00 00 	mov    rax,QWORD PTR [rip+0x2eef]        # 62a0 <rax>
    33b1:	48 8b 15 c8 2f 00 00 	mov    rdx,QWORD PTR [rip+0x2fc8]        # 6380 <rbp>
    33b8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    33bb:	48 83 ea 08          	sub    rdx,0x8
    33bf:	48 8b 00             	mov    rax,QWORD PTR [rax]
    33c2:	48 89 02             	mov    QWORD PTR [rdx],rax
    33c5:	e9 77 02 00 00       	jmp    3641 <fib_switch+0x1023>
    33ca:	90                   	nop
    33cb:	48 8b 05 ce 2e 00 00 	mov    rax,QWORD PTR [rip+0x2ece]        # 62a0 <rax>
    33d2:	48 be 47 d7 a2 b6 4a 	movabs rsi,0xd9cd4ab6a2d747
    33d9:	cd d9 00 
    33dc:	48 89 30             	mov    QWORD PTR [rax],rsi
    33df:	48 8b 05 ba 2e 00 00 	mov    rax,QWORD PTR [rip+0x2eba]        # 62a0 <rax>
    33e6:	48 8b 15 93 2f 00 00 	mov    rdx,QWORD PTR [rip+0x2f93]        # 6380 <rbp>
    33ed:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    33f0:	48 83 ea 08          	sub    rdx,0x8
    33f4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    33f7:	48 89 02             	mov    QWORD PTR [rdx],rax
    33fa:	e9 42 02 00 00       	jmp    3641 <fib_switch+0x1023>
    33ff:	90                   	nop
    3400:	48 8b 05 99 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e99]        # 62a0 <rax>
    3407:	48 bb a9 8c 42 7e 31 	movabs rbx,0x16069317e428ca9
    340e:	69 60 01 
    3411:	48 89 18             	mov    QWORD PTR [rax],rbx
    3414:	48 8b 05 85 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e85]        # 62a0 <rax>
    341b:	48 8b 15 5e 2f 00 00 	mov    rdx,QWORD PTR [rip+0x2f5e]        # 6380 <rbp>
    3422:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3425:	48 83 ea 08          	sub    rdx,0x8
    3429:	48 8b 00             	mov    rax,QWORD PTR [rax]
    342c:	48 89 02             	mov    QWORD PTR [rdx],rax
    342f:	e9 0d 02 00 00       	jmp    3641 <fib_switch+0x1023>
    3434:	90                   	nop
    3435:	48 8b 05 64 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e64]        # 62a0 <rax>
    343c:	48 bf f0 63 e5 34 7c 	movabs rdi,0x23a367c34e563f0
    3443:	36 3a 02 
    3446:	48 89 38             	mov    QWORD PTR [rax],rdi
    3449:	48 8b 05 50 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e50]        # 62a0 <rax>
    3450:	48 8b 15 29 2f 00 00 	mov    rdx,QWORD PTR [rip+0x2f29]        # 6380 <rbp>
    3457:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    345a:	48 83 ea 08          	sub    rdx,0x8
    345e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3461:	48 89 02             	mov    QWORD PTR [rdx],rax
    3464:	e9 d8 01 00 00       	jmp    3641 <fib_switch+0x1023>
    3469:	90                   	nop
    346a:	48 8b 05 2f 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e2f]        # 62a0 <rax>
    3471:	48 b9 99 f0 27 b3 ad 	movabs rcx,0x39a9fadb327f099
    3478:	9f 9a 03 
    347b:	48 89 08             	mov    QWORD PTR [rax],rcx
    347e:	48 8b 05 1b 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e1b]        # 62a0 <rax>
    3485:	48 8b 15 f4 2e 00 00 	mov    rdx,QWORD PTR [rip+0x2ef4]        # 6380 <rbp>
    348c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    348f:	48 83 ea 08          	sub    rdx,0x8
    3493:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3496:	48 89 02             	mov    QWORD PTR [rdx],rax
    3499:	e9 a3 01 00 00       	jmp    3641 <fib_switch+0x1023>
    349e:	90                   	nop
    349f:	48 8b 05 fa 2d 00 00 	mov    rax,QWORD PTR [rip+0x2dfa]        # 62a0 <rax>
    34a6:	48 be 89 54 0d e8 29 	movabs rsi,0x5d4d629e80d5489
    34ad:	d6 d4 05 
    34b0:	48 89 30             	mov    QWORD PTR [rax],rsi
    34b3:	48 8b 05 e6 2d 00 00 	mov    rax,QWORD PTR [rip+0x2de6]        # 62a0 <rax>
    34ba:	48 8b 15 bf 2e 00 00 	mov    rdx,QWORD PTR [rip+0x2ebf]        # 6380 <rbp>
    34c1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    34c4:	48 83 ea 08          	sub    rdx,0x8
    34c8:	48 8b 00             	mov    rax,QWORD PTR [rax]
    34cb:	48 89 02             	mov    QWORD PTR [rdx],rax
    34ce:	e9 6e 01 00 00       	jmp    3641 <fib_switch+0x1023>
    34d3:	90                   	nop
    34d4:	48 8b 05 c5 2d 00 00 	mov    rax,QWORD PTR [rip+0x2dc5]        # 62a0 <rax>
    34db:	48 bb 22 45 35 9b d7 	movabs rbx,0x96f75d79b354522
    34e2:	75 6f 09 
    34e5:	48 89 18             	mov    QWORD PTR [rax],rbx
    34e8:	48 8b 05 b1 2d 00 00 	mov    rax,QWORD PTR [rip+0x2db1]        # 62a0 <rax>
    34ef:	48 8b 15 8a 2e 00 00 	mov    rdx,QWORD PTR [rip+0x2e8a]        # 6380 <rbp>
    34f6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    34f9:	48 83 ea 08          	sub    rdx,0x8
    34fd:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3500:	48 89 02             	mov    QWORD PTR [rdx],rax
    3503:	e9 39 01 00 00       	jmp    3641 <fib_switch+0x1023>
    3508:	90                   	nop
    3509:	48 8b 05 90 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d90]        # 62a0 <rax>
    3510:	48 bf ab 99 42 83 01 	movabs rdi,0xf444c01834299ab
    3517:	4c 44 0f 
    351a:	48 89 38             	mov    QWORD PTR [rax],rdi
    351d:	48 8b 05 7c 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d7c]        # 62a0 <rax>
    3524:	48 8b 15 55 2e 00 00 	mov    rdx,QWORD PTR [rip+0x2e55]        # 6380 <rbp>
    352b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    352e:	48 83 ea 08          	sub    rdx,0x8
    3532:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3535:	48 89 02             	mov    QWORD PTR [rdx],rax
    3538:	e9 04 01 00 00       	jmp    3641 <fib_switch+0x1023>
    353d:	90                   	nop
    353e:	48 8b 05 5b 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d5b]        # 62a0 <rax>
    3545:	48 b9 cd de 77 1e d9 	movabs rcx,0x18b3c1d91e77decd
    354c:	c1 b3 18 
    354f:	48 89 08             	mov    QWORD PTR [rax],rcx
    3552:	48 8b 05 47 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d47]        # 62a0 <rax>
    3559:	48 8b 15 20 2e 00 00 	mov    rdx,QWORD PTR [rip+0x2e20]        # 6380 <rbp>
    3560:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3563:	48 83 ea 08          	sub    rdx,0x8
    3567:	48 8b 00             	mov    rax,QWORD PTR [rax]
    356a:	48 89 02             	mov    QWORD PTR [rdx],rax
    356d:	e9 cf 00 00 00       	jmp    3641 <fib_switch+0x1023>
    3572:	90                   	nop
    3573:	48 8b 05 26 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d26]        # 62a0 <rax>
    357a:	48 be 78 78 ba a1 da 	movabs rsi,0x27f80ddaa1ba7878
    3581:	0d f8 27 
    3584:	48 89 30             	mov    QWORD PTR [rax],rsi
    3587:	48 8b 05 12 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d12]        # 62a0 <rax>
    358e:	48 8b 15 eb 2d 00 00 	mov    rdx,QWORD PTR [rip+0x2deb]        # 6380 <rbp>
    3595:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3598:	48 83 ea 08          	sub    rdx,0x8
    359c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    359f:	48 89 02             	mov    QWORD PTR [rdx],rax
    35a2:	e9 9a 00 00 00       	jmp    3641 <fib_switch+0x1023>
    35a7:	90                   	nop
    35a8:	48 8b 05 f1 2c 00 00 	mov    rax,QWORD PTR [rip+0x2cf1]        # 62a0 <rax>
    35af:	48 bb 45 57 32 c0 b3 	movabs rbx,0x40abcfb3c0325745
    35b6:	cf ab 40 
    35b9:	48 89 18             	mov    QWORD PTR [rax],rbx
    35bc:	48 8b 05 dd 2c 00 00 	mov    rax,QWORD PTR [rip+0x2cdd]        # 62a0 <rax>
    35c3:	48 8b 15 b6 2d 00 00 	mov    rdx,QWORD PTR [rip+0x2db6]        # 6380 <rbp>
    35ca:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    35cd:	48 83 ea 08          	sub    rdx,0x8
    35d1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    35d4:	48 89 02             	mov    QWORD PTR [rdx],rax
    35d7:	eb 68                	jmp    3641 <fib_switch+0x1023>
    35d9:	90                   	nop
    35da:	48 8b 05 bf 2c 00 00 	mov    rax,QWORD PTR [rip+0x2cbf]        # 62a0 <rax>
    35e1:	48 bf bd cf ec 61 8e 	movabs rdi,0x68a3dd8e61eccfbd
    35e8:	dd a3 68 
    35eb:	48 89 38             	mov    QWORD PTR [rax],rdi
    35ee:	48 8b 05 ab 2c 00 00 	mov    rax,QWORD PTR [rip+0x2cab]        # 62a0 <rax>
    35f5:	48 8b 15 84 2d 00 00 	mov    rdx,QWORD PTR [rip+0x2d84]        # 6380 <rbp>
    35fc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    35ff:	48 83 ea 08          	sub    rdx,0x8
    3603:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3606:	48 89 02             	mov    QWORD PTR [rdx],rax
    3609:	eb 36                	jmp    3641 <fib_switch+0x1023>
    360b:	90                   	nop
    360c:	48 8b 05 8d 2c 00 00 	mov    rax,QWORD PTR [rip+0x2c8d]        # 62a0 <rax>
    3613:	48 b9 02 27 1f 22 42 	movabs rcx,0xa94fad42221f2702
    361a:	ad 4f a9 
    361d:	48 89 08             	mov    QWORD PTR [rax],rcx
    3620:	48 8b 05 79 2c 00 00 	mov    rax,QWORD PTR [rip+0x2c79]        # 62a0 <rax>
    3627:	48 8b 15 52 2d 00 00 	mov    rdx,QWORD PTR [rip+0x2d52]        # 6380 <rbp>
    362e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3631:	48 83 ea 08          	sub    rdx,0x8
    3635:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3638:	48 89 02             	mov    QWORD PTR [rdx],rax
    363b:	eb 04                	jmp    3641 <fib_switch+0x1023>
    363d:	90                   	nop
    363e:	eb 01                	jmp    3641 <fib_switch+0x1023>
    3640:	90                   	nop
    3641:	48 8b 05 38 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d38]        # 6380 <rbp>
    3648:	48 8b 00             	mov    rax,QWORD PTR [rax]
    364b:	48 83 e8 08          	sub    rax,0x8
    364f:	48 89 c2             	mov    rdx,rax
    3652:	48 8b 05 47 2c 00 00 	mov    rax,QWORD PTR [rip+0x2c47]        # 62a0 <rax>
    3659:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    365c:	48 89 10             	mov    QWORD PTR [rax],rdx
    365f:	48 8b 1d 1a 2d 00 00 	mov    rbx,QWORD PTR [rip+0x2d1a]        # 6380 <rbp>
    3666:	e8 cf df ff ff       	call   163a <pop_u64>
    366b:	48 89 03             	mov    QWORD PTR [rbx],rax
    366e:	90                   	nop
    366f:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    3673:	c9                   	leave  
    3674:	c3                   	ret    

0000000000003675 <main_>:
    3675:	f3 0f 1e fa          	endbr64 
    3679:	55                   	push   rbp
    367a:	48 89 e5             	mov    rbp,rsp
    367d:	53                   	push   rbx
    367e:	48 83 ec 08          	sub    rsp,0x8
    3682:	48 8b 05 f7 2c 00 00 	mov    rax,QWORD PTR [rip+0x2cf7]        # 6380 <rbp>
    3689:	48 8b 00             	mov    rax,QWORD PTR [rax]
    368c:	48 89 c7             	mov    rdi,rax
    368f:	e8 6f df ff ff       	call   1603 <push_u64>
    3694:	48 8b 15 05 2d 00 00 	mov    rdx,QWORD PTR [rip+0x2d05]        # 63a0 <rsp>
    369b:	48 8b 05 de 2c 00 00 	mov    rax,QWORD PTR [rip+0x2cde]        # 6380 <rbp>
    36a2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    36a5:	48 89 10             	mov    QWORD PTR [rax],rdx
    36a8:	48 8b 05 f1 2c 00 00 	mov    rax,QWORD PTR [rip+0x2cf1]        # 63a0 <rsp>
    36af:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    36b2:	48 8b 05 e7 2c 00 00 	mov    rax,QWORD PTR [rip+0x2ce7]        # 63a0 <rsp>
    36b9:	48 83 ea 20          	sub    rdx,0x20
    36bd:	48 89 10             	mov    QWORD PTR [rax],rdx
    36c0:	48 8b 05 a1 2c 00 00 	mov    rax,QWORD PTR [rip+0x2ca1]        # 6368 <edi>
    36c7:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    36ca:	48 8b 05 af 2c 00 00 	mov    rax,QWORD PTR [rip+0x2caf]        # 6380 <rbp>
    36d1:	48 8b 00             	mov    rax,QWORD PTR [rax]
    36d4:	48 83 e8 14          	sub    rax,0x14
    36d8:	89 10                	mov    DWORD PTR [rax],edx
    36da:	48 8b 05 5f 2c 00 00 	mov    rax,QWORD PTR [rip+0x2c5f]        # 6340 <rsi>
    36e1:	48 8b 15 98 2c 00 00 	mov    rdx,QWORD PTR [rip+0x2c98]        # 6380 <rbp>
    36e8:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    36eb:	48 83 ea 20          	sub    rdx,0x20
    36ef:	48 8b 00             	mov    rax,QWORD PTR [rax]
    36f2:	48 89 02             	mov    QWORD PTR [rdx],rax
    36f5:	48 8b 05 ac 2b 00 00 	mov    rax,QWORD PTR [rip+0x2bac]        # 62a8 <eax>
    36fc:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    3703:	48 8b 05 76 2c 00 00 	mov    rax,QWORD PTR [rip+0x2c76]        # 6380 <rbp>
    370a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    370d:	48 83 e8 14          	sub    rax,0x14
    3711:	8b 00                	mov    eax,DWORD PTR [rax]
    3713:	83 f8 02             	cmp    eax,0x2
    3716:	0f 84 c3 00 00 00    	je     37df <main_+0x16a>
    371c:	48 8b 15 5d 2b 00 00 	mov    rdx,QWORD PTR [rip+0x2b5d]        # 6280 <stderr@GLIBC_2.2.5>
    3723:	48 8b 05 76 2b 00 00 	mov    rax,QWORD PTR [rip+0x2b76]        # 62a0 <rax>
    372a:	48 89 10             	mov    QWORD PTR [rax],rdx
    372d:	48 8b 15 6c 2b 00 00 	mov    rdx,QWORD PTR [rip+0x2b6c]        # 62a0 <rax>
    3734:	48 8b 05 b5 2b 00 00 	mov    rax,QWORD PTR [rip+0x2bb5]        # 62f0 <rcx>
    373b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    373e:	48 89 10             	mov    QWORD PTR [rax],rdx
    3741:	48 8b 05 d8 2b 00 00 	mov    rax,QWORD PTR [rip+0x2bd8]        # 6320 <edx>
    3748:	48 c7 00 0f 00 00 00 	mov    QWORD PTR [rax],0xf
    374f:	48 8b 05 f2 2b 00 00 	mov    rax,QWORD PTR [rip+0x2bf2]        # 6348 <esi>
    3756:	48 c7 00 01 00 00 00 	mov    QWORD PTR [rax],0x1
    375d:	48 8b 05 5c 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d5c]        # 64c0 <s_rodata>
    3764:	48 8d 90 98 01 00 00 	lea    rdx,[rax+0x198]
    376b:	48 8b 05 2e 2b 00 00 	mov    rax,QWORD PTR [rip+0x2b2e]        # 62a0 <rax>
    3772:	48 89 10             	mov    QWORD PTR [rax],rdx
    3775:	48 8b 15 24 2b 00 00 	mov    rdx,QWORD PTR [rip+0x2b24]        # 62a0 <rax>
    377c:	48 8b 05 dd 2b 00 00 	mov    rax,QWORD PTR [rip+0x2bdd]        # 6360 <rdi>
    3783:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3786:	48 89 10             	mov    QWORD PTR [rax],rdx
    3789:	48 8b 05 60 2b 00 00 	mov    rax,QWORD PTR [rip+0x2b60]        # 62f0 <rcx>
    3790:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3793:	48 89 c6             	mov    rsi,rax
    3796:	48 8b 05 7b 2b 00 00 	mov    rax,QWORD PTR [rip+0x2b7b]        # 6318 <rdx>
    379d:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    37a0:	48 8b 05 99 2b 00 00 	mov    rax,QWORD PTR [rip+0x2b99]        # 6340 <rsi>
    37a7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    37aa:	48 8b 0d af 2b 00 00 	mov    rcx,QWORD PTR [rip+0x2baf]        # 6360 <rdi>
    37b1:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
    37b4:	48 89 cf             	mov    rdi,rcx
    37b7:	48 8b 1d e2 2a 00 00 	mov    rbx,QWORD PTR [rip+0x2ae2]        # 62a0 <rax>
    37be:	48 89 f1             	mov    rcx,rsi
    37c1:	48 89 c6             	mov    rsi,rax
    37c4:	e8 47 d9 ff ff       	call   1110 <fwrite@plt>
    37c9:	48 89 03             	mov    QWORD PTR [rbx],rax
    37cc:	48 8b 05 d5 2a 00 00 	mov    rax,QWORD PTR [rip+0x2ad5]        # 62a8 <eax>
    37d3:	48 c7 00 01 00 00 00 	mov    QWORD PTR [rax],0x1
    37da:	e9 cd 06 00 00       	jmp    3eac <main_+0x837>
    37df:	90                   	nop
    37e0:	48 8b 05 99 2b 00 00 	mov    rax,QWORD PTR [rip+0x2b99]        # 6380 <rbp>
    37e7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    37ea:	48 83 e8 10          	sub    rax,0x10
    37ee:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    37f5:	48 8b 05 84 2b 00 00 	mov    rax,QWORD PTR [rip+0x2b84]        # 6380 <rbp>
    37fc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    37ff:	48 83 e8 20          	sub    rax,0x20
    3803:	48 89 c2             	mov    rdx,rax
    3806:	48 8b 05 93 2a 00 00 	mov    rax,QWORD PTR [rip+0x2a93]        # 62a0 <rax>
    380d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3810:	48 89 10             	mov    QWORD PTR [rax],rdx
    3813:	48 8b 05 86 2a 00 00 	mov    rax,QWORD PTR [rip+0x2a86]        # 62a0 <rax>
    381a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    381d:	48 8b 05 7c 2a 00 00 	mov    rax,QWORD PTR [rip+0x2a7c]        # 62a0 <rax>
    3824:	48 83 c2 08          	add    rdx,0x8
    3828:	48 89 10             	mov    QWORD PTR [rax],rdx
    382b:	48 8b 05 6e 2a 00 00 	mov    rax,QWORD PTR [rip+0x2a6e]        # 62a0 <rax>
    3832:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3835:	48 89 c2             	mov    rdx,rax
    3838:	48 8b 05 61 2a 00 00 	mov    rax,QWORD PTR [rip+0x2a61]        # 62a0 <rax>
    383f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3842:	48 89 10             	mov    QWORD PTR [rax],rdx
    3845:	48 8b 05 34 2b 00 00 	mov    rax,QWORD PTR [rip+0x2b34]        # 6380 <rbp>
    384c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    384f:	48 8b 05 c2 2a 00 00 	mov    rax,QWORD PTR [rip+0x2ac2]        # 6318 <rdx>
    3856:	48 83 ea 10          	sub    rdx,0x10
    385a:	48 89 10             	mov    QWORD PTR [rax],rdx
    385d:	48 8b 05 5c 2c 00 00 	mov    rax,QWORD PTR [rip+0x2c5c]        # 64c0 <s_rodata>
    3864:	48 8d 90 a8 01 00 00 	lea    rdx,[rax+0x1a8]
    386b:	48 8b 05 7e 2a 00 00 	mov    rax,QWORD PTR [rip+0x2a7e]        # 62f0 <rcx>
    3872:	48 89 10             	mov    QWORD PTR [rax],rdx
    3875:	48 8b 15 74 2a 00 00 	mov    rdx,QWORD PTR [rip+0x2a74]        # 62f0 <rcx>
    387c:	48 8b 05 bd 2a 00 00 	mov    rax,QWORD PTR [rip+0x2abd]        # 6340 <rsi>
    3883:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3886:	48 89 10             	mov    QWORD PTR [rax],rdx
    3889:	48 8b 15 10 2a 00 00 	mov    rdx,QWORD PTR [rip+0x2a10]        # 62a0 <rax>
    3890:	48 8b 05 c9 2a 00 00 	mov    rax,QWORD PTR [rip+0x2ac9]        # 6360 <rdi>
    3897:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    389a:	48 89 10             	mov    QWORD PTR [rax],rdx
    389d:	48 8b 05 04 2a 00 00 	mov    rax,QWORD PTR [rip+0x2a04]        # 62a8 <eax>
    38a4:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    38ab:	48 8b 05 66 2a 00 00 	mov    rax,QWORD PTR [rip+0x2a66]        # 6318 <rdx>
    38b2:	48 8b 00             	mov    rax,QWORD PTR [rax]
    38b5:	48 8b 15 84 2a 00 00 	mov    rdx,QWORD PTR [rip+0x2a84]        # 6340 <rsi>
    38bc:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    38bf:	48 89 d6             	mov    rsi,rdx
    38c2:	48 8b 15 97 2a 00 00 	mov    rdx,QWORD PTR [rip+0x2a97]        # 6360 <rdi>
    38c9:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    38cc:	48 89 d1             	mov    rcx,rdx
    38cf:	48 89 c2             	mov    rdx,rax
    38d2:	48 89 cf             	mov    rdi,rcx
    38d5:	b8 00 00 00 00       	mov    eax,0x0
    38da:	e8 11 d8 ff ff       	call   10f0 <__isoc99_sscanf@plt>
    38df:	89 c2                	mov    edx,eax
    38e1:	48 8b 05 c0 29 00 00 	mov    rax,QWORD PTR [rip+0x29c0]        # 62a8 <eax>
    38e8:	89 d2                	mov    edx,edx
    38ea:	48 89 10             	mov    QWORD PTR [rax],rdx
    38ed:	48 8b 05 b4 29 00 00 	mov    rax,QWORD PTR [rip+0x29b4]        # 62a8 <eax>
    38f4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    38f7:	48 83 f8 01          	cmp    rax,0x1
    38fb:	0f 84 04 01 00 00    	je     3a05 <main_+0x390>
    3901:	48 8b 05 78 2a 00 00 	mov    rax,QWORD PTR [rip+0x2a78]        # 6380 <rbp>
    3908:	48 8b 00             	mov    rax,QWORD PTR [rax]
    390b:	48 83 e8 20          	sub    rax,0x20
    390f:	48 89 c2             	mov    rdx,rax
    3912:	48 8b 05 87 29 00 00 	mov    rax,QWORD PTR [rip+0x2987]        # 62a0 <rax>
    3919:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    391c:	48 89 10             	mov    QWORD PTR [rax],rdx
    391f:	48 8b 05 7a 29 00 00 	mov    rax,QWORD PTR [rip+0x297a]        # 62a0 <rax>
    3926:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    3929:	48 8b 05 70 29 00 00 	mov    rax,QWORD PTR [rip+0x2970]        # 62a0 <rax>
    3930:	48 83 c2 08          	add    rdx,0x8
    3934:	48 89 10             	mov    QWORD PTR [rax],rdx
    3937:	48 8b 05 62 29 00 00 	mov    rax,QWORD PTR [rip+0x2962]        # 62a0 <rax>
    393e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3941:	48 89 c2             	mov    rdx,rax
    3944:	48 8b 05 cd 29 00 00 	mov    rax,QWORD PTR [rip+0x29cd]        # 6318 <rdx>
    394b:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    394e:	48 89 10             	mov    QWORD PTR [rax],rdx
    3951:	48 8b 15 28 29 00 00 	mov    rdx,QWORD PTR [rip+0x2928]        # 6280 <stderr@GLIBC_2.2.5>
    3958:	48 8b 05 41 29 00 00 	mov    rax,QWORD PTR [rip+0x2941]        # 62a0 <rax>
    395f:	48 89 10             	mov    QWORD PTR [rax],rdx
    3962:	48 8b 05 57 2b 00 00 	mov    rax,QWORD PTR [rip+0x2b57]        # 64c0 <s_rodata>
    3969:	48 8d 90 b0 01 00 00 	lea    rdx,[rax+0x1b0]
    3970:	48 8b 05 79 29 00 00 	mov    rax,QWORD PTR [rip+0x2979]        # 62f0 <rcx>
    3977:	48 89 10             	mov    QWORD PTR [rax],rdx
    397a:	48 8b 15 6f 29 00 00 	mov    rdx,QWORD PTR [rip+0x296f]        # 62f0 <rcx>
    3981:	48 8b 05 b8 29 00 00 	mov    rax,QWORD PTR [rip+0x29b8]        # 6340 <rsi>
    3988:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    398b:	48 89 10             	mov    QWORD PTR [rax],rdx
    398e:	48 8b 15 0b 29 00 00 	mov    rdx,QWORD PTR [rip+0x290b]        # 62a0 <rax>
    3995:	48 8b 05 c4 29 00 00 	mov    rax,QWORD PTR [rip+0x29c4]        # 6360 <rdi>
    399c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    399f:	48 89 10             	mov    QWORD PTR [rax],rdx
    39a2:	48 8b 05 ff 28 00 00 	mov    rax,QWORD PTR [rip+0x28ff]        # 62a8 <eax>
    39a9:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    39b0:	48 8b 05 61 29 00 00 	mov    rax,QWORD PTR [rip+0x2961]        # 6318 <rdx>
    39b7:	48 8b 00             	mov    rax,QWORD PTR [rax]
    39ba:	48 8b 15 7f 29 00 00 	mov    rdx,QWORD PTR [rip+0x297f]        # 6340 <rsi>
    39c1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    39c4:	48 89 d6             	mov    rsi,rdx
    39c7:	48 8b 15 92 29 00 00 	mov    rdx,QWORD PTR [rip+0x2992]        # 6360 <rdi>
    39ce:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    39d1:	48 89 d1             	mov    rcx,rdx
    39d4:	48 89 c2             	mov    rdx,rax
    39d7:	48 89 cf             	mov    rdi,rcx
    39da:	b8 00 00 00 00       	mov    eax,0x0
    39df:	e8 fc d6 ff ff       	call   10e0 <fprintf@plt>
    39e4:	89 c2                	mov    edx,eax
    39e6:	48 8b 05 bb 28 00 00 	mov    rax,QWORD PTR [rip+0x28bb]        # 62a8 <eax>
    39ed:	89 d2                	mov    edx,edx
    39ef:	48 89 10             	mov    QWORD PTR [rax],rdx
    39f2:	48 8b 05 af 28 00 00 	mov    rax,QWORD PTR [rip+0x28af]        # 62a8 <eax>
    39f9:	48 c7 00 02 00 00 00 	mov    QWORD PTR [rax],0x2
    3a00:	e9 a7 04 00 00       	jmp    3eac <main_+0x837>
    3a05:	90                   	nop
    3a06:	48 8b 05 73 29 00 00 	mov    rax,QWORD PTR [rip+0x2973]        # 6380 <rbp>
    3a0d:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3a10:	48 83 e8 10          	sub    rax,0x10
    3a14:	48 89 c2             	mov    rdx,rax
    3a17:	48 8b 05 82 28 00 00 	mov    rax,QWORD PTR [rip+0x2882]        # 62a0 <rax>
    3a1e:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3a21:	48 89 10             	mov    QWORD PTR [rax],rdx
    3a24:	48 8b 05 75 28 00 00 	mov    rax,QWORD PTR [rip+0x2875]        # 62a0 <rax>
    3a2b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3a2e:	48 83 f8 5d          	cmp    rax,0x5d
    3a32:	0f 86 d2 00 00 00    	jbe    3b0a <main_+0x495>
    3a38:	48 8b 05 41 29 00 00 	mov    rax,QWORD PTR [rip+0x2941]        # 6380 <rbp>
    3a3f:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3a42:	48 83 e8 10          	sub    rax,0x10
    3a46:	48 89 c2             	mov    rdx,rax
    3a49:	48 8b 05 c8 28 00 00 	mov    rax,QWORD PTR [rip+0x28c8]        # 6318 <rdx>
    3a50:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3a53:	48 89 10             	mov    QWORD PTR [rax],rdx
    3a56:	48 8b 15 23 28 00 00 	mov    rdx,QWORD PTR [rip+0x2823]        # 6280 <stderr@GLIBC_2.2.5>
    3a5d:	48 8b 05 3c 28 00 00 	mov    rax,QWORD PTR [rip+0x283c]        # 62a0 <rax>
    3a64:	48 89 10             	mov    QWORD PTR [rax],rdx
    3a67:	48 8b 05 52 2a 00 00 	mov    rax,QWORD PTR [rip+0x2a52]        # 64c0 <s_rodata>
    3a6e:	48 8d 90 d0 01 00 00 	lea    rdx,[rax+0x1d0]
    3a75:	48 8b 05 74 28 00 00 	mov    rax,QWORD PTR [rip+0x2874]        # 62f0 <rcx>
    3a7c:	48 89 10             	mov    QWORD PTR [rax],rdx
    3a7f:	48 8b 15 6a 28 00 00 	mov    rdx,QWORD PTR [rip+0x286a]        # 62f0 <rcx>
    3a86:	48 8b 05 b3 28 00 00 	mov    rax,QWORD PTR [rip+0x28b3]        # 6340 <rsi>
    3a8d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3a90:	48 89 10             	mov    QWORD PTR [rax],rdx
    3a93:	48 8b 15 06 28 00 00 	mov    rdx,QWORD PTR [rip+0x2806]        # 62a0 <rax>
    3a9a:	48 8b 05 bf 28 00 00 	mov    rax,QWORD PTR [rip+0x28bf]        # 6360 <rdi>
    3aa1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3aa4:	48 89 10             	mov    QWORD PTR [rax],rdx
    3aa7:	48 8b 05 fa 27 00 00 	mov    rax,QWORD PTR [rip+0x27fa]        # 62a8 <eax>
    3aae:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    3ab5:	48 8b 05 5c 28 00 00 	mov    rax,QWORD PTR [rip+0x285c]        # 6318 <rdx>
    3abc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3abf:	48 8b 15 7a 28 00 00 	mov    rdx,QWORD PTR [rip+0x287a]        # 6340 <rsi>
    3ac6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3ac9:	48 89 d6             	mov    rsi,rdx
    3acc:	48 8b 15 8d 28 00 00 	mov    rdx,QWORD PTR [rip+0x288d]        # 6360 <rdi>
    3ad3:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3ad6:	48 89 d1             	mov    rcx,rdx
    3ad9:	48 89 c2             	mov    rdx,rax
    3adc:	48 89 cf             	mov    rdi,rcx
    3adf:	b8 00 00 00 00       	mov    eax,0x0
    3ae4:	e8 f7 d5 ff ff       	call   10e0 <fprintf@plt>
    3ae9:	89 c2                	mov    edx,eax
    3aeb:	48 8b 05 b6 27 00 00 	mov    rax,QWORD PTR [rip+0x27b6]        # 62a8 <eax>
    3af2:	89 d2                	mov    edx,edx
    3af4:	48 89 10             	mov    QWORD PTR [rax],rdx
    3af7:	48 8b 05 aa 27 00 00 	mov    rax,QWORD PTR [rip+0x27aa]        # 62a8 <eax>
    3afe:	48 c7 00 03 00 00 00 	mov    QWORD PTR [rax],0x3
    3b05:	e9 a2 03 00 00       	jmp    3eac <main_+0x837>
    3b0a:	90                   	nop
    3b0b:	48 8b 05 6e 28 00 00 	mov    rax,QWORD PTR [rip+0x286e]        # 6380 <rbp>
    3b12:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3b15:	48 83 e8 10          	sub    rax,0x10
    3b19:	48 89 c2             	mov    rdx,rax
    3b1c:	48 8b 05 7d 27 00 00 	mov    rax,QWORD PTR [rip+0x277d]        # 62a0 <rax>
    3b23:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3b26:	48 89 10             	mov    QWORD PTR [rax],rdx
    3b29:	48 8b 15 70 27 00 00 	mov    rdx,QWORD PTR [rip+0x2770]        # 62a0 <rax>
    3b30:	48 8b 05 29 28 00 00 	mov    rax,QWORD PTR [rip+0x2829]        # 6360 <rdi>
    3b37:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3b3a:	48 89 10             	mov    QWORD PTR [rax],rdx
    3b3d:	e8 60 db ff ff       	call   16a2 <fib_rec>
    3b42:	48 8b 15 57 27 00 00 	mov    rdx,QWORD PTR [rip+0x2757]        # 62a0 <rax>
    3b49:	48 8b 05 f0 27 00 00 	mov    rax,QWORD PTR [rip+0x27f0]        # 6340 <rsi>
    3b50:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3b53:	48 89 10             	mov    QWORD PTR [rax],rdx
    3b56:	48 8b 05 63 29 00 00 	mov    rax,QWORD PTR [rip+0x2963]        # 64c0 <s_rodata>
    3b5d:	48 8d 90 e9 01 00 00 	lea    rdx,[rax+0x1e9]
    3b64:	48 8b 05 35 27 00 00 	mov    rax,QWORD PTR [rip+0x2735]        # 62a0 <rax>
    3b6b:	48 89 10             	mov    QWORD PTR [rax],rdx
    3b6e:	48 8b 15 2b 27 00 00 	mov    rdx,QWORD PTR [rip+0x272b]        # 62a0 <rax>
    3b75:	48 8b 05 e4 27 00 00 	mov    rax,QWORD PTR [rip+0x27e4]        # 6360 <rdi>
    3b7c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3b7f:	48 89 10             	mov    QWORD PTR [rax],rdx
    3b82:	48 8b 05 1f 27 00 00 	mov    rax,QWORD PTR [rip+0x271f]        # 62a8 <eax>
    3b89:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    3b90:	48 8b 05 a9 27 00 00 	mov    rax,QWORD PTR [rip+0x27a9]        # 6340 <rsi>
    3b97:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3b9a:	48 8b 15 bf 27 00 00 	mov    rdx,QWORD PTR [rip+0x27bf]        # 6360 <rdi>
    3ba1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3ba4:	48 89 c6             	mov    rsi,rax
    3ba7:	48 89 d7             	mov    rdi,rdx
    3baa:	b8 00 00 00 00       	mov    eax,0x0
    3baf:	e8 0c d5 ff ff       	call   10c0 <printf@plt>
    3bb4:	89 c2                	mov    edx,eax
    3bb6:	48 8b 05 eb 26 00 00 	mov    rax,QWORD PTR [rip+0x26eb]        # 62a8 <eax>
    3bbd:	89 d2                	mov    edx,edx
    3bbf:	48 89 10             	mov    QWORD PTR [rax],rdx
    3bc2:	48 8b 05 b7 27 00 00 	mov    rax,QWORD PTR [rip+0x27b7]        # 6380 <rbp>
    3bc9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3bcc:	48 83 e8 10          	sub    rax,0x10
    3bd0:	48 89 c2             	mov    rdx,rax
    3bd3:	48 8b 05 c6 26 00 00 	mov    rax,QWORD PTR [rip+0x26c6]        # 62a0 <rax>
    3bda:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3bdd:	48 89 10             	mov    QWORD PTR [rax],rdx
    3be0:	48 8b 15 b9 26 00 00 	mov    rdx,QWORD PTR [rip+0x26b9]        # 62a0 <rax>
    3be7:	48 8b 05 72 27 00 00 	mov    rax,QWORD PTR [rip+0x2772]        # 6360 <rdi>
    3bee:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3bf1:	48 89 10             	mov    QWORD PTR [rax],rdx
    3bf4:	e8 78 dc ff ff       	call   1871 <fib_tbl_static>
    3bf9:	48 8b 15 a0 26 00 00 	mov    rdx,QWORD PTR [rip+0x26a0]        # 62a0 <rax>
    3c00:	48 8b 05 39 27 00 00 	mov    rax,QWORD PTR [rip+0x2739]        # 6340 <rsi>
    3c07:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3c0a:	48 89 10             	mov    QWORD PTR [rax],rdx
    3c0d:	48 8b 05 ac 28 00 00 	mov    rax,QWORD PTR [rip+0x28ac]        # 64c0 <s_rodata>
    3c14:	48 8d 90 f8 01 00 00 	lea    rdx,[rax+0x1f8]
    3c1b:	48 8b 05 7e 26 00 00 	mov    rax,QWORD PTR [rip+0x267e]        # 62a0 <rax>
    3c22:	48 89 10             	mov    QWORD PTR [rax],rdx
    3c25:	48 8b 15 74 26 00 00 	mov    rdx,QWORD PTR [rip+0x2674]        # 62a0 <rax>
    3c2c:	48 8b 05 2d 27 00 00 	mov    rax,QWORD PTR [rip+0x272d]        # 6360 <rdi>
    3c33:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3c36:	48 89 10             	mov    QWORD PTR [rax],rdx
    3c39:	48 8b 05 68 26 00 00 	mov    rax,QWORD PTR [rip+0x2668]        # 62a8 <eax>
    3c40:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    3c47:	48 8b 05 f2 26 00 00 	mov    rax,QWORD PTR [rip+0x26f2]        # 6340 <rsi>
    3c4e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3c51:	48 8b 15 08 27 00 00 	mov    rdx,QWORD PTR [rip+0x2708]        # 6360 <rdi>
    3c58:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3c5b:	48 89 c6             	mov    rsi,rax
    3c5e:	48 89 d7             	mov    rdi,rdx
    3c61:	b8 00 00 00 00       	mov    eax,0x0
    3c66:	e8 55 d4 ff ff       	call   10c0 <printf@plt>
    3c6b:	89 c2                	mov    edx,eax
    3c6d:	48 8b 05 34 26 00 00 	mov    rax,QWORD PTR [rip+0x2634]        # 62a8 <eax>
    3c74:	89 d2                	mov    edx,edx
    3c76:	48 89 10             	mov    QWORD PTR [rax],rdx
    3c79:	48 8b 05 00 27 00 00 	mov    rax,QWORD PTR [rip+0x2700]        # 6380 <rbp>
    3c80:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3c83:	48 83 e8 10          	sub    rax,0x10
    3c87:	48 89 c2             	mov    rdx,rax
    3c8a:	48 8b 05 0f 26 00 00 	mov    rax,QWORD PTR [rip+0x260f]        # 62a0 <rax>
    3c91:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3c94:	48 89 10             	mov    QWORD PTR [rax],rdx
    3c97:	48 8b 15 02 26 00 00 	mov    rdx,QWORD PTR [rip+0x2602]        # 62a0 <rax>
    3c9e:	48 8b 05 bb 26 00 00 	mov    rax,QWORD PTR [rip+0x26bb]        # 6360 <rdi>
    3ca5:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3ca8:	48 89 10             	mov    QWORD PTR [rax],rdx
    3cab:	e8 a7 e3 ff ff       	call   2057 <fib_tbl_dyn>
    3cb0:	48 8b 15 e9 25 00 00 	mov    rdx,QWORD PTR [rip+0x25e9]        # 62a0 <rax>
    3cb7:	48 8b 05 82 26 00 00 	mov    rax,QWORD PTR [rip+0x2682]        # 6340 <rsi>
    3cbe:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3cc1:	48 89 10             	mov    QWORD PTR [rax],rdx
    3cc4:	48 8b 05 f5 27 00 00 	mov    rax,QWORD PTR [rip+0x27f5]        # 64c0 <s_rodata>
    3ccb:	48 8d 90 07 02 00 00 	lea    rdx,[rax+0x207]
    3cd2:	48 8b 05 c7 25 00 00 	mov    rax,QWORD PTR [rip+0x25c7]        # 62a0 <rax>
    3cd9:	48 89 10             	mov    QWORD PTR [rax],rdx
    3cdc:	48 8b 15 bd 25 00 00 	mov    rdx,QWORD PTR [rip+0x25bd]        # 62a0 <rax>
    3ce3:	48 8b 05 76 26 00 00 	mov    rax,QWORD PTR [rip+0x2676]        # 6360 <rdi>
    3cea:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3ced:	48 89 10             	mov    QWORD PTR [rax],rdx
    3cf0:	48 8b 05 b1 25 00 00 	mov    rax,QWORD PTR [rip+0x25b1]        # 62a8 <eax>
    3cf7:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    3cfe:	48 8b 05 3b 26 00 00 	mov    rax,QWORD PTR [rip+0x263b]        # 6340 <rsi>
    3d05:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3d08:	48 8b 15 51 26 00 00 	mov    rdx,QWORD PTR [rip+0x2651]        # 6360 <rdi>
    3d0f:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3d12:	48 89 c6             	mov    rsi,rax
    3d15:	48 89 d7             	mov    rdi,rdx
    3d18:	b8 00 00 00 00       	mov    eax,0x0
    3d1d:	e8 9e d3 ff ff       	call   10c0 <printf@plt>
    3d22:	89 c2                	mov    edx,eax
    3d24:	48 8b 05 7d 25 00 00 	mov    rax,QWORD PTR [rip+0x257d]        # 62a8 <eax>
    3d2b:	89 d2                	mov    edx,edx
    3d2d:	48 89 10             	mov    QWORD PTR [rax],rdx
    3d30:	48 8b 05 49 26 00 00 	mov    rax,QWORD PTR [rip+0x2649]        # 6380 <rbp>
    3d37:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3d3a:	48 83 e8 10          	sub    rax,0x10
    3d3e:	48 89 c2             	mov    rdx,rax
    3d41:	48 8b 05 58 25 00 00 	mov    rax,QWORD PTR [rip+0x2558]        # 62a0 <rax>
    3d48:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3d4b:	48 89 10             	mov    QWORD PTR [rax],rdx
    3d4e:	48 8b 15 4b 25 00 00 	mov    rdx,QWORD PTR [rip+0x254b]        # 62a0 <rax>
    3d55:	48 8b 05 04 26 00 00 	mov    rax,QWORD PTR [rip+0x2604]        # 6360 <rdi>
    3d5c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3d5f:	48 89 10             	mov    QWORD PTR [rax],rdx
    3d62:	e8 ec e5 ff ff       	call   2353 <fib_loop>
    3d67:	48 8b 15 32 25 00 00 	mov    rdx,QWORD PTR [rip+0x2532]        # 62a0 <rax>
    3d6e:	48 8b 05 cb 25 00 00 	mov    rax,QWORD PTR [rip+0x25cb]        # 6340 <rsi>
    3d75:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3d78:	48 89 10             	mov    QWORD PTR [rax],rdx
    3d7b:	48 8b 05 3e 27 00 00 	mov    rax,QWORD PTR [rip+0x273e]        # 64c0 <s_rodata>
    3d82:	48 8d 90 16 02 00 00 	lea    rdx,[rax+0x216]
    3d89:	48 8b 05 10 25 00 00 	mov    rax,QWORD PTR [rip+0x2510]        # 62a0 <rax>
    3d90:	48 89 10             	mov    QWORD PTR [rax],rdx
    3d93:	48 8b 15 06 25 00 00 	mov    rdx,QWORD PTR [rip+0x2506]        # 62a0 <rax>
    3d9a:	48 8b 05 bf 25 00 00 	mov    rax,QWORD PTR [rip+0x25bf]        # 6360 <rdi>
    3da1:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3da4:	48 89 10             	mov    QWORD PTR [rax],rdx
    3da7:	48 8b 05 fa 24 00 00 	mov    rax,QWORD PTR [rip+0x24fa]        # 62a8 <eax>
    3dae:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    3db5:	48 8b 05 84 25 00 00 	mov    rax,QWORD PTR [rip+0x2584]        # 6340 <rsi>
    3dbc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3dbf:	48 8b 15 9a 25 00 00 	mov    rdx,QWORD PTR [rip+0x259a]        # 6360 <rdi>
    3dc6:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3dc9:	48 89 c6             	mov    rsi,rax
    3dcc:	48 89 d7             	mov    rdi,rdx
    3dcf:	b8 00 00 00 00       	mov    eax,0x0
    3dd4:	e8 e7 d2 ff ff       	call   10c0 <printf@plt>
    3dd9:	89 c2                	mov    edx,eax
    3ddb:	48 8b 05 c6 24 00 00 	mov    rax,QWORD PTR [rip+0x24c6]        # 62a8 <eax>
    3de2:	89 d2                	mov    edx,edx
    3de4:	48 89 10             	mov    QWORD PTR [rax],rdx
    3de7:	48 8b 05 92 25 00 00 	mov    rax,QWORD PTR [rip+0x2592]        # 6380 <rbp>
    3dee:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3df1:	48 83 e8 10          	sub    rax,0x10
    3df5:	48 89 c2             	mov    rdx,rax
    3df8:	48 8b 05 a1 24 00 00 	mov    rax,QWORD PTR [rip+0x24a1]        # 62a0 <rax>
    3dff:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3e02:	48 89 10             	mov    QWORD PTR [rax],rdx
    3e05:	48 8b 15 94 24 00 00 	mov    rdx,QWORD PTR [rip+0x2494]        # 62a0 <rax>
    3e0c:	48 8b 05 4d 25 00 00 	mov    rax,QWORD PTR [rip+0x254d]        # 6360 <rdi>
    3e13:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3e16:	48 89 10             	mov    QWORD PTR [rax],rdx
    3e19:	e8 00 e8 ff ff       	call   261e <fib_switch>
    3e1e:	48 8b 15 7b 24 00 00 	mov    rdx,QWORD PTR [rip+0x247b]        # 62a0 <rax>
    3e25:	48 8b 05 14 25 00 00 	mov    rax,QWORD PTR [rip+0x2514]        # 6340 <rsi>
    3e2c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3e2f:	48 89 10             	mov    QWORD PTR [rax],rdx
    3e32:	48 8b 05 87 26 00 00 	mov    rax,QWORD PTR [rip+0x2687]        # 64c0 <s_rodata>
    3e39:	48 8d 90 25 02 00 00 	lea    rdx,[rax+0x225]
    3e40:	48 8b 05 59 24 00 00 	mov    rax,QWORD PTR [rip+0x2459]        # 62a0 <rax>
    3e47:	48 89 10             	mov    QWORD PTR [rax],rdx
    3e4a:	48 8b 15 4f 24 00 00 	mov    rdx,QWORD PTR [rip+0x244f]        # 62a0 <rax>
    3e51:	48 8b 05 08 25 00 00 	mov    rax,QWORD PTR [rip+0x2508]        # 6360 <rdi>
    3e58:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3e5b:	48 89 10             	mov    QWORD PTR [rax],rdx
    3e5e:	48 8b 05 43 24 00 00 	mov    rax,QWORD PTR [rip+0x2443]        # 62a8 <eax>
    3e65:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    3e6c:	48 8b 05 cd 24 00 00 	mov    rax,QWORD PTR [rip+0x24cd]        # 6340 <rsi>
    3e73:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3e76:	48 8b 15 e3 24 00 00 	mov    rdx,QWORD PTR [rip+0x24e3]        # 6360 <rdi>
    3e7d:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3e80:	48 89 c6             	mov    rsi,rax
    3e83:	48 89 d7             	mov    rdi,rdx
    3e86:	b8 00 00 00 00       	mov    eax,0x0
    3e8b:	e8 30 d2 ff ff       	call   10c0 <printf@plt>
    3e90:	89 c2                	mov    edx,eax
    3e92:	48 8b 05 0f 24 00 00 	mov    rax,QWORD PTR [rip+0x240f]        # 62a8 <eax>
    3e99:	89 d2                	mov    edx,edx
    3e9b:	48 89 10             	mov    QWORD PTR [rax],rdx
    3e9e:	48 8b 05 03 24 00 00 	mov    rax,QWORD PTR [rip+0x2403]        # 62a8 <eax>
    3ea5:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    3eac:	48 8b 15 cd 24 00 00 	mov    rdx,QWORD PTR [rip+0x24cd]        # 6380 <rbp>
    3eb3:	48 8b 05 e6 24 00 00 	mov    rax,QWORD PTR [rip+0x24e6]        # 63a0 <rsp>
    3eba:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    3ebd:	48 89 10             	mov    QWORD PTR [rax],rdx
    3ec0:	48 8b 1d b9 24 00 00 	mov    rbx,QWORD PTR [rip+0x24b9]        # 6380 <rbp>
    3ec7:	e8 6e d7 ff ff       	call   163a <pop_u64>
    3ecc:	48 89 03             	mov    QWORD PTR [rbx],rax
    3ecf:	90                   	nop
    3ed0:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    3ed4:	c9                   	leave  
    3ed5:	c3                   	ret    

0000000000003ed6 <init>:
    3ed6:	f3 0f 1e fa          	endbr64 
    3eda:	55                   	push   rbp
    3edb:	48 89 e5             	mov    rbp,rsp
    3ede:	e8 26 d3 ff ff       	call   1209 <init_regs>
    3ee3:	e8 e4 d6 ff ff       	call   15cc <init_stack>
    3ee8:	e8 80 d7 ff ff       	call   166d <init_sections>
    3eed:	90                   	nop
    3eee:	5d                   	pop    rbp
    3eef:	c3                   	ret    

0000000000003ef0 <main>:
    3ef0:	f3 0f 1e fa          	endbr64 
    3ef4:	55                   	push   rbp
    3ef5:	48 89 e5             	mov    rbp,rsp
    3ef8:	48 83 ec 10          	sub    rsp,0x10
    3efc:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    3eff:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    3f03:	e8 ce ff ff ff       	call   3ed6 <init>
    3f08:	48 8b 05 59 24 00 00 	mov    rax,QWORD PTR [rip+0x2459]        # 6368 <edi>
    3f0f:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
    3f12:	48 63 d2             	movsxd rdx,edx
    3f15:	48 89 10             	mov    QWORD PTR [rax],rdx
    3f18:	48 8b 05 21 24 00 00 	mov    rax,QWORD PTR [rip+0x2421]        # 6340 <rsi>
    3f1f:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    3f23:	48 89 10             	mov    QWORD PTR [rax],rdx
    3f26:	e8 4a f7 ff ff       	call   3675 <main_>
    3f2b:	48 8b 05 76 23 00 00 	mov    rax,QWORD PTR [rip+0x2376]        # 62a8 <eax>
    3f32:	48 8b 00             	mov    rax,QWORD PTR [rax]
    3f35:	c9                   	leave  
    3f36:	c3                   	ret    

Disassembly of section .fini:

0000000000003f38 <_fini>:
    3f38:	f3 0f 1e fa          	endbr64 
    3f3c:	48 83 ec 08          	sub    rsp,0x8
    3f40:	48 83 c4 08          	add    rsp,0x8
    3f44:	c3                   	ret    
