#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

// <typedefs>
typedef uint64_t u64;
typedef uint32_t u32;
typedef uint16_t u16;
typedef uint8_t u8;
typedef u8 byte;
typedef int64_t i64;
typedef int32_t i32;
typedef int16_t i16;
typedef int8_t i8;
// </typedefs>

// <registers>
static u64 * rax;
static u64 * eax;
static u16 * ax;
static u8 * ah;
static u8 * al;

static u64 * rbx;
static u64 * ebx;
static u16 * bx;
static u8 * bh;
static u8 * bl;

static u64 * rcx;
static u64 * ecx;
static u16 * cx;
static u8 * ch;
static u8 * cl;

static u64 * rdx;
static u64 * edx;
static u16 * dx;
static u8 * dh;
static u8 * dl;

static u64 * rsi;
static u64 * esi;
static u16 * si;
static u8 * sil;

static u64 * rdi;
static u64 * edi;
static u16 * di;
static u8 * dil;

static u64 * rbp;
static u64 * ebp;
static u16 * bp;
static u8 * bpl;

static u64 * rsp;
static u64 * esp;
static u16 * sp;
static u8 * spl;

static u64 * r8;
static u64 * r8d;
static u16 * r8w;
static u8 * r8b;

static u64 * r9;
static u64 * r9d;
static u16 * r9w;
static u8 * r9b;

static u64 * r10;
static u64 * r10d;
static u16 * r10w;
static u8 * r10b;

static u64 * r11;
static u64 * r11d;
static u16 * r11w;
static u8 * r11b;

static u64 * r12;
static u64 * r12d;
static u16 * r12w;
static u8 * r12b;

static u64 * r13;
static u64 * r13d;
static u16 * r13w;
static u8 * r13b;

static u64 * r14;
static u64 * r14d;
static u16 * r14w;
static u8 * r14b;

static u64 * r15;
static u64 * r15d;
static u16 * r15w;
static u8 * r15b;

static void init_regs(void)
{
	static struct {
		u64 aling;
		byte r0[8];
		byte r1[8];
		byte r2[8];
		byte r3[8];
		byte r4[8];
		byte r5[8];
		byte r6[8];
		byte r7[8];
		byte r8[8];
		byte r9[8];
		byte r10[8];
		byte r11[8];
		byte r12[8];
		byte r13[8];
		byte r14[8];
		byte r15[8];
	} regs;

	rax = (u64*)&(regs.r0[0]);
	eax = (u64*)&(regs.r0[0]);
	ax = (u16*)&(regs.r0[0]);
	ah = (u8*)&(regs.r0[1]);
	al = (u8*)&(regs.r0[0]);

	rbx = (u64*)&(regs.r1[0]);
	ebx = (u64*)&(regs.r1[0]);
	bx = (u16*)&(regs.r1[0]);
	bh = (u8*)&(regs.r1[1]);
	bl = (u8*)&(regs.r1[0]);

	rcx = (u64*)&(regs.r2[0]);
	ecx = (u64*)&(regs.r2[0]);
	cx = (u16*)&(regs.r2[0]);
	ch = (u8*)&(regs.r2[1]);
	cl = (u8*)&(regs.r2[0]);

	rdx = (u64*)&(regs.r3[0]);
	edx = (u64*)&(regs.r3[0]);
	dx = (u16*)&(regs.r3[0]);
	dh = (u8*)&(regs.r3[1]);
	dl = (u8*)&(regs.r3[0]);

	rsi = (u64*)&(regs.r4[0]);
	esi = (u64*)&(regs.r4[0]);
	si = (u16*)&(regs.r4[0]);
	sil = (u8*)&(regs.r4[0]);

	rdi = (u64*)&(regs.r5[0]);
	edi = (u64*)&(regs.r5[0]);
	di = (u16*)&(regs.r5[0]);
	dil = (u8*)&(regs.r5[0]);

	rbp = (u64*)&(regs.r6[0]);
	ebp = (u64*)&(regs.r6[0]);
	bp = (u16*)&(regs.r6[0]);
	bpl = (u8*)&(regs.r6[0]);

	rsp = (u64*)&(regs.r7[0]);
	esp = (u64*)&(regs.r7[0]);
	sp = (u16*)&(regs.r7[0]);
	spl = (u8*)&(regs.r7[0]);

	r8 = (u64*)&(regs.r8[0]);
	r8d = (u64*)&(regs.r8[0]);
	r8w = (u16*)&(regs.r8[0]);
	r8b = (u8*)&(regs.r8[0]);

	r9 = (u64*)&(regs.r9[0]);
	r9d = (u64*)&(regs.r9[0]);
	r9w = (u16*)&(regs.r9[0]);
	r9b = (u8*)&(regs.r9[0]);

	r10 = (u64*)&(regs.r10[0]);
	r10d = (u64*)&(regs.r10[0]);
	r10w = (u16*)&(regs.r10[0]);
	r10b = (u8*)&(regs.r10[0]);

	r11 = (u64*)&(regs.r11[0]);
	r11d = (u64*)&(regs.r11[0]);
	r11w = (u16*)&(regs.r11[0]);
	r11b = (u8*)&(regs.r11[0]);

	r12 = (u64*)&(regs.r12[0]);
	r12d = (u64*)&(regs.r12[0]);
	r12w = (u16*)&(regs.r12[0]);
	r12b = (u8*)&(regs.r12[0]);

	r13 = (u64*)&(regs.r13[0]);
	r13d = (u64*)&(regs.r13[0]);
	r13w = (u16*)&(regs.r13[0]);
	r13b = (u8*)&(regs.r13[0]);

	r14 = (u64*)&(regs.r14[0]);
	r14d = (u64*)&(regs.r14[0]);
	r14w = (u16*)&(regs.r14[0]);
	r14b = (u8*)&(regs.r14[0]);

	r15 = (u64*)&(regs.r15[0]);
	r15d = (u64*)&(regs.r15[0]);
	r15w = (u16*)&(regs.r15[0]);
	r15b = (u8*)&(regs.r15[0]);
}
// </registers>

