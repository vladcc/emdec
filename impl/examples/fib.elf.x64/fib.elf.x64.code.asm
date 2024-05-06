
fib.elf.x64:     file format elf64-x86-64


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

00000000000010e0 <printf@plt>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	f2 ff 25 bd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ebd]        # 3fa8 <printf@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010f0 <calloc@plt>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	f2 ff 25 b5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2eb5]        # 3fb0 <calloc@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001100 <fprintf@plt>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	f2 ff 25 ad 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ead]        # 3fb8 <fprintf@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001110 <__isoc99_sscanf@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	f2 ff 25 a5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ea5]        # 3fc0 <__isoc99_sscanf@GLIBC_2.7>
    111b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001120 <exit@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	f2 ff 25 9d 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e9d]        # 3fc8 <exit@GLIBC_2.2.5>
    112b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001130 <fwrite@plt>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	f2 ff 25 95 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e95]        # 3fd0 <fwrite@GLIBC_2.2.5>
    113b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001140 <_start>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	31 ed                	xor    ebp,ebp
    1146:	49 89 d1             	mov    r9,rdx
    1149:	5e                   	pop    rsi
    114a:	48 89 e2             	mov    rdx,rsp
    114d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1151:	50                   	push   rax
    1152:	54                   	push   rsp
    1153:	45 31 c0             	xor    r8d,r8d
    1156:	31 c9                	xor    ecx,ecx
    1158:	48 8d 3d 7d 09 00 00 	lea    rdi,[rip+0x97d]        # 1adc <main>
    115f:	ff 15 73 2e 00 00    	call   QWORD PTR [rip+0x2e73]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1165:	f4                   	hlt
    1166:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    116d:	00 00 00

0000000000001170 <deregister_tm_clones>:
    1170:	48 8d 3d 99 2e 00 00 	lea    rdi,[rip+0x2e99]        # 4010 <__TMC_END__>
    1177:	48 8d 05 92 2e 00 00 	lea    rax,[rip+0x2e92]        # 4010 <__TMC_END__>
    117e:	48 39 f8             	cmp    rax,rdi
    1181:	74 15                	je     1198 <deregister_tm_clones+0x28>
    1183:	48 8b 05 56 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e56]        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    118a:	48 85 c0             	test   rax,rax
    118d:	74 09                	je     1198 <deregister_tm_clones+0x28>
    118f:	ff e0                	jmp    rax
    1191:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1198:	c3                   	ret
    1199:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011a0 <register_tm_clones>:
    11a0:	48 8d 3d 69 2e 00 00 	lea    rdi,[rip+0x2e69]        # 4010 <__TMC_END__>
    11a7:	48 8d 35 62 2e 00 00 	lea    rsi,[rip+0x2e62]        # 4010 <__TMC_END__>
    11ae:	48 29 fe             	sub    rsi,rdi
    11b1:	48 89 f0             	mov    rax,rsi
    11b4:	48 c1 ee 3f          	shr    rsi,0x3f
    11b8:	48 c1 f8 03          	sar    rax,0x3
    11bc:	48 01 c6             	add    rsi,rax
    11bf:	48 d1 fe             	sar    rsi,1
    11c2:	74 14                	je     11d8 <register_tm_clones+0x38>
    11c4:	48 8b 05 25 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e25]        # 3ff0 <_ITM_registerTMCloneTable@Base>
    11cb:	48 85 c0             	test   rax,rax
    11ce:	74 08                	je     11d8 <register_tm_clones+0x38>
    11d0:	ff e0                	jmp    rax
    11d2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    11d8:	c3                   	ret
    11d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011e0 <__do_global_dtors_aux>:
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	80 3d 3d 2e 00 00 00 	cmp    BYTE PTR [rip+0x2e3d],0x0        # 4028 <completed.0>
    11eb:	75 2b                	jne    1218 <__do_global_dtors_aux+0x38>
    11ed:	55                   	push   rbp
    11ee:	48 83 3d 02 2e 00 00 	cmp    QWORD PTR [rip+0x2e02],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11f5:	00
    11f6:	48 89 e5             	mov    rbp,rsp
    11f9:	74 0c                	je     1207 <__do_global_dtors_aux+0x27>
    11fb:	48 8b 3d 06 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2e06]        # 4008 <__dso_handle>
    1202:	e8 a9 fe ff ff       	call   10b0 <__cxa_finalize@plt>
    1207:	e8 64 ff ff ff       	call   1170 <deregister_tm_clones>
    120c:	c6 05 15 2e 00 00 01 	mov    BYTE PTR [rip+0x2e15],0x1        # 4028 <completed.0>
    1213:	5d                   	pop    rbp
    1214:	c3                   	ret
    1215:	0f 1f 00             	nop    DWORD PTR [rax]
    1218:	c3                   	ret
    1219:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001220 <frame_dummy>:
    1220:	f3 0f 1e fa          	endbr64
    1224:	e9 77 ff ff ff       	jmp    11a0 <register_tm_clones>