// <stack>
static void init_stack(void)
{
	static u64 stack[0x800000];
	*rsp = (u64)&(stack[0x800000-1]);
	*rbp = *rsp;
}
static inline void push_u64(u64 v)
{
	*rsp -= 8;
	*((u64*)*rsp) = v;
}
static inline u64 pop_u64(void)
{
	u64 ret = *((u64*)*rsp);
	*rsp += 8;
	return ret;
}
// </stack>

// <sections>
static byte * s_rodata;
static byte * s_data;
static byte * s_bss;

static void init_sections(void)
{
	static byte s_rodata_[0x3a8] = {0x01,0x00,0x02,0x00,0x55,0x73,0x65,0x3a,0x20,0x66,0x69,0x62,0x20,0x3c,0x6e,0x75,0x6d,0x3e,0x0a,0x00,0x25,0x7a,0x75,0x00,0x65,0x72,0x72,0x6f,0x72,0x3a,0x20,0x25,0x7a,0x75,0x20,0x69,0x73,0x20,0x74,0x6f,0x6f,0x20,0x6c,0x61,0x72,0x67,0x65,0x0a,0x00,0x72,0x65,0x63,0x75,0x72,0x73,0x69,0x76,0x65,0x20,0x25,0x7a,0x75,0x0a,0x00,0x73,0x74,0x61,0x74,0x69,0x63,0x20,0x20,0x20,0x20,0x25,0x7a,0x75,0x0a,0x00,0x65,0x72,0x72,0x6f,0x72,0x3a,0x20,0x63,0x61,0x6c,0x6c,0x6f,0x63,0x28,0x29,0x20,0x66,0x61,0x69,0x6c,0x65,0x64,0x0a,0x00,0x64,0x79,0x6e,0x61,0x6d,0x69,0x63,0x20,0x20,0x20,0x25,0x7a,0x75,0x0a,0x00,0x6c,0x6f,0x6f,0x70,0x20,0x20,0x20,0x20,0x20,0x20,0x25,0x7a,0x75,0x0a,0x00,0x73,0x77,0x69,0x74,0x63,0x68,0x20,0x20,0x20,0x20,0x25,0x7a,0x75,0x0a,0x00,0x00,0x00,0x00,0x00,0x65,0x72,0x72,0x6f,0x72,0x3a,0x20,0x27,0x25,0x73,0x27,0x20,0x6e,0x6f,0x74,0x20,0x61,0x20,0x76,0x61,0x6c,0x69,0x64,0x20,0x6e,0x75,0x6d,0x62,0x65,0x72,0x0a,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x02,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x0d,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x15,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x22,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x37,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x59,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x90,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xe9,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x79,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x62,0x02,0x00,0x00,0x00,0x00,0x00,0x00,0xdb,0x03,0x00,0x00,0x00,0x00,0x00,0x00,0x3d,0x06,0x00,0x00,0x00,0x00,0x00,0x00,0x18,0x0a,0x00,0x00,0x00,0x00,0x00,0x00,0x55,0x10,0x00,0x00,0x00,0x00,0x00,0x00,0x6d,0x1a,0x00,0x00,0x00,0x00,0x00,0x00,0xc2,0x2a,0x00,0x00,0x00,0x00,0x00,0x00,0x2f,0x45,0x00,0x00,0x00,0x00,0x00,0x00,0xf1,0x6f,0x00,0x00,0x00,0x00,0x00,0x00,0x20,0xb5,0x00,0x00,0x00,0x00,0x00,0x00,0x11,0x25,0x01,0x00,0x00,0x00,0x00,0x00,0x31,0xda,0x01,0x00,0x00,0x00,0x00,0x00,0x42,0xff,0x02,0x00,0x00,0x00,0x00,0x00,0x73,0xd9,0x04,0x00,0x00,0x00,0x00,0x00,0xb5,0xd8,0x07,0x00,0x00,0x00,0x00,0x00,0x28,0xb2,0x0c,0x00,0x00,0x00,0x00,0x00,0xdd,0x8a,0x14,0x00,0x00,0x00,0x00,0x00,0x05,0x3d,0x21,0x00,0x00,0x00,0x00,0x00,0xe2,0xc7,0x35,0x00,0x00,0x00,0x00,0x00,0xe7,0x04,0x57,0x00,0x00,0x00,0x00,0x00,0xc9,0xcc,0x8c,0x00,0x00,0x00,0x00,0x00,0xb0,0xd1,0xe3,0x00,0x00,0x00,0x00,0x00,0x79,0x9e,0x70,0x01,0x00,0x00,0x00,0x00,0x29,0x70,0x54,0x02,0x00,0x00,0x00,0x00,0xa2,0x0e,0xc5,0x03,0x00,0x00,0x00,0x00,0xcb,0x7e,0x19,0x06,0x00,0x00,0x00,0x00,0x6d,0x8d,0xde,0x09,0x00,0x00,0x00,0x00,0x38,0x0c,0xf8,0x0f,0x00,0x00,0x00,0x00,0xa5,0x99,0xd6,0x19,0x00,0x00,0x00,0x00,0xdd,0xa5,0xce,0x29,0x00,0x00,0x00,0x00,0x82,0x3f,0xa5,0x43,0x00,0x00,0x00,0x00,0x5f,0xe5,0x73,0x6d,0x00,0x00,0x00,0x00,0xe1,0x24,0x19,0xb1,0x00,0x00,0x00,0x00,0x40,0x0a,0x8d,0x1e,0x01,0x00,0x00,0x00,0x21,0x2f,0xa6,0xcf,0x01,0x00,0x00,0x00,0x61,0x39,0x33,0xee,0x02,0x00,0x00,0x00,0x82,0x68,0xd9,0xbd,0x04,0x00,0x00,0x00,0xe3,0xa1,0x0c,0xac,0x07,0x00,0x00,0x00,0x65,0x0a,0xe6,0x69,0x0c,0x00,0x00,0x00,0x48,0xac,0xf2,0x15,0x14,0x00,0x00,0x00,0xad,0xb6,0xd8,0x7f,0x20,0x00,0x00,0x00,0xf5,0x62,0xcb,0x95,0x34,0x00,0x00,0x00,0xa2,0x19,0xa4,0x15,0x55,0x00,0x00,0x00,0x97,0x7c,0x6f,0xab,0x89,0x00,0x00,0x00,0x39,0x96,0x13,0xc1,0xde,0x00,0x00,0x00,0xd0,0x12,0x83,0x6c,0x68,0x01,0x00,0x00,0x09,0xa9,0x96,0x2d,0x47,0x02,0x00,0x00,0xd9,0xbb,0x19,0x9a,0xaf,0x03,0x00,0x00,0xe2,0x64,0xb0,0xc7,0xf6,0x05,0x00,0x00,0xbb,0x20,0xca,0x61,0xa6,0x09,0x00,0x00,0x9d,0x85,0x7a,0x29,0x9d,0x0f,0x00,0x00,0x58,0xa6,0x44,0x8b,0x43,0x19,0x00,0x00,0xf5,0x2b,0xbf,0xb4,0xe0,0x28,0x00,0x00,0x4d,0xd2,0x03,0x40,0x24,0x42,0x00,0x00,0x42,0xfe,0xc2,0xf4,0x04,0x6b,0x00,0x00,0x8f,0xd0,0xc6,0x34,0x29,0xad,0x00,0x00,0xd1,0xce,0x89,0x29,0x2e,0x18,0x01,0x00,0x60,0x9f,0x50,0x5e,0x57,0xc5,0x01,0x00,0x31,0x6e,0xda,0x87,0x85,0xdd,0x02,0x00,0x91,0x0d,0x2b,0xe6,0xdc,0xa2,0x04,0x00,0xc2,0x7b,0x05,0x6e,0x62,0x80,0x07,0x00,0x53,0x89,0x30,0x54,0x3f,0x23,0x0c,0x00,0x15,0x05,0x36,0xc2,0xa1,0xa3,0x13,0x00,0x68,0x8e,0x66,0x16,0xe1,0xc6,0x1f,0x00,0x7d,0x93,0x9c,0xd8,0x82,0x6a,0x33,0x00,0xe5,0x21,0x03,0xef,0x63,0x31,0x53,0x00,0x62,0xb5,0x9f,0xc7,0xe6,0x9b,0x86,0x00,0x47,0xd7,0xa2,0xb6,0x4a,0xcd,0xd9,0x00,0xa9,0x8c,0x42,0x7e,0x31,0x69,0x60,0x01,0xf0,0x63,0xe5,0x34,0x7c,0x36,0x3a,0x02,0x99,0xf0,0x27,0xb3,0xad,0x9f,0x9a,0x03,0x89,0x54,0x0d,0xe8,0x29,0xd6,0xd4,0x05,0x22,0x45,0x35,0x9b,0xd7,0x75,0x6f,0x09,0xab,0x99,0x42,0x83,0x01,0x4c,0x44,0x0f,0xcd,0xde,0x77,0x1e,0xd9,0xc1,0xb3,0x18,0x78,0x78,0xba,0xa1,0xda,0x0d,0xf8,0x27,0x45,0x57,0x32,0xc0,0xb3,0xcf,0xab,0x40,0xbd,0xcf,0xec,0x61,0x8e,0xdd,0xa3,0x68,0x02,0x27,0x1f,0x22,0x42,0xad,0x4f,0xa9,};
	static byte s_data_[0x10] = {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x40,0x00,0x00,0x00,0x00,0x00,0x00,};
	static byte s_bss_[0x310];

	s_rodata = s_rodata_;
	s_data = s_data_;
	s_bss = s_bss_;
}
// </sections>

// <fn-dcl>
void main_(void);
void fib_rec(void);
void fib_tbl_static(void);
void fib_tbl_dyn_(void);
// </fn-dcl>

// <fn-defn>
void main_(void)
{

	// basic block 1; prev n/a; next 2, 5
	push_u64(*r12);
	push_u64(*rbp);
	push_u64(*rbx);
	*rsp -= 0x10;
	*eax ^= *eax;
	if (*edi == 0x2)
		goto _bb5;

	// basic block 2; prev 1; next 3
	*rcx = (u64)stderr;
	*edx = 0xf;
	*esi = 0x1;
	*rdi = (u64)(s_rodata+0x4); // "Use: fib <num>\n"
	*rax = (u64)fwrite((const void*)*rdi, (size_t)*rsi, (size_t)*rdx, (FILE*)*rcx);

	// basic block 3; prev 2; next 4
	*eax = 0x1;

	// basic block 4; prev 28, 31, 35, 3; next n/a
	_bb4_return:
	*rsp += 0x10;
	*rbx = pop_u64();
	*rbp = pop_u64();
	*r12 = pop_u64();
	return;

	// basic block 5; prev 1; next 6
	_bb5:
	*rdi = *((u64*)(*rsi+0x8));
	*eax ^= *eax;
	*rbx = *rsi;
	*rdx = *rsp;
	*rsi = (u64)(s_rodata+0x14); // "%zu"
	*((u64*)(*rsp)) = 0x0;
	*eax = (u32)sscanf((const char*)*rdi, (const char*)*rsi, *rdx);

	// basic block 6; prev 5; next 7, 30
	*eax -= 0x1;
	if (*eax != 0x0)
		goto _bb30;

	// basic block 7; prev 6; next 8, 34
	*r12 = *((u64*)(*rsp));
	if (*r12 > 0x5d)
		goto _bb34;

	// basic block 8; prev 7; next 9, 33
	if (*r12 <= 0x1)
		goto _bb33;

	// basic block 9; prev 8; next 10
	*rbx = *r12;
	*ebp ^= *ebp;

	// basic block 10; prev 11, 9; next 11
	_bb10:
	*rdi = *rbx-0x1;
	*rbx -= 0x2;
	fib_rec();

	// basic block 11; prev 10; next 12, 10
	*rbp += *rax;
	if (*rbx > 0x1)
		goto _bb10;

	// basic block 12; prev 11; next 13
	*r12d &= 0x1;

	// basic block 13; prev 33, 12; next 14
	_bb13:
	*rdx = *r12+*rbp;
	*rsi = (u64)(s_rodata+0x31); // "recursive %zu\n"
	*edi = 0x1;
	*eax ^= *eax;
	*eax = (u32)__printf_chk((int)*edi, (const char*)*rsi, *rdx);

	// basic block 14; prev 13; next 15
	*rdi = *((u64*)(*rsp));
	*rsi = (u64)(s_rodata+0x40); // "static    %zu\n"
	fib_tbl_static();

	// basic block 15; prev 14; next 16
	*edi = 0x1;
	*rdx = *rax;
	*eax ^= *eax;
	*eax = (u32)__printf_chk((int)*edi, (const char*)*rsi, *rdx);

	// basic block 16; prev 15; next 17
	*rbp = *((u64*)(*rsp));
	*esi = 0x8;
	*rdi = *rbp+0x1;
	*rax = (u64)calloc((size_t)*rdi, (size_t)*rsi);

	// basic block 17; prev 16; next 18, 37
	*r9 = *rax;
	if (*rax == 0x0)
		goto _bb37;

	// basic block 18; prev 17; next 19
	*rsi = *rax;
	*rdi = *rbp;
	fib_tbl_dyn_();

	// basic block 19; prev 18; next 20
	*rdi = *r9;
	*r12 = *rax;
	free((void*)*rdi);

	// basic block 20; prev 19; next 21
	*edi = 0x1;
	*rdx = *r12;
	*eax ^= *eax;
	*rsi = (u64)(s_rodata+0x67); // "dynamic   %zu\n"
	*eax = (u32)__printf_chk((int)*edi, (const char*)*rsi, *rdx);

	// basic block 21; prev 20; next 22, 32
	*rdi = *((u64*)(*rsp));
	if (*rdi <= 0x1)
		goto _bb32;

	// basic block 22; prev 21; next 23, 36
	if (*rdi == 0x2)
		goto _bb36;

	// basic block 23; prev 22; next 24
	*eax = 0x2;
	*edx = 0x1;
	*ecx = 0x1;

	// basic block 24; prev 24, 23; next 25, 24
	_bb24:
	*rsi = *rdx;
	*rax += 0x1;
	*rdx += *rcx;
	*rcx = *rsi;
	if (*rdi != *rax)
		goto _bb24;

	// basic block 25; prev 32, 36, 24; next 26
	_bb25:
	*rsi = (u64)(s_rodata+0x76); // "loop      %zu\n"
	*edi = 0x1;
	*eax ^= *eax;
	*eax = (u32)__printf_chk((int)*edi, (const char*)*rsi, *rdx, *rcx);

	// basic block 26; prev 25; next 27, 29
	*rax = *((u64*)(*rsp));
	*edx ^= *edx;
	*rax -= 0x1;
	if (*rax <= 0x5c)
		goto _bb29;

	// basic block 27; prev 29, 26; next 28
	_bb27:
	*rsi = (u64)(s_rodata+0x85); // "switch    %zu\n"
	*edi = 0x1;
	*eax ^= *eax;
	*eax = (u32)__printf_chk((int)*edi, (const char*)*rsi, *rdx);

	// basic block 28; prev 27; next 4
	*eax ^= *eax;
	goto _bb4_return;

	// basic block 29; prev 26; next 27
	_bb29:
	*rdx = (u64)(s_rodata+0xc0);
	*rdx = *((u64*)(*rdx+*rax*0x8));
	goto _bb27;

	// basic block 30; prev 6; next 31
	_bb30:
	*rcx = *((u64*)(*rbx+0x8));
	*rdi = (u64)stderr;
	*rdx = (u64)(s_rodata+0x98); // "error: '%s' not a valid number\n"
	*eax ^= *eax;
	*esi = 0x1;
	*eax = (u32)__fprintf_chk((FILE*)*rdi, (int)*esi, (const char*)*rdx, *rcx);

	// basic block 31; prev 30; next 4
	*eax = 0x2;
	goto _bb4_return;

	// basic block 32; prev 21; next 25
	_bb32:
	*rdx = *rdi;
	goto _bb25;

	// basic block 33; prev 8; next 13
	_bb33:
	*ebp ^= *ebp;
	goto _bb13;

	// basic block 34; prev 7; next 35
	_bb34:
	*rdi = (u64)stderr;
	*rcx = *r12;
	*esi = 0x1;
	*eax ^= *eax;
	*rdx = (u64)(s_rodata+0x18); // "error: %zu is too large\n"
	*eax = (u32)__fprintf_chk((FILE*)*rdi, (int)*esi, (const char*)*rdx, *rcx);

	// basic block 35; prev 34; next 4
	*eax = 0x3;
	goto _bb4_return;

	// basic block 36; prev 22; next 25
	_bb36:
	*edx = 0x1;
	goto _bb25;

	// basic block 37; prev 17; next 38
	_bb37:
	*rcx = (u64)stderr;
	*edx = 0x17;
	*esi = 0x1;
	*rdi = (u64)(s_rodata+0x4f); // "error: calloc() failed\n"
	*rax = (u64)fwrite((const void*)*rdi, (size_t)*rsi, (size_t)*rdx, (FILE*)*rcx);

	// basic block 38; prev 37; next 0
	*edi = 0x1;
	exit((int)*edi);

}