0000000000001229 <fib_rec>:
    1229:	f3 0f 1e fa          	endbr64
    122d:	55                   	push   rbp
    122e:	48 89 e5             	mov    rbp,rsp
    1231:	53                   	push   rbx
    1232:	48 83 ec 18          	sub    rsp,0x18
    1236:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    123a:	48 83 7d e8 01       	cmp    QWORD PTR [rbp-0x18],0x1
    123f:	76 28                	jbe    1269 <fib_rec+0x40>
    1241:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1245:	48 83 e8 01          	sub    rax,0x1
    1249:	48 89 c7             	mov    rdi,rax
    124c:	e8 d8 ff ff ff       	call   1229 <fib_rec>
    1251:	48 89 c3             	mov    rbx,rax
    1254:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1258:	48 83 e8 02          	sub    rax,0x2
    125c:	48 89 c7             	mov    rdi,rax
    125f:	e8 c5 ff ff ff       	call   1229 <fib_rec>
    1264:	48 01 d8             	add    rax,rbx
    1267:	eb 04                	jmp    126d <fib_rec+0x44>
    1269:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    126d:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    1271:	c9                   	leave
    1272:	c3                   	ret

0000000000001273 <fib_tbl_static>:
    1273:	f3 0f 1e fa          	endbr64
    1277:	55                   	push   rbp
    1278:	48 89 e5             	mov    rbp,rsp
    127b:	53                   	push   rbx
    127c:	48 83 ec 18          	sub    rsp,0x18
    1280:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    1284:	48 83 7d e8 01       	cmp    QWORD PTR [rbp-0x18],0x1
    1289:	77 09                	ja     1294 <fib_tbl_static+0x21>
    128b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    128f:	e9 8a 00 00 00       	jmp    131e <fib_tbl_static+0xab>
    1294:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1298:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
    129f:	00
    12a0:	48 8d 05 99 2d 00 00 	lea    rax,[rip+0x2d99]        # 4040 <cache.0>
    12a7:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
    12ab:	48 85 c0             	test   rax,rax
    12ae:	74 19                	je     12c9 <fib_tbl_static+0x56>
    12b0:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    12b4:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
    12bb:	00
    12bc:	48 8d 05 7d 2d 00 00 	lea    rax,[rip+0x2d7d]        # 4040 <cache.0>
    12c3:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
    12c7:	eb 55                	jmp    131e <fib_tbl_static+0xab>
    12c9:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    12cd:	48 83 e8 01          	sub    rax,0x1
    12d1:	48 89 c7             	mov    rdi,rax
    12d4:	e8 9a ff ff ff       	call   1273 <fib_tbl_static>
    12d9:	48 89 c3             	mov    rbx,rax
    12dc:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    12e0:	48 83 e8 02          	sub    rax,0x2
    12e4:	48 89 c7             	mov    rdi,rax
    12e7:	e8 87 ff ff ff       	call   1273 <fib_tbl_static>
    12ec:	48 8d 0c 03          	lea    rcx,[rbx+rax*1]
    12f0:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    12f4:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
    12fb:	00
    12fc:	48 8d 05 3d 2d 00 00 	lea    rax,[rip+0x2d3d]        # 4040 <cache.0>
    1303:	48 89 0c 02          	mov    QWORD PTR [rdx+rax*1],rcx
    1307:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    130b:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
    1312:	00
    1313:	48 8d 05 26 2d 00 00 	lea    rax,[rip+0x2d26]        # 4040 <cache.0>
    131a:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
    131e:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    1322:	c9                   	leave
    1323:	c3                   	ret

0000000000001324 <fib_tbl_dyn_>:
    1324:	f3 0f 1e fa          	endbr64
    1328:	55                   	push   rbp
    1329:	48 89 e5             	mov    rbp,rsp
    132c:	53                   	push   rbx
    132d:	48 83 ec 18          	sub    rsp,0x18
    1331:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    1335:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
    1339:	48 83 7d e8 01       	cmp    QWORD PTR [rbp-0x18],0x1
    133e:	77 09                	ja     1349 <fib_tbl_dyn_+0x25>
    1340:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1344:	e9 83 00 00 00       	jmp    13cc <fib_tbl_dyn_+0xa8>
    1349:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    134d:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
    1354:	00
    1355:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    1359:	48 01 d0             	add    rax,rdx
    135c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    135f:	48 85 c0             	test   rax,rax
    1362:	74 18                	je     137c <fib_tbl_dyn_+0x58>
    1364:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1368:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
    136f:	00
    1370:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    1374:	48 01 d0             	add    rax,rdx
    1377:	48 8b 00             	mov    rax,QWORD PTR [rax]
    137a:	eb 50                	jmp    13cc <fib_tbl_dyn_+0xa8>
    137c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1380:	48 8d 50 ff          	lea    rdx,[rax-0x1]
    1384:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    1388:	48 89 c6             	mov    rsi,rax
    138b:	48 89 d7             	mov    rdi,rdx
    138e:	e8 91 ff ff ff       	call   1324 <fib_tbl_dyn_>
    1393:	48 89 c3             	mov    rbx,rax
    1396:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    139a:	48 8d 50 fe          	lea    rdx,[rax-0x2]
    139e:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    13a2:	48 89 c6             	mov    rsi,rax
    13a5:	48 89 d7             	mov    rdi,rdx
    13a8:	e8 77 ff ff ff       	call   1324 <fib_tbl_dyn_>
    13ad:	48 89 c2             	mov    rdx,rax
    13b0:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    13b4:	48 8d 0c c5 00 00 00 	lea    rcx,[rax*8+0x0]
    13bb:	00
    13bc:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    13c0:	48 01 c8             	add    rax,rcx
    13c3:	48 01 da             	add    rdx,rbx
    13c6:	48 89 10             	mov    QWORD PTR [rax],rdx
    13c9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    13cc:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    13d0:	c9                   	leave
    13d1:	c3                   	ret