void fib_rec(void)
{
#define local1 (*rbp-0x2)

	// basic block 1; prev n/a; next 2, 40
	push_u64(*r15);
	push_u64(*r14);
	push_u64(*r13);
	push_u64(*r12);
	push_u64(*rbp);
	push_u64(*rbx);
	*rsp -= 0xa8;
	*((u64*)(*rsp+0x10)) = *rdi;
	if (*rdi == 0x1)
		goto _bb40_return;

	// basic block 2; prev 1; next 3, 38
	*((u64*)(*rsp+0x18)) = 0x0;
	*rax = *rdi;
	*rax -= 0x1;
	*((u64*)(*rsp+0x8)) = *rax;
	if (*rax == 0x1)
		goto _bb38;

	// basic block 3; prev 37, 2; next 4, 35
	_bb3:
	*((u64*)(*rsp+0x20)) = 0x0;
	*rax -= 0x1;
	*r10 = *rax;
	*((u64*)(*rsp+0x38)) = *rax;
	if (*r10 == 0x1)
		goto _bb35;

	// basic block 4; prev 34, 3; next 5, 32
	_bb4:
	*rax = *r10-0x1;
	*((u64*)(*rsp+0x58)) = *r10;
	*r11 = *rax;
	*((u64*)(*rsp+0x40)) = *rax;
	*((u64*)(*rsp+0x28)) = 0x0;
	if (*r11 == 0x1)
		goto _bb32;

	// basic block 5; prev 31, 4; next 6, 29
	_bb5:
	*rax = *r11-0x1;
	*((u64*)(*rsp+0x60)) = *r11;
	*r9 = *rax;
	*((u64*)(*rsp+0x48)) = *rax;
	*((u64*)(*rsp+0x30)) = 0x0;
	if (*r9 == 0x1)
		goto _bb29;

	// basic block 6; prev 28, 5; next 7, 26
	_bb6:
	*rax = *r9-0x1;
	*ecx ^= *ecx;
	*rbx = *rax;
	*((u64*)(*rsp+0x50)) = *rax;
	if (*rbx == 0x1)
		goto _bb26;

	// basic block 7; prev 25, 6; next 8
	_bb7:
	*r15 = *rbx-0x1;
	*edx ^= *edx;
	*r12 = *r15;

	// basic block 8; prev 23, 7; next 9, 21
	_bb8:
	if (*r12 == 0x1)
		goto _bb21;

	// basic block 9; prev 8; next 10
	*r13 = *r12-0x2;
	*esi ^= *esi;
	*r14 = *r13;

	// basic block 10; prev 20, 9; next 11, 19
	_bb10:
	*eax = 0x1;
	if (*r14 == 0x0)
		goto _bb19;

	// basic block 11; prev 10; next 12, 17
	*rbp = *r14;
	*r8d ^= *r8d;
	if (*rbp == 0x1)
		goto _bb17;

	// basic block 12; prev 16, 11; next 13
	_bb12:
	*r11 = *rbp;
	*r10d ^= *r10d;

	// basic block 13; prev 14, 12; next 14
	_bb13:
	*rdi = *r11-0x1;
	*((u64*)(*rsp+0x98)) = *r9;
	*((u64*)(*rsp+0x90)) = *r10;
	*((u64*)(*rsp+0x88)) = *r8;
	*((u64*)(*rsp+0x80)) = *rsi;
	*((u64*)(*rsp+0x78)) = *rdx;
	*((u64*)(*rsp+0x70)) = *rcx;
	*((u64*)(*rsp+0x68)) = *r11;
	fib_rec();

	// basic block 14; prev 13; next 15, 13
	*r11 = *((u64*)(*rsp+0x68));
	*rcx = *((u64*)(*rsp+0x70));
	*r10 = *((u64*)(*rsp+0x90));
	*rdx = *((u64*)(*rsp+0x78));
	*r11 -= 0x2;
	*rsi = *((u64*)(*rsp+0x80));
	*r8 = *((u64*)(*rsp+0x88));
	*r10 += *rax;
	*r9 = *((u64*)(*rsp+0x98));
	if (*r11 > 0x1)
		goto _bb13;

	// basic block 15; prev 14; next 16, 18
	*rax = *rbp;
	*rdi = local1;
	*rbp -= 0x1;
	*eax &= 0x1;
	*rax += *r10;
	*r8 += *rax;
	if (*rbp <= 0x1)
		goto _bb18;

	// basic block 16; prev 17, 15; next 17, 12
	_bb16:
	*rbp = *rdi;
	if (*rbp != 0x1)
		goto _bb12;

	// basic block 17; prev 11, 16; next 18, 16
	_bb17:
	*eax = 0x1;
	*rbp -= 0x1;
	*rdi = 0xffffffffffffffff;
	*r8 += *rax;
	if (*rbp > 0x1)
		goto _bb16;

	// basic block 18; prev 15, 17; next 19
	_bb18:
	*rax = *r14-0x1;
	*eax &= 0x1;
	*rax += *r8;

	// basic block 19; prev 10, 18; next 20, 41
	_bb19:
	*rsi += *rax;
	*rax = *r14-0x2;
	if (*r14 <= 0x1)
		goto _bb41;

	// basic block 20; prev 19; next 10
	*r14 = *rax;
	goto _bb10;

	// basic block 21; prev 8; next 22
	_bb21:
	*eax = 0x1;
	*r13 = 0xffffffffffffffff;

	// basic block 22; prev 41, 21; next 23, 24
	_bb22:
	*r12 -= 0x1;
	*rdx += *rax;
	if (*r12 <= 0x1)
		goto _bb24;

	// basic block 23; prev 22; next 8
	*r12 = *r13;
	goto _bb8;

	// basic block 24; prev 22; next 25, 27
	_bb24:
	*rsi = *rbx-0x2;
	*ebx &= 0x1;
	*rax = *rbx+*rdx;
	*rcx += *rax;
	if (*r15 <= 0x1)
		goto _bb27;

	// basic block 25; prev 26, 24; next 26, 7
	_bb25:
	*rbx = *rsi;
	if (*rbx != 0x1)
		goto _bb7;

	// basic block 26; prev 6, 25; next 27, 25
	_bb26:
	*eax = 0x1;
	*r15d ^= *r15d;
	*rsi = 0xffffffffffffffff;
	*rcx += *rax;
	if (*r15 > 0x1)
		goto _bb25;

	// basic block 27; prev 24, 26; next 28, 30
	_bb27:
	*rax = *r9;
	*rdx = *r9-0x2;
	*eax &= 0x1;
	*rax += *rcx;
	*((u64*)(*rsp+0x30)) += *rax;
	if (*((u64*)(*rsp+0x50)) <= 0x1)
		goto _bb30;

	// basic block 28; prev 29, 27; next 29, 6
	_bb28:
	*r9 = *rdx;
	if (*r9 != 0x1)
		goto _bb6;

	// basic block 29; prev 5, 28; next 30, 28
	_bb29:
	*((u64*)(*rsp+0x50)) = 0x0;
	*eax = 0x1;
	*rdx = 0xffffffffffffffff;
	*((u64*)(*rsp+0x30)) += *rax;
	if (*((u64*)(*rsp+0x50)) > 0x1)
		goto _bb28;

	// basic block 30; prev 27, 29; next 31, 33
	_bb30:
	*r11 = *((u64*)(*rsp+0x60));
	*rax = *r11;
	*rdx = *r11-0x2;
	*eax &= 0x1;
	*rax += *((u64*)(*rsp+0x30));
	*((u64*)(*rsp+0x28)) += *rax;
	if (*((u64*)(*rsp+0x48)) <= 0x1)
		goto _bb33;

	// basic block 31; prev 32, 30; next 32, 5
	_bb31:
	*r11 = *rdx;
	if (*r11 != 0x1)
		goto _bb5;

	// basic block 32; prev 4, 31; next 33, 31
	_bb32:
	*((u64*)(*rsp+0x48)) = 0x0;
	*eax = 0x1;
	*rdx = 0xffffffffffffffff;
	*((u64*)(*rsp+0x28)) += *rax;
	if (*((u64*)(*rsp+0x48)) > 0x1)
		goto _bb31;

	// basic block 33; prev 30, 32; next 34, 36
	_bb33:
	*r10 = *((u64*)(*rsp+0x58));
	*rax = *r10;
	*rdx = *r10-0x2;
	*eax &= 0x1;
	*rax += *((u64*)(*rsp+0x28));
	*((u64*)(*rsp+0x20)) += *rax;
	if (*((u64*)(*rsp+0x40)) <= 0x1)
		goto _bb36;

	// basic block 34; prev 35, 33; next 35, 4
	_bb34:
	*r10 = *rdx;
	if (*r10 != 0x1)
		goto _bb4;

	// basic block 35; prev 3, 34; next 36, 34
	_bb35:
	*((u64*)(*rsp+0x40)) = 0x0;
	*eax = 0x1;
	*rdx = 0xffffffffffffffff;
	*((u64*)(*rsp+0x20)) += *rax;
	if (*((u64*)(*rsp+0x40)) > 0x1)
		goto _bb34;

	// basic block 36; prev 33, 35; next 37, 39
	_bb36:
	*rax = *((u64*)(*rsp+0x8));
	*rdx = *rax-0x2;
	*eax &= 0x1;
	*rax += *((u64*)(*rsp+0x20));
	*((u64*)(*rsp+0x18)) += *rax;
	if (*((u64*)(*rsp+0x38)) <= 0x1)
		goto _bb39;

	// basic block 37; prev 38, 36; next 38, 3
	_bb37:
	*rax = *rdx;
	*((u64*)(*rsp+0x8)) = *rdx;
	if (*rax != 0x1)
		goto _bb3;

	// basic block 38; prev 2, 37; next 39, 37
	_bb38:
	*((u64*)(*rsp+0x38)) = 0x0;
	*eax = 0x1;
	*rdx = 0xffffffffffffffff;
	*((u64*)(*rsp+0x18)) += *rax;
	if (*((u64*)(*rsp+0x38)) > 0x1)
		goto _bb37;

	// basic block 39; prev 36, 38; next 40
	_bb39:
	*rax = *((u64*)(*rsp+0x10));
	*eax &= 0x1;
	*rax += *((u64*)(*rsp+0x18));
	*((u64*)(*rsp+0x10)) = *rax;

	// basic block 40; prev 1, 39; next n/a
	_bb40_return:
	*rax = *((u64*)(*rsp+0x10));
	*rsp += 0xa8;
	*rbx = pop_u64();
	*rbp = pop_u64();
	*r12 = pop_u64();
	*r13 = pop_u64();
	*r14 = pop_u64();
	*r15 = pop_u64();
	return;

	// basic block 41; prev 19; next 22
	_bb41:
	*rax = *r13;
	*eax &= 0x1;
	*rax += *rsi;
	goto _bb22;

#undef local1
}