00000000000013d2 <fib_tbl_dyn>:
    13d2:	f3 0f 1e fa          	endbr64
    13d6:	55                   	push   rbp
    13d7:	48 89 e5             	mov    rbp,rsp
    13da:	48 83 ec 20          	sub    rsp,0x20
    13de:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    13e2:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    13e6:	48 83 c0 01          	add    rax,0x1
    13ea:	be 08 00 00 00       	mov    esi,0x8
    13ef:	48 89 c7             	mov    rdi,rax
    13f2:	e8 f9 fc ff ff       	call   10f0 <calloc@plt>
    13f7:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    13fb:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
    1400:	75 2d                	jne    142f <fib_tbl_dyn+0x5d>
    1402:	48 8b 05 17 2c 00 00 	mov    rax,QWORD PTR [rip+0x2c17]        # 4020 <stderr@GLIBC_2.2.5>
    1409:	48 89 c1             	mov    rcx,rax
    140c:	ba 17 00 00 00       	mov    edx,0x17
    1411:	be 01 00 00 00       	mov    esi,0x1
    1416:	48 8d 05 eb 0b 00 00 	lea    rax,[rip+0xbeb]        # 2008 <_IO_stdin_used+0x8>
    141d:	48 89 c7             	mov    rdi,rax
    1420:	e8 0b fd ff ff       	call   1130 <fwrite@plt>
    1425:	bf 01 00 00 00       	mov    edi,0x1
    142a:	e8 f1 fc ff ff       	call   1120 <exit@plt>
    142f:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    1433:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1437:	48 89 d6             	mov    rsi,rdx
    143a:	48 89 c7             	mov    rdi,rax
    143d:	e8 e2 fe ff ff       	call   1324 <fib_tbl_dyn_>
    1442:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1446:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    144a:	48 89 c7             	mov    rdi,rax
    144d:	e8 6e fc ff ff       	call   10c0 <free@plt>
    1452:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1456:	c9                   	leave
    1457:	c3                   	ret

0000000000001458 <fib_loop>:
    1458:	f3 0f 1e fa          	endbr64
    145c:	55                   	push   rbp
    145d:	48 89 e5             	mov    rbp,rsp
    1460:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
    1464:	48 83 7d d8 01       	cmp    QWORD PTR [rbp-0x28],0x1
    1469:	77 06                	ja     1471 <fib_loop+0x19>
    146b:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    146f:	eb 5b                	jmp    14cc <fib_loop+0x74>
    1471:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
    1478:	00
    1479:	48 c7 45 e0 01 00 00 	mov    QWORD PTR [rbp-0x20],0x1
    1480:	00
    1481:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    1485:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    1489:	48 01 d0             	add    rax,rdx
    148c:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    1490:	48 c7 45 f0 02 00 00 	mov    QWORD PTR [rbp-0x10],0x2
    1497:	00
    1498:	eb 24                	jmp    14be <fib_loop+0x66>
    149a:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    149e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    14a2:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    14a6:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    14aa:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    14ae:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    14b2:	48 01 d0             	add    rax,rdx
    14b5:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    14b9:	48 83 45 f0 01       	add    QWORD PTR [rbp-0x10],0x1
    14be:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    14c2:	48 3b 45 d8          	cmp    rax,QWORD PTR [rbp-0x28]
    14c6:	72 d2                	jb     149a <fib_loop+0x42>
    14c8:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    14cc:	5d                   	pop    rbp
    14cd:	c3                   	ret

00000000000014ce <fib_switch>:
    14ce:	f3 0f 1e fa          	endbr64
    14d2:	55                   	push   rbp
    14d3:	48 89 e5             	mov    rbp,rsp
    14d6:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    14da:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
    14e1:	00
    14e2:	48 83 7d e8 5d       	cmp    QWORD PTR [rbp-0x18],0x5d
    14e7:	0f 87 e8 05 00 00    	ja     1ad5 <fib_switch+0x607>
    14ed:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    14f1:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    14f8:	00
    14f9:	48 8d 05 20 0b 00 00 	lea    rax,[rip+0xb20]        # 2020 <_IO_stdin_used+0x20>
    1500:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    1503:	48 98                	cdqe
    1505:	48 8d 15 14 0b 00 00 	lea    rdx,[rip+0xb14]        # 2020 <_IO_stdin_used+0x20>
    150c:	48 01 d0             	add    rax,rdx
    150f:	3e ff e0             	notrack jmp rax
    1512:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
    1519:	00
    151a:	e9 b7 05 00 00       	jmp    1ad6 <fib_switch+0x608>
    151f:	48 c7 45 f8 01 00 00 	mov    QWORD PTR [rbp-0x8],0x1
    1526:	00
    1527:	e9 aa 05 00 00       	jmp    1ad6 <fib_switch+0x608>
    152c:	48 c7 45 f8 01 00 00 	mov    QWORD PTR [rbp-0x8],0x1
    1533:	00
    1534:	e9 9d 05 00 00       	jmp    1ad6 <fib_switch+0x608>
    1539:	48 c7 45 f8 02 00 00 	mov    QWORD PTR [rbp-0x8],0x2
    1540:	00
    1541:	e9 90 05 00 00       	jmp    1ad6 <fib_switch+0x608>
    1546:	48 c7 45 f8 03 00 00 	mov    QWORD PTR [rbp-0x8],0x3
    154d:	00
    154e:	e9 83 05 00 00       	jmp    1ad6 <fib_switch+0x608>
    1553:	48 c7 45 f8 05 00 00 	mov    QWORD PTR [rbp-0x8],0x5
    155a:	00
    155b:	e9 76 05 00 00       	jmp    1ad6 <fib_switch+0x608>
    1560:	48 c7 45 f8 08 00 00 	mov    QWORD PTR [rbp-0x8],0x8
    1567:	00
    1568:	e9 69 05 00 00       	jmp    1ad6 <fib_switch+0x608>
    156d:	48 c7 45 f8 0d 00 00 	mov    QWORD PTR [rbp-0x8],0xd
    1574:	00
    1575:	e9 5c 05 00 00       	jmp    1ad6 <fib_switch+0x608>
    157a:	48 c7 45 f8 15 00 00 	mov    QWORD PTR [rbp-0x8],0x15
    1581:	00
    1582:	e9 4f 05 00 00       	jmp    1ad6 <fib_switch+0x608>
    1587:	48 c7 45 f8 22 00 00 	mov    QWORD PTR [rbp-0x8],0x22
    158e:	00
    158f:	e9 42 05 00 00       	jmp    1ad6 <fib_switch+0x608>
    1594:	48 c7 45 f8 37 00 00 	mov    QWORD PTR [rbp-0x8],0x37
    159b:	00
    159c:	e9 35 05 00 00       	jmp    1ad6 <fib_switch+0x608>
    15a1:	48 c7 45 f8 59 00 00 	mov    QWORD PTR [rbp-0x8],0x59
    15a8:	00
    15a9:	e9 28 05 00 00       	jmp    1ad6 <fib_switch+0x608>
    15ae:	48 c7 45 f8 90 00 00 	mov    QWORD PTR [rbp-0x8],0x90
    15b5:	00
    15b6:	e9 1b 05 00 00       	jmp    1ad6 <fib_switch+0x608>
    15bb:	48 c7 45 f8 e9 00 00 	mov    QWORD PTR [rbp-0x8],0xe9
    15c2:	00
    15c3:	e9 0e 05 00 00       	jmp    1ad6 <fib_switch+0x608>
    15c8:	48 c7 45 f8 79 01 00 	mov    QWORD PTR [rbp-0x8],0x179
    15cf:	00
    15d0:	e9 01 05 00 00       	jmp    1ad6 <fib_switch+0x608>
    15d5:	48 c7 45 f8 62 02 00 	mov    QWORD PTR [rbp-0x8],0x262
    15dc:	00
    15dd:	e9 f4 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    15e2:	48 c7 45 f8 db 03 00 	mov    QWORD PTR [rbp-0x8],0x3db
    15e9:	00
    15ea:	e9 e7 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    15ef:	48 c7 45 f8 3d 06 00 	mov    QWORD PTR [rbp-0x8],0x63d
    15f6:	00
    15f7:	e9 da 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    15fc:	48 c7 45 f8 18 0a 00 	mov    QWORD PTR [rbp-0x8],0xa18
    1603:	00
    1604:	e9 cd 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    1609:	48 c7 45 f8 55 10 00 	mov    QWORD PTR [rbp-0x8],0x1055
    1610:	00
    1611:	e9 c0 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    1616:	48 c7 45 f8 6d 1a 00 	mov    QWORD PTR [rbp-0x8],0x1a6d
    161d:	00
    161e:	e9 b3 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    1623:	48 c7 45 f8 c2 2a 00 	mov    QWORD PTR [rbp-0x8],0x2ac2
    162a:	00
    162b:	e9 a6 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    1630:	48 c7 45 f8 2f 45 00 	mov    QWORD PTR [rbp-0x8],0x452f
    1637:	00
    1638:	e9 99 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    163d:	48 c7 45 f8 f1 6f 00 	mov    QWORD PTR [rbp-0x8],0x6ff1
    1644:	00
    1645:	e9 8c 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    164a:	48 c7 45 f8 20 b5 00 	mov    QWORD PTR [rbp-0x8],0xb520
    1651:	00
    1652:	e9 7f 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    1657:	48 c7 45 f8 11 25 01 	mov    QWORD PTR [rbp-0x8],0x12511
    165e:	00
    165f:	e9 72 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    1664:	48 c7 45 f8 31 da 01 	mov    QWORD PTR [rbp-0x8],0x1da31
    166b:	00
    166c:	e9 65 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    1671:	48 c7 45 f8 42 ff 02 	mov    QWORD PTR [rbp-0x8],0x2ff42
    1678:	00
    1679:	e9 58 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    167e:	48 c7 45 f8 73 d9 04 	mov    QWORD PTR [rbp-0x8],0x4d973
    1685:	00
    1686:	e9 4b 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    168b:	48 c7 45 f8 b5 d8 07 	mov    QWORD PTR [rbp-0x8],0x7d8b5
    1692:	00
    1693:	e9 3e 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    1698:	48 c7 45 f8 28 b2 0c 	mov    QWORD PTR [rbp-0x8],0xcb228
    169f:	00
    16a0:	e9 31 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    16a5:	48 c7 45 f8 dd 8a 14 	mov    QWORD PTR [rbp-0x8],0x148add
    16ac:	00
    16ad:	e9 24 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    16b2:	48 c7 45 f8 05 3d 21 	mov    QWORD PTR [rbp-0x8],0x213d05
    16b9:	00
    16ba:	e9 17 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    16bf:	48 c7 45 f8 e2 c7 35 	mov    QWORD PTR [rbp-0x8],0x35c7e2
    16c6:	00
    16c7:	e9 0a 04 00 00       	jmp    1ad6 <fib_switch+0x608>
    16cc:	48 c7 45 f8 e7 04 57 	mov    QWORD PTR [rbp-0x8],0x5704e7
    16d3:	00
    16d4:	e9 fd 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    16d9:	48 c7 45 f8 c9 cc 8c 	mov    QWORD PTR [rbp-0x8],0x8cccc9
    16e0:	00
    16e1:	e9 f0 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    16e6:	48 c7 45 f8 b0 d1 e3 	mov    QWORD PTR [rbp-0x8],0xe3d1b0
    16ed:	00
    16ee:	e9 e3 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    16f3:	48 c7 45 f8 79 9e 70 	mov    QWORD PTR [rbp-0x8],0x1709e79
    16fa:	01
    16fb:	e9 d6 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    1700:	48 c7 45 f8 29 70 54 	mov    QWORD PTR [rbp-0x8],0x2547029
    1707:	02
    1708:	e9 c9 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    170d:	48 c7 45 f8 a2 0e c5 	mov    QWORD PTR [rbp-0x8],0x3c50ea2
    1714:	03
    1715:	e9 bc 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    171a:	48 c7 45 f8 cb 7e 19 	mov    QWORD PTR [rbp-0x8],0x6197ecb
    1721:	06
    1722:	e9 af 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    1727:	48 c7 45 f8 6d 8d de 	mov    QWORD PTR [rbp-0x8],0x9de8d6d
    172e:	09
    172f:	e9 a2 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    1734:	48 c7 45 f8 38 0c f8 	mov    QWORD PTR [rbp-0x8],0xff80c38
    173b:	0f
    173c:	e9 95 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    1741:	48 c7 45 f8 a5 99 d6 	mov    QWORD PTR [rbp-0x8],0x19d699a5
    1748:	19
    1749:	e9 88 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    174e:	48 c7 45 f8 dd a5 ce 	mov    QWORD PTR [rbp-0x8],0x29cea5dd
    1755:	29
    1756:	e9 7b 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    175b:	48 c7 45 f8 82 3f a5 	mov    QWORD PTR [rbp-0x8],0x43a53f82
    1762:	43
    1763:	e9 6e 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    1768:	48 c7 45 f8 5f e5 73 	mov    QWORD PTR [rbp-0x8],0x6d73e55f
    176f:	6d
    1770:	e9 61 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    1775:	b8 e1 24 19 b1       	mov    eax,0xb11924e1
    177a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    177e:	e9 53 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    1783:	48 b8 40 0a 8d 1e 01 	movabs rax,0x11e8d0a40
    178a:	00 00 00
    178d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1791:	e9 40 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    1796:	48 b8 21 2f a6 cf 01 	movabs rax,0x1cfa62f21
    179d:	00 00 00
    17a0:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    17a4:	e9 2d 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    17a9:	48 b8 61 39 33 ee 02 	movabs rax,0x2ee333961
    17b0:	00 00 00
    17b3:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    17b7:	e9 1a 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    17bc:	48 b8 82 68 d9 bd 04 	movabs rax,0x4bdd96882
    17c3:	00 00 00
    17c6:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    17ca:	e9 07 03 00 00       	jmp    1ad6 <fib_switch+0x608>
    17cf:	48 b8 e3 a1 0c ac 07 	movabs rax,0x7ac0ca1e3
    17d6:	00 00 00
    17d9:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    17dd:	e9 f4 02 00 00       	jmp    1ad6 <fib_switch+0x608>
    17e2:	48 b8 65 0a e6 69 0c 	movabs rax,0xc69e60a65
    17e9:	00 00 00
    17ec:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    17f0:	e9 e1 02 00 00       	jmp    1ad6 <fib_switch+0x608>
    17f5:	48 b8 48 ac f2 15 14 	movabs rax,0x1415f2ac48
    17fc:	00 00 00
    17ff:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1803:	e9 ce 02 00 00       	jmp    1ad6 <fib_switch+0x608>
    1808:	48 b8 ad b6 d8 7f 20 	movabs rax,0x207fd8b6ad
    180f:	00 00 00
    1812:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1816:	e9 bb 02 00 00       	jmp    1ad6 <fib_switch+0x608>
    181b:	48 b8 f5 62 cb 95 34 	movabs rax,0x3495cb62f5
    1822:	00 00 00
    1825:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1829:	e9 a8 02 00 00       	jmp    1ad6 <fib_switch+0x608>
    182e:	48 b8 a2 19 a4 15 55 	movabs rax,0x5515a419a2
    1835:	00 00 00
    1838:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    183c:	e9 95 02 00 00       	jmp    1ad6 <fib_switch+0x608>
    1841:	48 b8 97 7c 6f ab 89 	movabs rax,0x89ab6f7c97
    1848:	00 00 00
    184b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    184f:	e9 82 02 00 00       	jmp    1ad6 <fib_switch+0x608>
    1854:	48 b8 39 96 13 c1 de 	movabs rax,0xdec1139639
    185b:	00 00 00
    185e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1862:	e9 6f 02 00 00       	jmp    1ad6 <fib_switch+0x608>
    1867:	48 b8 d0 12 83 6c 68 	movabs rax,0x1686c8312d0
    186e:	01 00 00
    1871:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1875:	e9 5c 02 00 00       	jmp    1ad6 <fib_switch+0x608>
    187a:	48 b8 09 a9 96 2d 47 	movabs rax,0x2472d96a909
    1881:	02 00 00
    1884:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1888:	e9 49 02 00 00       	jmp    1ad6 <fib_switch+0x608>
    188d:	48 b8 d9 bb 19 9a af 	movabs rax,0x3af9a19bbd9
    1894:	03 00 00
    1897:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    189b:	e9 36 02 00 00       	jmp    1ad6 <fib_switch+0x608>
    18a0:	48 b8 e2 64 b0 c7 f6 	movabs rax,0x5f6c7b064e2
    18a7:	05 00 00
    18aa:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    18ae:	e9 23 02 00 00       	jmp    1ad6 <fib_switch+0x608>
    18b3:	48 b8 bb 20 ca 61 a6 	movabs rax,0x9a661ca20bb
    18ba:	09 00 00
    18bd:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    18c1:	e9 10 02 00 00       	jmp    1ad6 <fib_switch+0x608>
    18c6:	48 b8 9d 85 7a 29 9d 	movabs rax,0xf9d297a859d
    18cd:	0f 00 00
    18d0:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    18d4:	e9 fd 01 00 00       	jmp    1ad6 <fib_switch+0x608>
    18d9:	48 b8 58 a6 44 8b 43 	movabs rax,0x19438b44a658
    18e0:	19 00 00
    18e3:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    18e7:	e9 ea 01 00 00       	jmp    1ad6 <fib_switch+0x608>
    18ec:	48 b8 f5 2b bf b4 e0 	movabs rax,0x28e0b4bf2bf5
    18f3:	28 00 00
    18f6:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    18fa:	e9 d7 01 00 00       	jmp    1ad6 <fib_switch+0x608>
    18ff:	48 b8 4d d2 03 40 24 	movabs rax,0x42244003d24d
    1906:	42 00 00
    1909:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    190d:	e9 c4 01 00 00       	jmp    1ad6 <fib_switch+0x608>
    1912:	48 b8 42 fe c2 f4 04 	movabs rax,0x6b04f4c2fe42
    1919:	6b 00 00
    191c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1920:	e9 b1 01 00 00       	jmp    1ad6 <fib_switch+0x608>
    1925:	48 b8 8f d0 c6 34 29 	movabs rax,0xad2934c6d08f
    192c:	ad 00 00
    192f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1933:	e9 9e 01 00 00       	jmp    1ad6 <fib_switch+0x608>
    1938:	48 b8 d1 ce 89 29 2e 	movabs rax,0x1182e2989ced1
    193f:	18 01 00
    1942:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1946:	e9 8b 01 00 00       	jmp    1ad6 <fib_switch+0x608>
    194b:	48 b8 60 9f 50 5e 57 	movabs rax,0x1c5575e509f60
    1952:	c5 01 00
    1955:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1959:	e9 78 01 00 00       	jmp    1ad6 <fib_switch+0x608>
    195e:	48 b8 31 6e da 87 85 	movabs rax,0x2dd8587da6e31
    1965:	dd 02 00
    1968:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    196c:	e9 65 01 00 00       	jmp    1ad6 <fib_switch+0x608>
    1971:	48 b8 91 0d 2b e6 dc 	movabs rax,0x4a2dce62b0d91
    1978:	a2 04 00
    197b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    197f:	e9 52 01 00 00       	jmp    1ad6 <fib_switch+0x608>
    1984:	48 b8 c2 7b 05 6e 62 	movabs rax,0x780626e057bc2
    198b:	80 07 00
    198e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1992:	e9 3f 01 00 00       	jmp    1ad6 <fib_switch+0x608>
    1997:	48 b8 53 89 30 54 3f 	movabs rax,0xc233f54308953
    199e:	23 0c 00
    19a1:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    19a5:	e9 2c 01 00 00       	jmp    1ad6 <fib_switch+0x608>
    19aa:	48 b8 15 05 36 c2 a1 	movabs rax,0x13a3a1c2360515
    19b1:	a3 13 00
    19b4:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    19b8:	e9 19 01 00 00       	jmp    1ad6 <fib_switch+0x608>
    19bd:	48 b8 68 8e 66 16 e1 	movabs rax,0x1fc6e116668e68
    19c4:	c6 1f 00
    19c7:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    19cb:	e9 06 01 00 00       	jmp    1ad6 <fib_switch+0x608>
    19d0:	48 b8 7d 93 9c d8 82 	movabs rax,0x336a82d89c937d
    19d7:	6a 33 00
    19da:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    19de:	e9 f3 00 00 00       	jmp    1ad6 <fib_switch+0x608>
    19e3:	48 b8 e5 21 03 ef 63 	movabs rax,0x533163ef0321e5
    19ea:	31 53 00
    19ed:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    19f1:	e9 e0 00 00 00       	jmp    1ad6 <fib_switch+0x608>
    19f6:	48 b8 62 b5 9f c7 e6 	movabs rax,0x869be6c79fb562
    19fd:	9b 86 00
    1a00:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1a04:	e9 cd 00 00 00       	jmp    1ad6 <fib_switch+0x608>
    1a09:	48 b8 47 d7 a2 b6 4a 	movabs rax,0xd9cd4ab6a2d747
    1a10:	cd d9 00
    1a13:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1a17:	e9 ba 00 00 00       	jmp    1ad6 <fib_switch+0x608>
    1a1c:	48 b8 a9 8c 42 7e 31 	movabs rax,0x16069317e428ca9
    1a23:	69 60 01
    1a26:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1a2a:	e9 a7 00 00 00       	jmp    1ad6 <fib_switch+0x608>
    1a2f:	48 b8 f0 63 e5 34 7c 	movabs rax,0x23a367c34e563f0
    1a36:	36 3a 02
    1a39:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1a3d:	e9 94 00 00 00       	jmp    1ad6 <fib_switch+0x608>
    1a42:	48 b8 99 f0 27 b3 ad 	movabs rax,0x39a9fadb327f099
    1a49:	9f 9a 03
    1a4c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1a50:	e9 81 00 00 00       	jmp    1ad6 <fib_switch+0x608>
    1a55:	48 b8 89 54 0d e8 29 	movabs rax,0x5d4d629e80d5489
    1a5c:	d6 d4 05
    1a5f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1a63:	eb 71                	jmp    1ad6 <fib_switch+0x608>
    1a65:	48 b8 22 45 35 9b d7 	movabs rax,0x96f75d79b354522
    1a6c:	75 6f 09
    1a6f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1a73:	eb 61                	jmp    1ad6 <fib_switch+0x608>
    1a75:	48 b8 ab 99 42 83 01 	movabs rax,0xf444c01834299ab
    1a7c:	4c 44 0f
    1a7f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1a83:	eb 51                	jmp    1ad6 <fib_switch+0x608>
    1a85:	48 b8 cd de 77 1e d9 	movabs rax,0x18b3c1d91e77decd
    1a8c:	c1 b3 18
    1a8f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1a93:	eb 41                	jmp    1ad6 <fib_switch+0x608>
    1a95:	48 b8 78 78 ba a1 da 	movabs rax,0x27f80ddaa1ba7878
    1a9c:	0d f8 27
    1a9f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1aa3:	eb 31                	jmp    1ad6 <fib_switch+0x608>
    1aa5:	48 b8 45 57 32 c0 b3 	movabs rax,0x40abcfb3c0325745
    1aac:	cf ab 40
    1aaf:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1ab3:	eb 21                	jmp    1ad6 <fib_switch+0x608>
    1ab5:	48 b8 bd cf ec 61 8e 	movabs rax,0x68a3dd8e61eccfbd
    1abc:	dd a3 68
    1abf:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1ac3:	eb 11                	jmp    1ad6 <fib_switch+0x608>
    1ac5:	48 b8 02 27 1f 22 42 	movabs rax,0xa94fad42221f2702
    1acc:	ad 4f a9
    1acf:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1ad3:	eb 01                	jmp    1ad6 <fib_switch+0x608>
    1ad5:	90                   	nop
    1ad6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1ada:	5d                   	pop    rbp
    1adb:	c3                   	ret