void fib_tbl_static(void)
{

	// basic block 1; prev n/a; next 2, 3
	push_u64(*r15);
	push_u64(*r14);
	push_u64(*r13);
	push_u64(*r12);
	*r12 = *rdi;
	push_u64(*rbp);
	push_u64(*rbx);
	*rsp -= 0x18;
	if (*rdi <= 0x1)
		goto _bb3_return;

	// basic block 2; prev 1; next 3, 4
	*rbp = (u64)(s_bss+0x20);
	*rbx = *rdi;
	*r12 = *((u64*)(*rbp+*rdi*0x8));
	if (*r12 == 0x0)
		goto _bb4;

	// basic block 3; prev 1, 9, 2; next n/a
	_bb3_return:
	*rsp += 0x18;
	*rax = *r12;
	*rbx = pop_u64();
	*rbp = pop_u64();
	*r12 = pop_u64();
	*r13 = pop_u64();
	*r14 = pop_u64();
	*r15 = pop_u64();
	return;

	// basic block 4; prev 2; next 5, 9
	_bb4:
	*r12 = *rdi-0x1;
	*r14 = *rdi-0x2;
	if (*rdi == 0x2)
		goto _bb9;

	// basic block 5; prev 4; next 6, 16
	*r13 = *((u64*)(*rbp+*r12*0x8));
	if (*r13 == 0x0)
		goto _bb16;

	// basic block 6; prev 21, 5; next 7, 36
	_bb6:
	if (*r14 <= 0x1)
		goto _bb36;

	// basic block 7; prev 6; next 8, 10
	*r12 = *((u64*)(*rbp+*r14*0x8));
	if (*r12 == 0x0)
		goto _bb10;

	// basic block 8; prev 15, 7; next 9
	_bb8:
	*r12 += *r13;

	// basic block 9; prev 4, 36, 8; next 3
	_bb9:
	*((u64*)(*rbp+*rbx*0x8)) = *r12;
	goto _bb3_return;

	// basic block 10; prev 7; next 11, 15
	_bb10:
	*r12 = *rbx-0x3;
	*rdx = *rbx-0x4;
	if (*rbx == 0x4)
		goto _bb15;

	// basic block 11; prev 10; next 12, 25
	*r15 = *((u64*)(*rbp+*r12*0x8));
	if (*r15 == 0x0)
		goto _bb25;

	// basic block 12; prev 27, 11; next 13, 34
	_bb12:
	if (*rdx <= 0x1)
		goto _bb34;

	// basic block 13; prev 12; next 14, 28
	*r12 = *((u64*)(*rbp+*rdx*0x8));
	if (*r12 == 0x0)
		goto _bb28;

	// basic block 14; prev 30, 13; next 15
	_bb14:
	*r12 += *r15;

	// basic block 15; prev 10, 34, 14; next 8
	_bb15:
	*((u64*)(*rbp+*r14*0x8)) = *r12;
	goto _bb8;

	// basic block 16; prev 5; next 17, 21
	_bb16:
	*rdx = *rdi-0x3;
	*r13d = 0x1;
	if (*r14 == 0x1)
		goto _bb21;

	// basic block 17; prev 16; next 18, 22
	*r13 = *((u64*)(*rbp+*r14*0x8));
	if (*r13 == 0x0)
		goto _bb22;

	// basic block 18; prev 24, 17; next 19, 35
	_bb18:
	if (*rdx <= 0x1)
		goto _bb35;

	// basic block 19; prev 18; next 20, 31
	*rax = *((u64*)(*rbp+*rdx*0x8));
	if (*rax == 0x0)
		goto _bb31;

	// basic block 20; prev 19; next 21
	*r13 += *rax;

	// basic block 21; prev 16, 33, 35, 20; next 6
	_bb21:
	*((u64*)(*rbp+*r12*0x8)) = *r13;
	goto _bb6;

	// basic block 22; prev 17; next 23
	_bb22:
	*rdi = *rdx;
	*((u64*)(*rsp+0x8)) = *rdx;
	fib_tbl_static();

	// basic block 23; prev 22; next 24
	*rdi = *rbx-0x4;
	*r13 = *rax;
	fib_tbl_static();

	// basic block 24; prev 23; next 18
	*rdx = *((u64*)(*rsp+0x8));
	*r13 += *rax;
	*((u64*)(*rbp+*r14*0x8)) = *r13;
	goto _bb18;

	// basic block 25; prev 11; next 26
	_bb25:
	*rdi = *rdx;
	*((u64*)(*rsp+0x8)) = *rdx;
	fib_tbl_static();

	// basic block 26; prev 25; next 27
	*rdi = *rbx-0x5;
	*r15 = *rax;
	fib_tbl_static();

	// basic block 27; prev 26; next 12
	*rdx = *((u64*)(*rsp+0x8));
	*r15 += *rax;
	*((u64*)(*rbp+*r12*0x8)) = *r15;
	goto _bb12;

	// basic block 28; prev 13; next 29
	_bb28:
	*rdi = *rbx-0x5;
	*((u64*)(*rsp+0x8)) = *rdx;
	fib_tbl_static();

	// basic block 29; prev 28; next 30
	*rdi = *rbx-0x6;
	*r12 = *rax;
	fib_tbl_static();

	// basic block 30; prev 29; next 14
	*rdx = *((u64*)(*rsp+0x8));
	*r12 += *rax;
	*((u64*)(*rbp+*rdx*0x8)) = *r12;
	goto _bb14;

	// basic block 31; prev 19; next 32
	_bb31:
	*rdi = *rbx-0x4;
	*((u64*)(*rsp+0x8)) = *rdx;
	fib_tbl_static();

	// basic block 32; prev 31; next 33
	*rdi = *rbx-0x5;
	*r15 = *rax;
	fib_tbl_static();

	// basic block 33; prev 32; next 21
	*rdx = *((u64*)(*rsp+0x8));
	*r15 += *rax;
	*((u64*)(*rbp+*rdx*0x8)) = *r15;
	*r13 += *r15;
	goto _bb21;

	// basic block 34; prev 12; next 15
	_bb34:
	*r12 = *r15+*rdx;
	goto _bb15;

	// basic block 35; prev 18; next 21
	_bb35:
	*r13 += *rdx;
	goto _bb21;

	// basic block 36; prev 6; next 9
	_bb36:
	*r12 = *r14+*r13;
	goto _bb9;

}