0000000000001adc <main>:
    1adc:	f3 0f 1e fa          	endbr64
    1ae0:	55                   	push   rbp
    1ae1:	48 89 e5             	mov    rbp,rsp
    1ae4:	48 83 ec 20          	sub    rsp,0x20
    1ae8:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
    1aeb:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
;    1aef:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
;    1af6:	00 00
;    1af8:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1afc:	31 c0                	xor    eax,eax
    1afe:	83 7d ec 02          	cmp    DWORD PTR [rbp-0x14],0x2
    1b02:	74 2d                	je     1b31 <main+0x55>
    1b04:	48 8b 05 15 25 00 00 	mov    rax,QWORD PTR [rip+0x2515]        # 4020 <stderr@GLIBC_2.2.5>
    1b0b:	48 89 c1             	mov    rcx,rax
    1b0e:	ba 0f 00 00 00       	mov    edx,0xf
    1b13:	be 01 00 00 00       	mov    esi,0x1
    1b18:	48 8d 05 79 06 00 00 	lea    rax,[rip+0x679]        # 2198 <_IO_stdin_used+0x198>
    1b1f:	48 89 c7             	mov    rdi,rax
    1b22:	e8 09 f6 ff ff       	call   1130 <fwrite@plt>
    1b27:	b8 01 00 00 00       	mov    eax,0x1
    1b2c:	e9 50 01 00 00       	jmp    1c81 <main+0x1a5>
    1b31:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
    1b38:	00
    1b39:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    1b3d:	48 83 c0 08          	add    rax,0x8
    1b41:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1b44:	48 8d 55 f0          	lea    rdx,[rbp-0x10]
    1b48:	48 8d 0d 59 06 00 00 	lea    rcx,[rip+0x659]        # 21a8 <_IO_stdin_used+0x1a8>
    1b4f:	48 89 ce             	mov    rsi,rcx
    1b52:	48 89 c7             	mov    rdi,rax
    1b55:	b8 00 00 00 00       	mov    eax,0x0
    1b5a:	e8 b1 f5 ff ff       	call   1110 <__isoc99_sscanf@plt>
    1b5f:	83 f8 01             	cmp    eax,0x1
    1b62:	74 33                	je     1b97 <main+0xbb>
    1b64:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    1b68:	48 83 c0 08          	add    rax,0x8
    1b6c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
    1b6f:	48 8b 05 aa 24 00 00 	mov    rax,QWORD PTR [rip+0x24aa]        # 4020 <stderr@GLIBC_2.2.5>
    1b76:	48 8d 0d 33 06 00 00 	lea    rcx,[rip+0x633]        # 21b0 <_IO_stdin_used+0x1b0>
    1b7d:	48 89 ce             	mov    rsi,rcx
    1b80:	48 89 c7             	mov    rdi,rax
    1b83:	b8 00 00 00 00       	mov    eax,0x0
    1b88:	e8 73 f5 ff ff       	call   1100 <fprintf@plt>
    1b8d:	b8 02 00 00 00       	mov    eax,0x2
    1b92:	e9 ea 00 00 00       	jmp    1c81 <main+0x1a5>
    1b97:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1b9b:	48 83 f8 5d          	cmp    rax,0x5d
    1b9f:	76 2c                	jbe    1bcd <main+0xf1>
    1ba1:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    1ba5:	48 8b 05 74 24 00 00 	mov    rax,QWORD PTR [rip+0x2474]        # 4020 <stderr@GLIBC_2.2.5>
    1bac:	48 8d 0d 1d 06 00 00 	lea    rcx,[rip+0x61d]        # 21d0 <_IO_stdin_used+0x1d0>
    1bb3:	48 89 ce             	mov    rsi,rcx
    1bb6:	48 89 c7             	mov    rdi,rax
    1bb9:	b8 00 00 00 00       	mov    eax,0x0
    1bbe:	e8 3d f5 ff ff       	call   1100 <fprintf@plt>
    1bc3:	b8 03 00 00 00       	mov    eax,0x3
    1bc8:	e9 b4 00 00 00       	jmp    1c81 <main+0x1a5>
    1bcd:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1bd1:	48 89 c7             	mov    rdi,rax
    1bd4:	e8 50 f6 ff ff       	call   1229 <fib_rec>
    1bd9:	48 89 c6             	mov    rsi,rax
    1bdc:	48 8d 05 06 06 00 00 	lea    rax,[rip+0x606]        # 21e9 <_IO_stdin_used+0x1e9>
    1be3:	48 89 c7             	mov    rdi,rax
    1be6:	b8 00 00 00 00       	mov    eax,0x0
    1beb:	e8 f0 f4 ff ff       	call   10e0 <printf@plt>
    1bf0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1bf4:	48 89 c7             	mov    rdi,rax
    1bf7:	e8 77 f6 ff ff       	call   1273 <fib_tbl_static>
    1bfc:	48 89 c6             	mov    rsi,rax
    1bff:	48 8d 05 f2 05 00 00 	lea    rax,[rip+0x5f2]        # 21f8 <_IO_stdin_used+0x1f8>
    1c06:	48 89 c7             	mov    rdi,rax
    1c09:	b8 00 00 00 00       	mov    eax,0x0
    1c0e:	e8 cd f4 ff ff       	call   10e0 <printf@plt>
    1c13:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1c17:	48 89 c7             	mov    rdi,rax
    1c1a:	e8 b3 f7 ff ff       	call   13d2 <fib_tbl_dyn>
    1c1f:	48 89 c6             	mov    rsi,rax
    1c22:	48 8d 05 de 05 00 00 	lea    rax,[rip+0x5de]        # 2207 <_IO_stdin_used+0x207>
    1c29:	48 89 c7             	mov    rdi,rax
    1c2c:	b8 00 00 00 00       	mov    eax,0x0
    1c31:	e8 aa f4 ff ff       	call   10e0 <printf@plt>
    1c36:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1c3a:	48 89 c7             	mov    rdi,rax
    1c3d:	e8 16 f8 ff ff       	call   1458 <fib_loop>
    1c42:	48 89 c6             	mov    rsi,rax
    1c45:	48 8d 05 ca 05 00 00 	lea    rax,[rip+0x5ca]        # 2216 <_IO_stdin_used+0x216>
    1c4c:	48 89 c7             	mov    rdi,rax
    1c4f:	b8 00 00 00 00       	mov    eax,0x0
    1c54:	e8 87 f4 ff ff       	call   10e0 <printf@plt>
    1c59:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1c5d:	48 89 c7             	mov    rdi,rax
    1c60:	e8 69 f8 ff ff       	call   14ce <fib_switch>
    1c65:	48 89 c6             	mov    rsi,rax
    1c68:	48 8d 05 b6 05 00 00 	lea    rax,[rip+0x5b6]        # 2225 <_IO_stdin_used+0x225>
    1c6f:	48 89 c7             	mov    rdi,rax
    1c72:	b8 00 00 00 00       	mov    eax,0x0
    1c77:	e8 64 f4 ff ff       	call   10e0 <printf@plt>
    1c7c:	b8 00 00 00 00       	mov    eax,0x0
    1c81:	90                  	nop
; 'disarm' stack check
;    1c81:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
;    1c85:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
;    1c8c:	00 00
;    1c8e:	74 05                	je     1c95 <main+0x1b9>
;    1c90:	e8 3b f4 ff ff       	call   10d0 <__stack_chk_fail@plt>
    1c95:	c9                   	leave
    1c96:	c3                   	ret

Disassembly of section .fini:

0000000000001c98 <_fini>:
    1c98:	f3 0f 1e fa          	endbr64
    1c9c:	48 83 ec 08          	sub    rsp,0x8
    1ca0:	48 83 c4 08          	add    rsp,0x8
    1ca4:	c3                   	ret