void fib_tbl_dyn_(void)
{

	// basic block 1; prev n/a; next 2, 10
	*rax = *rdi;
	if (*rdi <= 0x1)
		goto _bb10_return;

	// basic block 2; prev 1; next 3, 4
	push_u64(*r15);
	push_u64(*r14);
	push_u64(*r13);
	*r13 = *rsi+*rdi*0x8;
	push_u64(*r12);
	*r12 = *rsi;
	push_u64(*rbp);
	push_u64(*rbx);
	*rbx = *rdi;
	*rsp -= 0x28;
	*rax = *((u64*)(*r13));
	if (*rax == 0x0)
		goto _bb4;

	// basic block 3; prev 2; next n/a
	*rsp += 0x28;
	*rbx = pop_u64();
	*rbp = pop_u64();
	*r12 = pop_u64();
	*r13 = pop_u64();
	*r14 = pop_u64();
	*r15 = pop_u64();
	return;

	// basic block 4; prev 2; next 5, 9
	_bb4:
	*rax = *rdi-0x1;
	*r15 = *rdi-0x2;
	if (*rdi == 0x2)
		goto _bb9_return;

	// basic block 5; prev 4; next 6, 17
	*r14 = *rax*0x8;
	*rdx = *rsi+*r14;
	*rbp = *((u64*)(*rdx));
	if (*rbp == 0x0)
		goto _bb17;

	// basic block 6; prev 21, 5; next 7, 34
	_bb6:
	if (*r15 <= 0x1)
		goto _bb34;

	// basic block 7; prev 6; next 8, 11
	*rdx = *r12+*r14*0x1-0x8;
	*rax = *((u64*)(*rdx));
	if (*rax == 0x0)
		goto _bb11;

	// basic block 8; prev 16, 7; next 9
	_bb8:
	*rax += *rbp;

	// basic block 9; prev 4, 34, 8; next n/a
	_bb9_return:
	*((u64*)(*r13)) = *rax;
	*rsp += 0x28;
	*rbx = pop_u64();
	*rbp = pop_u64();
	*r12 = pop_u64();
	*r13 = pop_u64();
	*r14 = pop_u64();
	*r15 = pop_u64();
	return;

	// basic block 10; prev 1; next n/a
	_bb10_return:
	return;

	// basic block 11; prev 7; next 12, 16
	_bb11:
	*rcx = *rbx-0x4;
	*eax = 0x1;
	if (*rbx == 0x4)
		goto _bb16;

	// basic block 12; prev 11; next 13, 28
	*r8 = *r12+*r14*0x1-0x10;
	*r15 = *((u64*)(*r8));
	*((u64*)(*rsp+0x8)) = *r8;
	if (*r15 == 0x0)
		goto _bb28;

	// basic block 13; prev 30, 12; next 14, 35
	_bb13:
	if (*rcx <= 0x1)
		goto _bb35;

	// basic block 14; prev 13; next 15, 31
	*rcx = *r12+*r14*0x1-0x18;
	*rax = *((u64*)(*rcx));
	if (*rax == 0x0)
		goto _bb31;

	// basic block 15; prev 14; next 16
	*rax += *r15;

	// basic block 16; prev 11, 33, 35, 15; next 8
	_bb16:
	*((u64*)(*rdx)) = *rax;
	goto _bb8;

	// basic block 17; prev 5; next 18, 21
	_bb17:
	*r8 = *rdi-0x3;
	*ebp = 0x1;
	if (*r15 == 0x1)
		goto _bb21;

	// basic block 18; prev 17; next 19, 25
	*rbp = *rsi+*r14*0x1-0x8;
	*rcx = *((u64*)(*rbp));
	if (*rcx == 0x0)
		goto _bb25;

	// basic block 19; prev 27, 18; next 20, 36
	_bb19:
	if (*r8 <= 0x1)
		goto _bb36;

	// basic block 20; prev 19; next 21, 22
	*r8 = *r12+*r14*0x1-0x10;
	*rax = *((u64*)(*r8));
	*rbp = *rax+*rcx;
	if (*rax == 0x0)
		goto _bb22;

	// basic block 21; prev 17, 24, 36, 20; next 6
	_bb21:
	*((u64*)(*rdx)) = *rbp;
	goto _bb6;

	// basic block 22; prev 20; next 23
	_bb22:
	*rdi = *rbx-0x4;
	*rsi = *r12;
	*((u64*)(*rsp+0x18)) = *rcx;
	*((u64*)(*rsp+0x10)) = *r8;
	*((u64*)(*rsp+0x8)) = *rdx;
	fib_tbl_dyn_();

	// basic block 23; prev 22; next 24
	*rdi = *rbx-0x5;
	*rsi = *r12;
	*rbp = *rax;
	fib_tbl_dyn_();

	// basic block 24; prev 23; next 21
	*r8 = *((u64*)(*rsp+0x10));
	*rcx = *((u64*)(*rsp+0x18));
	*rbp += *rax;
	*rdx = *((u64*)(*rsp+0x8));
	*((u64*)(*r8)) = *rbp;
	*rbp += *rcx;
	goto _bb21;

	// basic block 25; prev 18; next 26
	_bb25:
	*rdi = *r8;
	*((u64*)(*rsp+0x18)) = *rdx;
	*((u64*)(*rsp+0x10)) = *r8;
	fib_tbl_dyn_();

	// basic block 26; prev 25; next 27
	*rdi = *rbx-0x4;
	*rsi = *r12;
	*((u64*)(*rsp+0x8)) = *rax;
	fib_tbl_dyn_();

	// basic block 27; prev 26; next 19
	*rcx = *((u64*)(*rsp+0x8));
	*rdx = *((u64*)(*rsp+0x18));
	*r8 = *((u64*)(*rsp+0x10));
	*rcx += *rax;
	*((u64*)(*rbp)) = *rcx;
	goto _bb19;

	// basic block 28; prev 12; next 29
	_bb28:
	*rdi = *rcx;
	*rsi = *r12;
	*((u64*)(*rsp+0x18)) = *rdx;
	*((u64*)(*rsp+0x10)) = *rcx;
	fib_tbl_dyn_();

	// basic block 29; prev 28; next 30
	*rdi = *rbx-0x5;
	*rsi = *r12;
	*r15 = *rax;
	fib_tbl_dyn_();

	// basic block 30; prev 29; next 13
	*r8 = *((u64*)(*rsp+0x8));
	*rdx = *((u64*)(*rsp+0x18));
	*r15 += *rax;
	*rcx = *((u64*)(*rsp+0x10));
	*((u64*)(*r8)) = *r15;
	goto _bb13;

	// basic block 31; prev 14; next 32
	_bb31:
	*rdi = *rbx-0x5;
	*rsi = *r12;
	*((u64*)(*rsp+0x10)) = *rcx;
	*((u64*)(*rsp+0x8)) = *rdx;
	fib_tbl_dyn_();

	// basic block 32; prev 31; next 33
	*rdi = *rbx-0x6;
	*rsi = *r12;
	*r14 = *rax;
	fib_tbl_dyn_();

	// basic block 33; prev 32; next 16
	*rcx = *((u64*)(*rsp+0x10));
	*rdx = *((u64*)(*rsp+0x8));
	*r14 += *rax;
	*((u64*)(*rcx)) = *r14;
	*rax = *r14+*r15;
	goto _bb16;

	// basic block 34; prev 6; next 9
	_bb34:
	*rax = *rbp+*r15*0x1;
	goto _bb9_return;

	// basic block 35; prev 13; next 16
	_bb35:
	*rax = *r15+*rcx;
	goto _bb16;

	// basic block 36; prev 19; next 21
	_bb36:
	*rbp = *rcx+*r8;
	goto _bb21;

}

// </fn-defn>

// <init>
static void init(void)
{
	init_regs();
	init_stack();
	init_sections();
}
// </init>
// <main>
int main(int argc, char * argv[])
{
	init();
	*edi = argc;
	*rsi = (u64)argv;
	main_();
	return *eax;
}
// </main>
