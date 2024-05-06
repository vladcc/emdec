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
	static byte s_rodata_[0x17c] = {0x01,0x00,0x02,0x00,0x97,0xe7,0xff,0xff,0xb2,0xe7,0xff,0xff,0xcd,0xe7,0xff,0xff,0xe8,0xe7,0xff,0xff,0x03,0xe8,0xff,0xff,0x1e,0xe8,0xff,0xff,0x39,0xe8,0xff,0xff,0x54,0xe8,0xff,0xff,0x6f,0xe8,0xff,0xff,0x8a,0xe8,0xff,0xff,0xa5,0xe8,0xff,0xff,0xc0,0xe8,0xff,0xff,0xdb,0xe8,0xff,0xff,0xf6,0xe8,0xff,0xff,0x11,0xe9,0xff,0xff,0x2c,0xe9,0xff,0xff,0x47,0xe9,0xff,0xff,0x62,0xe9,0xff,0xff,0x7d,0xe9,0xff,0xff,0x98,0xe9,0xff,0xff,0xb3,0xe9,0xff,0xff,0xce,0xe9,0xff,0xff,0xe9,0xe9,0xff,0xff,0x04,0xea,0xff,0xff,0x1f,0xea,0xff,0xff,0x3a,0xea,0xff,0xff,0x55,0xea,0xff,0xff,0x70,0xea,0xff,0xff,0x8b,0xea,0xff,0xff,0xa6,0xea,0xff,0xff,0xc1,0xea,0xff,0xff,0xdc,0xea,0xff,0xff,0xf7,0xea,0xff,0xff,0x12,0xeb,0xff,0xff,0x2d,0xeb,0xff,0xff,0x48,0xeb,0xff,0xff,0x63,0xeb,0xff,0xff,0x7e,0xeb,0xff,0xff,0x99,0xeb,0xff,0xff,0xb4,0xeb,0xff,0xff,0xcf,0xeb,0xff,0xff,0xea,0xeb,0xff,0xff,0x05,0xec,0xff,0xff,0x20,0xec,0xff,0xff,0x3b,0xec,0xff,0xff,0x56,0xec,0xff,0xff,0x71,0xec,0xff,0xff,0x8c,0xec,0xff,0xff,0xbc,0xec,0xff,0xff,0xf1,0xec,0xff,0xff,0x26,0xed,0xff,0xff,0x5b,0xed,0xff,0xff,0x90,0xed,0xff,0xff,0xc5,0xed,0xff,0xff,0xfa,0xed,0xff,0xff,0x2f,0xee,0xff,0xff,0x64,0xee,0xff,0xff,0x99,0xee,0xff,0xff,0xce,0xee,0xff,0xff,0x03,0xef,0xff,0xff,0x38,0xef,0xff,0xff,0x6d,0xef,0xff,0xff,0xa2,0xef,0xff,0xff,0xd7,0xef,0xff,0xff,0x0c,0xf0,0xff,0xff,0x41,0xf0,0xff,0xff,0x76,0xf0,0xff,0xff,0xab,0xf0,0xff,0xff,0xe0,0xf0,0xff,0xff,0x15,0xf1,0xff,0xff,0x4a,0xf1,0xff,0xff,0x7f,0xf1,0xff,0xff,0xb4,0xf1,0xff,0xff,0xe9,0xf1,0xff,0xff,0x1e,0xf2,0xff,0xff,0x53,0xf2,0xff,0xff,0x88,0xf2,0xff,0xff,0xbd,0xf2,0xff,0xff,0xf2,0xf2,0xff,0xff,0x27,0xf3,0xff,0xff,0x5c,0xf3,0xff,0xff,0x91,0xf3,0xff,0xff,0xc6,0xf3,0xff,0xff,0xfb,0xf3,0xff,0xff,0x30,0xf4,0xff,0xff,0x65,0xf4,0xff,0xff,0x9a,0xf4,0xff,0xff,0xcf,0xf4,0xff,0xff,0x04,0xf5,0xff,0xff,0x39,0xf5,0xff,0xff,0x6e,0xf5,0xff,0xff,0xa3,0xf5,0xff,0xff,0xd5,0xf5,0xff,0xff,0x07,0xf6,0xff,0xff,};
	static byte s_data_[0x270] = {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x60,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x02,0x00,0x00,0x00,0x00,0x00,0x65,0x72,0x72,0x6f,0x72,0x3a,0x20,0x63,0x61,0x6c,0x6c,0x6f,0x63,0x28,0x29,0x20,0x66,0x61,0x69,0x6c,0x65,0x64,0x0a,0x00,0xf2,0xf4,0xff,0xff,0xff,0xf4,0xff,0xff,0x0c,0xf5,0xff,0xff,0x19,0xf5,0xff,0xff,0x26,0xf5,0xff,0xff,0x33,0xf5,0xff,0xff,0x40,0xf5,0xff,0xff,0x4d,0xf5,0xff,0xff,0x5a,0xf5,0xff,0xff,0x67,0xf5,0xff,0xff,0x74,0xf5,0xff,0xff,0x81,0xf5,0xff,0xff,0x8e,0xf5,0xff,0xff,0x9b,0xf5,0xff,0xff,0xa8,0xf5,0xff,0xff,0xb5,0xf5,0xff,0xff,0xc2,0xf5,0xff,0xff,0xcf,0xf5,0xff,0xff,0xdc,0xf5,0xff,0xff,0xe9,0xf5,0xff,0xff,0xf6,0xf5,0xff,0xff,0x03,0xf6,0xff,0xff,0x10,0xf6,0xff,0xff,0x1d,0xf6,0xff,0xff,0x2a,0xf6,0xff,0xff,0x37,0xf6,0xff,0xff,0x44,0xf6,0xff,0xff,0x51,0xf6,0xff,0xff,0x5e,0xf6,0xff,0xff,0x6b,0xf6,0xff,0xff,0x78,0xf6,0xff,0xff,0x85,0xf6,0xff,0xff,0x92,0xf6,0xff,0xff,0x9f,0xf6,0xff,0xff,0xac,0xf6,0xff,0xff,0xb9,0xf6,0xff,0xff,0xc6,0xf6,0xff,0xff,0xd3,0xf6,0xff,0xff,0xe0,0xf6,0xff,0xff,0xed,0xf6,0xff,0xff,0xfa,0xf6,0xff,0xff,0x07,0xf7,0xff,0xff,0x14,0xf7,0xff,0xff,0x21,0xf7,0xff,0xff,0x2e,0xf7,0xff,0xff,0x3b,0xf7,0xff,0xff,0x48,0xf7,0xff,0xff,0x55,0xf7,0xff,0xff,0x63,0xf7,0xff,0xff,0x76,0xf7,0xff,0xff,0x89,0xf7,0xff,0xff,0x9c,0xf7,0xff,0xff,0xaf,0xf7,0xff,0xff,0xc2,0xf7,0xff,0xff,0xd5,0xf7,0xff,0xff,0xe8,0xf7,0xff,0xff,0xfb,0xf7,0xff,0xff,0x0e,0xf8,0xff,0xff,0x21,0xf8,0xff,0xff,0x34,0xf8,0xff,0xff,0x47,0xf8,0xff,0xff,0x5a,0xf8,0xff,0xff,0x6d,0xf8,0xff,0xff,0x80,0xf8,0xff,0xff,0x93,0xf8,0xff,0xff,0xa6,0xf8,0xff,0xff,0xb9,0xf8,0xff,0xff,0xcc,0xf8,0xff,0xff,0xdf,0xf8,0xff,0xff,0xf2,0xf8,0xff,0xff,0x05,0xf9,0xff,0xff,0x18,0xf9,0xff,0xff,0x2b,0xf9,0xff,0xff,0x3e,0xf9,0xff,0xff,0x51,0xf9,0xff,0xff,0x64,0xf9,0xff,0xff,0x77,0xf9,0xff,0xff,0x8a,0xf9,0xff,0xff,0x9d,0xf9,0xff,0xff,0xb0,0xf9,0xff,0xff,0xc3,0xf9,0xff,0xff,0xd6,0xf9,0xff,0xff,0xe9,0xf9,0xff,0xff,0xfc,0xf9,0xff,0xff,0x0f,0xfa,0xff,0xff,0x22,0xfa,0xff,0xff,0x35,0xfa,0xff,0xff,0x45,0xfa,0xff,0xff,0x55,0xfa,0xff,0xff,0x65,0xfa,0xff,0xff,0x75,0xfa,0xff,0xff,0x85,0xfa,0xff,0xff,0x95,0xfa,0xff,0xff,0xa5,0xfa,0xff,0xff,0x55,0x73,0x65,0x3a,0x20,0x66,0x69,0x62,0x20,0x3c,0x6e,0x75,0x6d,0x3e,0x0a,0x00,0x25,0x7a,0x75,0x00,0x00,0x00,0x00,0x00,0x65,0x72,0x72,0x6f,0x72,0x3a,0x20,0x27,0x25,0x73,0x27,0x20,0x6e,0x6f,0x74,0x20,0x61,0x20,0x76,0x61,0x6c,0x69,0x64,0x20,0x6e,0x75,0x6d,0x62,0x65,0x72,0x0a,0x00,0x65,0x72,0x72,0x6f,0x72,0x3a,0x20,0x25,0x7a,0x75,0x20,0x69,0x73,0x20,0x74,0x6f,0x6f,0x20,0x6c,0x61,0x72,0x67,0x65,0x0a,0x00,0x72,0x65,0x63,0x75,0x72,0x73,0x69,0x76,0x65,0x20,0x25,0x7a,0x75,0x0a,0x00,0x73,0x74,0x61,0x74,0x69,0x63,0x20,0x20,0x20,0x20,0x25,0x7a,0x75,0x0a,0x00,0x64,0x79,0x6e,0x61,0x6d,0x69,0x63,0x20,0x20,0x20,0x25,0x7a,0x75,0x0a,0x00,0x6c,0x6f,0x6f,0x70,0x20,0x20,0x20,0x20,0x20,0x20,0x25,0x7a,0x75,0x0a,0x00,0x73,0x77,0x69,0x74,0x63,0x68,0x20,0x20,0x20,0x20,0x25,0x7a,0x75,0x0a,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x40,0x00,0x00,0x00,0x00,0x00,0x00,};
	static byte s_bss_[0x4000610];

	s_rodata = s_rodata_;
	s_data = s_data_;
	s_bss = s_bss_;
}
// </sections>

// <fn-dcl>
void init_regs_(void);
void init_stack_(void);
void push_u64_(void);
void pop_u64_(void);
void init_sections_(void);
void fib_rec(void);
void fib_tbl_static(void);
void fib_tbl_dyn_(void);
void fib_tbl_dyn(void);
void fib_loop(void);
void fib_switch(void);
void main__(void);
void init_(void);
void main_(void);
// </fn-dcl>

// <fn-defn>
void init_regs_(void)
{

	// basic block 1; prev n/a; next n/a
	push_u64(*rbp);
	*rbp = *rsp;
	*rax = (u64)(s_bss+0x268);
	*((u64*)(s_bss+0x20)) = *rax;
	*rax = (u64)(s_bss+0x268);
	*((u64*)(s_bss+0x28)) = *rax;
	*rax = (u64)(s_bss+0x268);
	*((u64*)(s_bss+0x30)) = *rax;
	*rax = (u64)(s_bss+0x269);
	*((u64*)(s_bss+0x38)) = *rax;
	*rax = (u64)(s_bss+0x268);
	*((u64*)(s_bss+0x40)) = *rax;
	*rax = (u64)(s_bss+0x270);
	*((u64*)(s_bss+0x48)) = *rax;
	*rax = (u64)(s_bss+0x270);
	*((u64*)(s_bss+0x50)) = *rax;
	*rax = (u64)(s_bss+0x270);
	*((u64*)(s_bss+0x58)) = *rax;
	*rax = (u64)(s_bss+0x271);
	*((u64*)(s_bss+0x60)) = *rax;
	*rax = (u64)(s_bss+0x270);
	*((u64*)(s_bss+0x68)) = *rax;
	*rax = (u64)(s_bss+0x278);
	*((u64*)(s_bss+0x70)) = *rax;
	*rax = (u64)(s_bss+0x278);
	*((u64*)(s_bss+0x78)) = *rax;
	*rax = (u64)(s_bss+0x278);
	*((u64*)(s_bss+0x80)) = *rax;
	*rax = (u64)(s_bss+0x279);
	*((u64*)(s_bss+0x88)) = *rax;
	*rax = (u64)(s_bss+0x278);
	*((u64*)(s_bss+0x90)) = *rax;
	*rax = (u64)(s_bss+0x280);
	*((u64*)(s_bss+0x98)) = *rax;
	*rax = (u64)(s_bss+0x280);
	*((u64*)(s_bss+0xa0)) = *rax;
	*rax = (u64)(s_bss+0x280);
	*((u64*)(s_bss+0xa8)) = *rax;
	*rax = (u64)(s_bss+0x281);
	*((u64*)(s_bss+0xb0)) = *rax;
	*rax = (u64)(s_bss+0x280);
	*((u64*)(s_bss+0xb8)) = *rax;
	*rax = (u64)(s_bss+0x288);
	*((u64*)(s_bss+0xc0)) = *rax;
	*rax = (u64)(s_bss+0x288);
	*((u64*)(s_bss+0xc8)) = *rax;
	*rax = (u64)(s_bss+0x288);
	*((u64*)(s_bss+0xd0)) = *rax;
	*rax = (u64)(s_bss+0x288);
	*((u64*)(s_bss+0xd8)) = *rax;
	*rax = (u64)(s_bss+0x290);
	*((u64*)(s_bss+0xe0)) = *rax;
	*rax = (u64)(s_bss+0x290);
	*((u64*)(s_bss+0xe8)) = *rax;
	*rax = (u64)(s_bss+0x290);
	*((u64*)(s_bss+0xf0)) = *rax;
	*rax = (u64)(s_bss+0x290);
	*((u64*)(s_bss+0xf8)) = *rax;
	*rax = (u64)(s_bss+0x298);
	*((u64*)(s_bss+0x100)) = *rax;
	*rax = (u64)(s_bss+0x298);
	*((u64*)(s_bss+0x108)) = *rax;
	*rax = (u64)(s_bss+0x298);
	*((u64*)(s_bss+0x110)) = *rax;
	*rax = (u64)(s_bss+0x298);
	*((u64*)(s_bss+0x118)) = *rax;
	*rax = (u64)(s_bss+0x2a0);
	*((u64*)(s_bss+0x120)) = *rax;
	*rax = (u64)(s_bss+0x2a0);
	*((u64*)(s_bss+0x128)) = *rax;
	*rax = (u64)(s_bss+0x2a0);
	*((u64*)(s_bss+0x130)) = *rax;
	*rax = (u64)(s_bss+0x2a0);
	*((u64*)(s_bss+0x138)) = *rax;
	*rax = (u64)(s_bss+0x2a8);
	*((u64*)(s_bss+0x140)) = *rax;
	*rax = (u64)(s_bss+0x2a8);
	*((u64*)(s_bss+0x148)) = *rax;
	*rax = (u64)(s_bss+0x2a8);
	*((u64*)(s_bss+0x150)) = *rax;
	*rax = (u64)(s_bss+0x2a8);
	*((u64*)(s_bss+0x158)) = *rax;
	*rax = (u64)(s_bss+0x2b0);
	*((u64*)(s_bss+0x160)) = *rax;
	*rax = (u64)(s_bss+0x2b0);
	*((u64*)(s_bss+0x168)) = *rax;
	*rax = (u64)(s_bss+0x2b0);
	*((u64*)(s_bss+0x170)) = *rax;
	*rax = (u64)(s_bss+0x2b0);
	*((u64*)(s_bss+0x178)) = *rax;
	*rax = (u64)(s_bss+0x2b8);
	*((u64*)(s_bss+0x180)) = *rax;
	*rax = (u64)(s_bss+0x2b8);
	*((u64*)(s_bss+0x188)) = *rax;
	*rax = (u64)(s_bss+0x2b8);
	*((u64*)(s_bss+0x190)) = *rax;
	*rax = (u64)(s_bss+0x2b8);
	*((u64*)(s_bss+0x198)) = *rax;
	*rax = (u64)(s_bss+0x2c0);
	*((u64*)(s_bss+0x1a0)) = *rax;
	*rax = (u64)(s_bss+0x2c0);
	*((u64*)(s_bss+0x1a8)) = *rax;
	*rax = (u64)(s_bss+0x2c0);
	*((u64*)(s_bss+0x1b0)) = *rax;
	*rax = (u64)(s_bss+0x2c0);
	*((u64*)(s_bss+0x1b8)) = *rax;
	*rax = (u64)(s_bss+0x2c8);
	*((u64*)(s_bss+0x1c0)) = *rax;
	*rax = (u64)(s_bss+0x2c8);
	*((u64*)(s_bss+0x1c8)) = *rax;
	*rax = (u64)(s_bss+0x2c8);
	*((u64*)(s_bss+0x1d0)) = *rax;
	*rax = (u64)(s_bss+0x2c8);
	*((u64*)(s_bss+0x1d8)) = *rax;
	*rax = (u64)(s_bss+0x2d0);
	*((u64*)(s_bss+0x1e0)) = *rax;
	*rax = (u64)(s_bss+0x2d0);
	*((u64*)(s_bss+0x1e8)) = *rax;
	*rax = (u64)(s_bss+0x2d0);
	*((u64*)(s_bss+0x1f0)) = *rax;
	*rax = (u64)(s_bss+0x2d0);
	*((u64*)(s_bss+0x1f8)) = *rax;
	*rax = (u64)(s_bss+0x2d8);
	*((u64*)(s_bss+0x200)) = *rax;
	*rax = (u64)(s_bss+0x2d8);
	*((u64*)(s_bss+0x208)) = *rax;
	*rax = (u64)(s_bss+0x2d8);
	*((u64*)(s_bss+0x210)) = *rax;
	*rax = (u64)(s_bss+0x2d8);
	*((u64*)(s_bss+0x218)) = *rax;
	*rax = (u64)(s_bss+0x2e0);
	*((u64*)(s_bss+0x220)) = *rax;
	*rax = (u64)(s_bss+0x2e0);
	*((u64*)(s_bss+0x228)) = *rax;
	*rax = (u64)(s_bss+0x2e0);
	*((u64*)(s_bss+0x230)) = *rax;
	*rax = (u64)(s_bss+0x2e0);
	*((u64*)(s_bss+0x238)) = *rax;
	*rbp = pop_u64();
	return;

}

void init_stack_(void)
{

	// basic block 1; prev n/a; next n/a
	push_u64(*rbp);
	*rbp = *rsp;
	*rax = *((u64*)(s_bss+0x120));
	*rdx = (u64)(s_bss+0x300);
	*rdx = *rdx+0x3fffff8;
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x120));
	*rax = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rbp = pop_u64();
	return;

}

void push_u64_(void)
{
#define local1 (*rbp-0x8)

	// basic block 1; prev n/a; next n/a
	push_u64(*rbp);
	*rbp = *rsp;
	*((u64*)(local1)) = *rdi;
	*rax = *((u64*)(s_bss+0x120));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x120));
	*rdx -= 0x8;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x120));
	*rax = *((u64*)(*rax));
	*rdx = *rax;
	*rax = *((u64*)(local1));
	*((u64*)(*rdx)) = *rax;
	*rbp = pop_u64();
	return;

#undef local1
}

void pop_u64_(void)
{
#define local1 (*rbp-0x8)

	// basic block 1; prev n/a; next n/a
	push_u64(*rbp);
	*rbp = *rsp;
	*rax = *((u64*)(s_bss+0x120));
	*rax = *((u64*)(*rax));
	*rax = *((u64*)(*rax));
	*((u64*)(local1)) = *rax;
	*rax = *((u64*)(s_bss+0x120));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x120));
	*rdx += 0x8;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(local1));
	*rbp = pop_u64();
	return;

#undef local1
}

void init_sections_(void)
{

	// basic block 1; prev n/a; next n/a
	push_u64(*rbp);
	*rbp = *rsp;
	*rax = (u64)(s_data+0x20);
	*((u64*)(s_bss+0x240)) = *rax;
	*rax = (u64)(s_data+0x260);
	*((u64*)(s_bss+0x248)) = *rax;
	*rax = (u64)(s_bss+0x4000300);
	*((u64*)(s_bss+0x250)) = *rax;
	*rbp = pop_u64();
	return;

}

void fib_rec(void)
{
#define local1 (*rbp-0x8)

	// basic block 1; prev n/a; next 2
	push_u64(*rbp);
	*rbp = *rsp;
	push_u64(*rbx);
	*rsp -= 0x8;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rdi = *rax;
	push_u64_();

	// basic block 2; prev 1; next 3
	*rdx = *((u64*)(s_bss+0x120));
	*rax = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x48));
	*rax = *((u64*)(*rax));
	*rdi = *rax;
	push_u64_();

	// basic block 3; prev 2; next 4, 7
	*rax = *((u64*)(s_bss+0x120));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x120));
	*rdx -= 0x18;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x18;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rax = *((u64*)(*rax));
	if (*rax <= 0x1)
		goto _bb7;

	// basic block 4; prev 3; next 5
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rdx -= 0x1;
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	fib_rec();

	// basic block 5; prev 4; next 6
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0x48));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rdx -= 0x2;
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	fib_rec();

	// basic block 6; prev 5; next 8
	*rax = *((u64*)(s_bss+0x20));
	*rcx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x48));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rdx += *rcx;
	*((u64*)(*rax)) = *rdx;
	goto _bb8;

	// basic block 7; prev 3; next 8
	_bb7:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;

	// basic block 8; prev 6, 7; next 9
	_bb8:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x48));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(s_bss+0x120));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rbx = *((u64*)(s_bss+0x100));
	pop_u64_();

	// basic block 9; prev 8; next n/a
	*((u64*)(*rbx)) = *rax;
	*rbx = *((u64*)(local1));
	*rsp = *rbp;
	*rbp = pop_u64();
	return;

#undef local1
}

void fib_tbl_static(void)
{
#define local1 (*rbp-0x8)

	// basic block 1; prev n/a; next 2
	push_u64(*rbp);
	*rbp = *rsp;
	push_u64(*rbx);
	*rsp -= 0x8;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rdi = *rax;
	push_u64_();

	// basic block 2; prev 1; next 3
	*rdx = *((u64*)(s_bss+0x120));
	*rax = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x48));
	*rax = *((u64*)(*rax));
	*rdi = *rax;
	push_u64_();

	// basic block 3; prev 2; next 4, 5
	*rax = *((u64*)(s_bss+0x120));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x120));
	*rdx -= 0x18;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x18;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rax = *((u64*)(*rax));
	if (*rax > 0x1)
		goto _bb5;

	// basic block 4; prev 3; next 10
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	goto _bb10;

	// basic block 5; prev 3; next 6, 7
	_bb5:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x98));
	*rdx <<= 0x3;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x250));
	*rdx = *rax+0x20;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(*rax));
	*rax += *rdx;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(*rax));
	if (*rax == 0x0)
		goto _bb7;

	// basic block 6; prev 5; next 10
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x98));
	*rdx <<= 0x3;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x250));
	*rdx = *rax+0x20;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(*rax));
	*rax += *rdx;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	goto _bb10;

	// basic block 7; prev 5; next 8
	_bb7:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rdx -= 0x1;
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	fib_tbl_static();

	// basic block 8; prev 7; next 9
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0x48));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rdx -= 0x2;
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	fib_tbl_static();

	// basic block 9; prev 8; next 10
	*rax = *((u64*)(s_bss+0x48));
	*rcx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x70));
	*rdx += *rcx;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x98));
	*rdx <<= 0x3;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x250));
	*rdx = *rax+0x20;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x70));
	*rdx = *((u64*)(s_bss+0x98));
	*rcx = *((u64*)(*rdx));
	*rdx = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*rdx += *rcx;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x98));
	*rdx <<= 0x3;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x250));
	*rdx = *rax+0x20;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(*rax));
	*rax += *rdx;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;

	// basic block 10; prev 4, 6, 9; next 11
	_bb10:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x48));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(s_bss+0x120));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rbx = *((u64*)(s_bss+0x100));
	pop_u64_();

	// basic block 11; prev 10; next n/a
	*((u64*)(*rbx)) = *rax;
	*rbx = *((u64*)(local1));
	*rsp = *rbp;
	*rbp = pop_u64();
	return;

#undef local1
}

void fib_tbl_dyn_(void)
{
#define local1 (*rbp-0x8)

	// basic block 1; prev n/a; next 2
	push_u64(*rbp);
	*rbp = *rsp;
	push_u64(*rbx);
	*rsp -= 0x8;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rdi = *rax;
	push_u64_();

	// basic block 2; prev 1; next 3
	*rdx = *((u64*)(s_bss+0x120));
	*rax = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x48));
	*rax = *((u64*)(*rax));
	*rdi = *rax;
	push_u64_();

	// basic block 3; prev 2; next 4, 5
	*rax = *((u64*)(s_bss+0x120));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x120));
	*rdx -= 0x18;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x18;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	*rax = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x20;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rax = *((u64*)(*rax));
	if (*rax > 0x1)
		goto _bb5;

	// basic block 4; prev 3; next 10
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	goto _bb10;

	// basic block 5; prev 3; next 6, 7
	_bb5:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x98));
	*rdx <<= 0x3;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x20;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rcx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rdx += *rcx;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(*rax));
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(*rax));
	if (*rax == 0x0)
		goto _bb7;

	// basic block 6; prev 5; next 10
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x98));
	*rdx <<= 0x3;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x20;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rcx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rdx += *rcx;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(*rax));
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	goto _bb10;

	// basic block 7; prev 5; next 8
	_bb7:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x98));
	*rdx -= 0x1;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x20;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x98));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	fib_tbl_dyn_();

	// basic block 8; prev 7; next 9
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0x48));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x98));
	*rdx -= 0x2;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x20;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x98));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	fib_tbl_dyn_();

	// basic block 9; prev 8; next 10
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x70));
	*rdx <<= 0x3;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x20;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rcx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x70));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rdx += *rcx;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x98));
	*rcx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x48));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x98));
	*rdx += *rcx;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(*rax));
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;

	// basic block 10; prev 4, 6, 9; next 11
	_bb10:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x48));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(s_bss+0x120));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rbx = *((u64*)(s_bss+0x100));
	pop_u64_();

	// basic block 11; prev 10; next n/a
	*((u64*)(*rbx)) = *rax;
	*rbx = *((u64*)(local1));
	*rsp = *rbp;
	*rbp = pop_u64();
	return;

#undef local1
}

void fib_tbl_dyn(void)
{
#define local1 (*rbp-0x8)

	// basic block 1; prev n/a; next 2
	push_u64(*rbp);
	*rbp = *rsp;
	push_u64(*rbx);
	*rsp -= 0x8;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rdi = *rax;
	push_u64_();

	// basic block 2; prev 1; next 3
	*rdx = *((u64*)(s_bss+0x120));
	*rax = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x120));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x120));
	*rdx -= 0x20;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x18;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rdx += 0x1;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0xc8));
	*((u64*)(*rax)) = 0x8;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0xe0));
	*rax = *((u64*)(*rax));
	*rsi = *rdx;
	*rdi = *rax;
	*rax = (u64)calloc((size_t)*rdi, (size_t)*rsi);

	// basic block 3; prev 2; next 4, 6
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x10;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x10;
	*rax = *((u64*)(*rax));
	if (*rax != 0x0)
		goto _bb6;

	// basic block 4; prev 3; next 5
	*rdx = (u64)stderr;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0x70));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0xa0));
	*((u64*)(*rax)) = 0x17;
	*rax = *((u64*)(s_bss+0xc8));
	*((u64*)(*rax)) = 0x1;
	*rax = *((u64*)(s_bss+0x240));
	*rdx = *rax+0x8;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x70));
	*rax = *((u64*)(*rax));
	*rsi = *rax;
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0xc0));
	*rax = *((u64*)(*rax));
	*rcx = *((u64*)(s_bss+0xe0));
	*rcx = *((u64*)(*rcx));
	*rdi = *rcx;
	*rbx = *((u64*)(s_bss+0x20));
	*rcx = *rsi;
	*rsi = *rax;
	*rax = (u64)fwrite((const void*)*rdi, (size_t)*rsi, (size_t)*rdx, (FILE*)*rcx);

	// basic block 5; prev 4; next 6
	*((u64*)(*rbx)) = *rax;
	*rax = *((u64*)(s_bss+0xe8));
	*((u64*)(*rax)) = 0x1;
	*rax = *((u64*)(s_bss+0xe8));
	*rax = *((u64*)(*rax));
	*edi = *eax;
	exit((int)*edi);

	// basic block 6; prev 3, 5; next 7
	_bb6:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x10;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x98));
	*rax = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	fib_tbl_dyn_();

	// basic block 7; prev 6; next 8
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x10;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0xe0));
	*rax = *((u64*)(*rax));
	*rdi = *rax;
	free((void*)*rdi);

	// basic block 8; prev 7; next 9
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(s_bss+0x120));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rbx = *((u64*)(s_bss+0x100));
	pop_u64_();

	// basic block 9; prev 8; next n/a
	*((u64*)(*rbx)) = *rax;
	*rbx = *((u64*)(local1));
	*rsp = *rbp;
	*rbp = pop_u64();
	return;

#undef local1
}

void fib_loop(void)
{
#define local1 (*rbp-0x8)

	// basic block 1; prev n/a; next 2
	push_u64(*rbp);
	*rbp = *rsp;
	push_u64(*rbx);
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rdi = *rax;
	push_u64_();

	// basic block 2; prev 1; next 3, 4
	*rdx = *((u64*)(s_bss+0x120));
	*rax = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x28;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x28;
	*rax = *((u64*)(*rax));
	if (*rax > 0x1)
		goto _bb4;

	// basic block 3; prev 2; next 8
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x28;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	goto _bb8;

	// basic block 4; prev 2; next 6
	_bb4:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x0;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x20;
	*((u64*)(*rax)) = 0x1;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x20;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rcx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rdx += *rcx;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x18;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x10;
	*((u64*)(*rax)) = 0x2;
	goto _bb6;

	// basic block 5; prev 6; next 6
	_bb5:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x20;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x20;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x20;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rcx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rdx += *rcx;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x18;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x10;
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x10;
	*rcx = *rax;
	*rax = *rdx+0x1;
	*((u64*)(*rcx)) = *rax;

	// basic block 6; prev 4, 5; next 7, 5
	_bb6:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x10;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x28;
	*rax = *((u64*)(*rax));
	if (*rdx < *rax)
		goto _bb5;

	// basic block 7; prev 6; next 8
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;

	// basic block 8; prev 3, 7; next 9
	_bb8:
	*rbx = *((u64*)(s_bss+0x100));
	pop_u64_();

	// basic block 9; prev 8; next n/a
	*((u64*)(*rbx)) = *rax;
	*rbx = *((u64*)(local1));
	*rsp = *rbp;
	*rbp = pop_u64();
	return;

#undef local1
}

void fib_switch(void)
{
#define local1 (*rbp-0x10)
#define local2 (*rbp-0x8)

	// basic block 1; prev n/a; next 2
	push_u64(*rbp);
	*rbp = *rsp;
	push_u64(*rbx);
	*rsp -= 0x10;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rdi = *rax;
	push_u64_();

	// basic block 2; prev 1; next 3, 99
	*rdx = *((u64*)(s_bss+0x120));
	*rax = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x18;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x0;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rax = *((u64*)(*rax));
	if (*rax > 0x5d)
		goto _bb99;

	// basic block 3; prev 2; next 4, 100
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rax = *((u64*)(*rax));
	*((u64*)(local1)) = *rax;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x18;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x98));
	*rdx <<= 0x2;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x240));
	*rdx = *rax+0x20;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(*rax));
	*rax += *rdx;
	*edx = *((u32*)(*rax));
	*rax = *((u64*)(s_bss+0x28));
	*edx = *edx;
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x28));
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x240));
	*rdx = *rax+0x20;
	*rax = *((u64*)(s_bss+0x98));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rcx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rdx += *rcx;
	*((u64*)(*rax)) = *rdx;
	if (*((u64*)(local1)) > 0x5d)
		goto _bb100;

	// basic block 4; prev 3; next 5
	u64 switch_var1 = *((u64*)(local1));
	*rax = *((u64*)(local1));
	*rdx = *rax*0x4;
	*rax = (u64)(s_rodata+0x4);
	*eax = *((u32*)(*rdx+*rax));
	*rax = (i64)(*eax);
	*rdx = (u64)(s_rodata+0x4);
	*rax += *rdx;
	// jump_reg rax

	switch (switch_var1)
	{
		case 0: goto _bb5_case_0;
		case 1: goto _bb6_case_1;
		case 2: goto _bb7_case_2;
		case 3: goto _bb8_case_3;
		case 4: goto _bb9_case_4;
		case 5: goto _bb10_case_5;
		case 6: goto _bb11_case_6;
		case 7: goto _bb12_case_7;
		case 8: goto _bb13_case_8;
		case 9: goto _bb14_case_9;
		case 10: goto _bb15_case_10;
		case 11: goto _bb16_case_11;
		case 12: goto _bb17_case_12;
		case 13: goto _bb18_case_13;
		case 14: goto _bb19_case_14;
		case 15: goto _bb20_case_15;
		case 16: goto _bb21_case_16;
		case 17: goto _bb22_case_17;
		case 18: goto _bb23_case_18;
		case 19: goto _bb24_case_19;
		case 20: goto _bb25_case_20;
		case 21: goto _bb26_case_21;
		case 22: goto _bb27_case_22;
		case 23: goto _bb28_case_23;
		case 24: goto _bb29_case_24;
		case 25: goto _bb30_case_25;
		case 26: goto _bb31_case_26;
		case 27: goto _bb32_case_27;
		case 28: goto _bb33_case_28;
		case 29: goto _bb34_case_29;
		case 30: goto _bb35_case_30;
		case 31: goto _bb36_case_31;
		case 32: goto _bb37_case_32;
		case 33: goto _bb38_case_33;
		case 34: goto _bb39_case_34;
		case 35: goto _bb40_case_35;
		case 36: goto _bb41_case_36;
		case 37: goto _bb42_case_37;
		case 38: goto _bb43_case_38;
		case 39: goto _bb44_case_39;
		case 40: goto _bb45_case_40;
		case 41: goto _bb46_case_41;
		case 42: goto _bb47_case_42;
		case 43: goto _bb48_case_43;
		case 44: goto _bb49_case_44;
		case 45: goto _bb50_case_45;
		case 46: goto _bb51_case_46;
		case 47: goto _bb52_case_47;
		case 48: goto _bb53_case_48;
		case 49: goto _bb54_case_49;
		case 50: goto _bb55_case_50;
		case 51: goto _bb56_case_51;
		case 52: goto _bb57_case_52;
		case 53: goto _bb58_case_53;
		case 54: goto _bb59_case_54;
		case 55: goto _bb60_case_55;
		case 56: goto _bb61_case_56;
		case 57: goto _bb62_case_57;
		case 58: goto _bb63_case_58;
		case 59: goto _bb64_case_59;
		case 60: goto _bb65_case_60;
		case 61: goto _bb66_case_61;
		case 62: goto _bb67_case_62;
		case 63: goto _bb68_case_63;
		case 64: goto _bb69_case_64;
		case 65: goto _bb70_case_65;
		case 66: goto _bb71_case_66;
		case 67: goto _bb72_case_67;
		case 68: goto _bb73_case_68;
		case 69: goto _bb74_case_69;
		case 70: goto _bb75_case_70;
		case 71: goto _bb76_case_71;
		case 72: goto _bb77_case_72;
		case 73: goto _bb78_case_73;
		case 74: goto _bb79_case_74;
		case 75: goto _bb80_case_75;
		case 76: goto _bb81_case_76;
		case 77: goto _bb82_case_77;
		case 78: goto _bb83_case_78;
		case 79: goto _bb84_case_79;
		case 80: goto _bb85_case_80;
		case 81: goto _bb86_case_81;
		case 82: goto _bb87_case_82;
		case 83: goto _bb88_case_83;
		case 84: goto _bb89_case_84;
		case 85: goto _bb90_case_85;
		case 86: goto _bb91_case_86;
		case 87: goto _bb92_case_87;
		case 88: goto _bb93_case_88;
		case 89: goto _bb94_case_89;
		case 90: goto _bb95_case_90;
		case 91: goto _bb96_case_91;
		case 92: goto _bb97_case_92;
		case 93: goto _bb98_case_93;
		default: goto _bb100_case_default;
	}

	// basic block 5; prev 4; next 101
	_bb5_case_0:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x0;
	goto _bb101;

	// basic block 6; prev n/a; next 101
	_bb6_case_1:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x1;
	goto _bb101;

	// basic block 7; prev n/a; next 101
	_bb7_case_2:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x1;
	goto _bb101;

	// basic block 8; prev n/a; next 101
	_bb8_case_3:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x2;
	goto _bb101;

	// basic block 9; prev n/a; next 101
	_bb9_case_4:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x3;
	goto _bb101;

	// basic block 10; prev n/a; next 101
	_bb10_case_5:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x5;
	goto _bb101;

	// basic block 11; prev n/a; next 101
	_bb11_case_6:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x8;
	goto _bb101;

	// basic block 12; prev n/a; next 101
	_bb12_case_7:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0xd;
	goto _bb101;

	// basic block 13; prev n/a; next 101
	_bb13_case_8:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x15;
	goto _bb101;

	// basic block 14; prev n/a; next 101
	_bb14_case_9:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x22;
	goto _bb101;

	// basic block 15; prev n/a; next 101
	_bb15_case_10:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x37;
	goto _bb101;

	// basic block 16; prev n/a; next 101
	_bb16_case_11:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x59;
	goto _bb101;

	// basic block 17; prev n/a; next 101
	_bb17_case_12:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x90;
	goto _bb101;

	// basic block 18; prev n/a; next 101
	_bb18_case_13:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0xe9;
	goto _bb101;

	// basic block 19; prev n/a; next 101
	_bb19_case_14:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x179;
	goto _bb101;

	// basic block 20; prev n/a; next 101
	_bb20_case_15:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x262;
	goto _bb101;

	// basic block 21; prev n/a; next 101
	_bb21_case_16:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x3db;
	goto _bb101;

	// basic block 22; prev n/a; next 101
	_bb22_case_17:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x63d;
	goto _bb101;

	// basic block 23; prev n/a; next 101
	_bb23_case_18:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0xa18;
	goto _bb101;

	// basic block 24; prev n/a; next 101
	_bb24_case_19:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x1055;
	goto _bb101;

	// basic block 25; prev n/a; next 101
	_bb25_case_20:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x1a6d;
	goto _bb101;

	// basic block 26; prev n/a; next 101
	_bb26_case_21:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x2ac2;
	goto _bb101;

	// basic block 27; prev n/a; next 101
	_bb27_case_22:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x452f;
	goto _bb101;

	// basic block 28; prev n/a; next 101
	_bb28_case_23:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x6ff1;
	goto _bb101;

	// basic block 29; prev n/a; next 101
	_bb29_case_24:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0xb520;
	goto _bb101;

	// basic block 30; prev n/a; next 101
	_bb30_case_25:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x12511;
	goto _bb101;

	// basic block 31; prev n/a; next 101
	_bb31_case_26:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x1da31;
	goto _bb101;

	// basic block 32; prev n/a; next 101
	_bb32_case_27:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x2ff42;
	goto _bb101;

	// basic block 33; prev n/a; next 101
	_bb33_case_28:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x4d973;
	goto _bb101;

	// basic block 34; prev n/a; next 101
	_bb34_case_29:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x7d8b5;
	goto _bb101;

	// basic block 35; prev n/a; next 101
	_bb35_case_30:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0xcb228;
	goto _bb101;

	// basic block 36; prev n/a; next 101
	_bb36_case_31:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x148add;
	goto _bb101;

	// basic block 37; prev n/a; next 101
	_bb37_case_32:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x213d05;
	goto _bb101;

	// basic block 38; prev n/a; next 101
	_bb38_case_33:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x35c7e2;
	goto _bb101;

	// basic block 39; prev n/a; next 101
	_bb39_case_34:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x5704e7;
	goto _bb101;

	// basic block 40; prev n/a; next 101
	_bb40_case_35:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x8cccc9;
	goto _bb101;

	// basic block 41; prev n/a; next 101
	_bb41_case_36:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0xe3d1b0;
	goto _bb101;

	// basic block 42; prev n/a; next 101
	_bb42_case_37:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x1709e79;
	goto _bb101;

	// basic block 43; prev n/a; next 101
	_bb43_case_38:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x2547029;
	goto _bb101;

	// basic block 44; prev n/a; next 101
	_bb44_case_39:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x3c50ea2;
	goto _bb101;

	// basic block 45; prev n/a; next 101
	_bb45_case_40:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x6197ecb;
	goto _bb101;

	// basic block 46; prev n/a; next 101
	_bb46_case_41:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x9de8d6d;
	goto _bb101;

	// basic block 47; prev n/a; next 101
	_bb47_case_42:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0xff80c38;
	goto _bb101;

	// basic block 48; prev n/a; next 101
	_bb48_case_43:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x19d699a5;
	goto _bb101;

	// basic block 49; prev n/a; next 101
	_bb49_case_44:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x29cea5dd;
	goto _bb101;

	// basic block 50; prev n/a; next 101
	_bb50_case_45:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x43a53f82;
	goto _bb101;

	// basic block 51; prev n/a; next 101
	_bb51_case_46:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*((u64*)(*rax)) = 0x6d73e55f;
	goto _bb101;

	// basic block 52; prev n/a; next 101
	_bb52_case_47:
	*rax = *((u64*)(s_bss+0x28));
	*esi = 0xb11924e1;
	*((u64*)(*rax)) = *rsi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 53; prev n/a; next 101
	_bb53_case_48:
	*rax = *((u64*)(s_bss+0x20));
	*rdi = 0x11e8d0a40;
	*((u64*)(*rax)) = *rdi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 54; prev n/a; next 101
	_bb54_case_49:
	*rax = *((u64*)(s_bss+0x20));
	*rcx = 0x1cfa62f21;
	*((u64*)(*rax)) = *rcx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 55; prev n/a; next 101
	_bb55_case_50:
	*rax = *((u64*)(s_bss+0x20));
	*rsi = 0x2ee333961;
	*((u64*)(*rax)) = *rsi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 56; prev n/a; next 101
	_bb56_case_51:
	*rax = *((u64*)(s_bss+0x20));
	*rbx = 0x4bdd96882;
	*((u64*)(*rax)) = *rbx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 57; prev n/a; next 101
	_bb57_case_52:
	*rax = *((u64*)(s_bss+0x20));
	*rdi = 0x7ac0ca1e3;
	*((u64*)(*rax)) = *rdi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 58; prev n/a; next 101
	_bb58_case_53:
	*rax = *((u64*)(s_bss+0x20));
	*rcx = 0xc69e60a65;
	*((u64*)(*rax)) = *rcx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 59; prev n/a; next 101
	_bb59_case_54:
	*rax = *((u64*)(s_bss+0x20));
	*rsi = 0x1415f2ac48;
	*((u64*)(*rax)) = *rsi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 60; prev n/a; next 101
	_bb60_case_55:
	*rax = *((u64*)(s_bss+0x20));
	*rbx = 0x207fd8b6ad;
	*((u64*)(*rax)) = *rbx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 61; prev n/a; next 101
	_bb61_case_56:
	*rax = *((u64*)(s_bss+0x20));
	*rdi = 0x3495cb62f5;
	*((u64*)(*rax)) = *rdi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 62; prev n/a; next 101
	_bb62_case_57:
	*rax = *((u64*)(s_bss+0x20));
	*rcx = 0x5515a419a2;
	*((u64*)(*rax)) = *rcx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 63; prev n/a; next 101
	_bb63_case_58:
	*rax = *((u64*)(s_bss+0x20));
	*rsi = 0x89ab6f7c97;
	*((u64*)(*rax)) = *rsi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 64; prev n/a; next 101
	_bb64_case_59:
	*rax = *((u64*)(s_bss+0x20));
	*rbx = 0xdec1139639;
	*((u64*)(*rax)) = *rbx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 65; prev n/a; next 101
	_bb65_case_60:
	*rax = *((u64*)(s_bss+0x20));
	*rdi = 0x1686c8312d0;
	*((u64*)(*rax)) = *rdi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 66; prev n/a; next 101
	_bb66_case_61:
	*rax = *((u64*)(s_bss+0x20));
	*rcx = 0x2472d96a909;
	*((u64*)(*rax)) = *rcx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 67; prev n/a; next 101
	_bb67_case_62:
	*rax = *((u64*)(s_bss+0x20));
	*rsi = 0x3af9a19bbd9;
	*((u64*)(*rax)) = *rsi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 68; prev n/a; next 101
	_bb68_case_63:
	*rax = *((u64*)(s_bss+0x20));
	*rbx = 0x5f6c7b064e2;
	*((u64*)(*rax)) = *rbx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 69; prev n/a; next 101
	_bb69_case_64:
	*rax = *((u64*)(s_bss+0x20));
	*rdi = 0x9a661ca20bb;
	*((u64*)(*rax)) = *rdi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 70; prev n/a; next 101
	_bb70_case_65:
	*rax = *((u64*)(s_bss+0x20));
	*rcx = 0xf9d297a859d;
	*((u64*)(*rax)) = *rcx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 71; prev n/a; next 101
	_bb71_case_66:
	*rax = *((u64*)(s_bss+0x20));
	*rsi = 0x19438b44a658;
	*((u64*)(*rax)) = *rsi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 72; prev n/a; next 101
	_bb72_case_67:
	*rax = *((u64*)(s_bss+0x20));
	*rbx = 0x28e0b4bf2bf5;
	*((u64*)(*rax)) = *rbx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 73; prev n/a; next 101
	_bb73_case_68:
	*rax = *((u64*)(s_bss+0x20));
	*rdi = 0x42244003d24d;
	*((u64*)(*rax)) = *rdi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 74; prev n/a; next 101
	_bb74_case_69:
	*rax = *((u64*)(s_bss+0x20));
	*rcx = 0x6b04f4c2fe42;
	*((u64*)(*rax)) = *rcx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 75; prev n/a; next 101
	_bb75_case_70:
	*rax = *((u64*)(s_bss+0x20));
	*rsi = 0xad2934c6d08f;
	*((u64*)(*rax)) = *rsi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 76; prev n/a; next 101
	_bb76_case_71:
	*rax = *((u64*)(s_bss+0x20));
	*rbx = 0x1182e2989ced1;
	*((u64*)(*rax)) = *rbx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 77; prev n/a; next 101
	_bb77_case_72:
	*rax = *((u64*)(s_bss+0x20));
	*rdi = 0x1c5575e509f60;
	*((u64*)(*rax)) = *rdi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 78; prev n/a; next 101
	_bb78_case_73:
	*rax = *((u64*)(s_bss+0x20));
	*rcx = 0x2dd8587da6e31;
	*((u64*)(*rax)) = *rcx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 79; prev n/a; next 101
	_bb79_case_74:
	*rax = *((u64*)(s_bss+0x20));
	*rsi = 0x4a2dce62b0d91;
	*((u64*)(*rax)) = *rsi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 80; prev n/a; next 101
	_bb80_case_75:
	*rax = *((u64*)(s_bss+0x20));
	*rbx = 0x780626e057bc2;
	*((u64*)(*rax)) = *rbx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 81; prev n/a; next 101
	_bb81_case_76:
	*rax = *((u64*)(s_bss+0x20));
	*rdi = 0xc233f54308953;
	*((u64*)(*rax)) = *rdi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 82; prev n/a; next 101
	_bb82_case_77:
	*rax = *((u64*)(s_bss+0x20));
	*rcx = 0x13a3a1c2360515;
	*((u64*)(*rax)) = *rcx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 83; prev n/a; next 101
	_bb83_case_78:
	*rax = *((u64*)(s_bss+0x20));
	*rsi = 0x1fc6e116668e68;
	*((u64*)(*rax)) = *rsi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 84; prev n/a; next 101
	_bb84_case_79:
	*rax = *((u64*)(s_bss+0x20));
	*rbx = 0x336a82d89c937d;
	*((u64*)(*rax)) = *rbx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 85; prev n/a; next 101
	_bb85_case_80:
	*rax = *((u64*)(s_bss+0x20));
	*rdi = 0x533163ef0321e5;
	*((u64*)(*rax)) = *rdi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 86; prev n/a; next 101
	_bb86_case_81:
	*rax = *((u64*)(s_bss+0x20));
	*rcx = 0x869be6c79fb562;
	*((u64*)(*rax)) = *rcx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 87; prev n/a; next 101
	_bb87_case_82:
	*rax = *((u64*)(s_bss+0x20));
	*rsi = 0xd9cd4ab6a2d747;
	*((u64*)(*rax)) = *rsi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 88; prev n/a; next 101
	_bb88_case_83:
	*rax = *((u64*)(s_bss+0x20));
	*rbx = 0x16069317e428ca9;
	*((u64*)(*rax)) = *rbx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 89; prev n/a; next 101
	_bb89_case_84:
	*rax = *((u64*)(s_bss+0x20));
	*rdi = 0x23a367c34e563f0;
	*((u64*)(*rax)) = *rdi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 90; prev n/a; next 101
	_bb90_case_85:
	*rax = *((u64*)(s_bss+0x20));
	*rcx = 0x39a9fadb327f099;
	*((u64*)(*rax)) = *rcx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 91; prev n/a; next 101
	_bb91_case_86:
	*rax = *((u64*)(s_bss+0x20));
	*rsi = 0x5d4d629e80d5489;
	*((u64*)(*rax)) = *rsi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 92; prev n/a; next 101
	_bb92_case_87:
	*rax = *((u64*)(s_bss+0x20));
	*rbx = 0x96f75d79b354522;
	*((u64*)(*rax)) = *rbx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 93; prev n/a; next 101
	_bb93_case_88:
	*rax = *((u64*)(s_bss+0x20));
	*rdi = 0xf444c01834299ab;
	*((u64*)(*rax)) = *rdi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 94; prev n/a; next 101
	_bb94_case_89:
	*rax = *((u64*)(s_bss+0x20));
	*rcx = 0x18b3c1d91e77decd;
	*((u64*)(*rax)) = *rcx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 95; prev n/a; next 101
	_bb95_case_90:
	*rax = *((u64*)(s_bss+0x20));
	*rsi = 0x27f80ddaa1ba7878;
	*((u64*)(*rax)) = *rsi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 96; prev n/a; next 101
	_bb96_case_91:
	*rax = *((u64*)(s_bss+0x20));
	*rbx = 0x40abcfb3c0325745;
	*((u64*)(*rax)) = *rbx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 97; prev n/a; next 101
	_bb97_case_92:
	*rax = *((u64*)(s_bss+0x20));
	*rdi = 0x68a3dd8e61eccfbd;
	*((u64*)(*rax)) = *rdi;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 98; prev n/a; next 101
	_bb98_case_93:
	*rax = *((u64*)(s_bss+0x20));
	*rcx = 0xa94fad42221f2702;
	*((u64*)(*rax)) = *rcx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x8;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	goto _bb101;

	// basic block 99; prev 2; next 101
	_bb99:
	goto _bb101;

	// basic block 100; prev 3; next 101
	_bb100_case_default:
	_bb100:

	// basic block 101; prev 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100; next 102
	_bb101:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x8;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rbx = *((u64*)(s_bss+0x100));
	pop_u64_();

	// basic block 102; prev 101; next n/a
	*((u64*)(*rbx)) = *rax;
	*rbx = *((u64*)(local2));
	*rsp = *rbp;
	*rbp = pop_u64();
	return;

#undef local1
#undef local2
}

void main__(void)
{
#define local1 (*rbp-0x8)

	// basic block 1; prev n/a; next 2
	push_u64(*rbp);
	*rbp = *rsp;
	push_u64(*rbx);
	*rsp -= 0x8;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rdi = *rax;
	push_u64_();

	// basic block 2; prev 1; next 3, 5
	*rdx = *((u64*)(s_bss+0x120));
	*rax = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x120));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x120));
	*rdx -= 0x20;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0xe8));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x14;
	*((u32*)(*rax)) = *edx;
	*rax = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rdx));
	*rdx -= 0x20;
	*rax = *((u64*)(*rax));
	*((u64*)(*rdx)) = *rax;
	*rax = *((u64*)(s_bss+0x28));
	*((u64*)(*rax)) = 0x0;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x14;
	*eax = *((u32*)(*rax));
	if (*eax == 0x2)
		goto _bb5;

	// basic block 3; prev 2; next 4
	*rdx = (u64)stderr;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0x70));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0xa0));
	*((u64*)(*rax)) = 0xf;
	*rax = *((u64*)(s_bss+0xc8));
	*((u64*)(*rax)) = 0x1;
	*rax = *((u64*)(s_bss+0x240));
	*rdx = *rax+0x198;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x70));
	*rax = *((u64*)(*rax));
	*rsi = *rax;
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0xc0));
	*rax = *((u64*)(*rax));
	*rcx = *((u64*)(s_bss+0xe0));
	*rcx = *((u64*)(*rcx));
	*rdi = *rcx;
	*rbx = *((u64*)(s_bss+0x20));
	*rcx = *rsi;
	*rsi = *rax;
	*rax = (u64)fwrite((const void*)*rdi, (size_t)*rsi, (size_t)*rdx, (FILE*)*rcx);

	// basic block 4; prev 3; next 23
	*((u64*)(*rbx)) = *rax;
	*rax = *((u64*)(s_bss+0x28));
	*((u64*)(*rax)) = 0x1;
	goto _bb23;

	// basic block 5; prev 2; next 6
	_bb5:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x10;
	*((u64*)(*rax)) = 0x0;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x20;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rdx += 0x8;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(*rax));
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x98));
	*rdx -= 0x10;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x240));
	*rdx = *rax+0x1a8;
	*rax = *((u64*)(s_bss+0x70));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x70));
	*rax = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x28));
	*((u64*)(*rax)) = 0x0;
	*rax = *((u64*)(s_bss+0x98));
	*rax = *((u64*)(*rax));
	*rdx = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(*rdx));
	*rsi = *rdx;
	*rdx = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*rcx = *rdx;
	*rdx = *rax;
	*rdi = *rcx;
	*eax = 0x0;
	*eax = (u32)sscanf((const char*)*rdi, (const char*)*rsi, *rdx);

	// basic block 6; prev 5; next 7, 9
	*edx = *eax;
	*rax = *((u64*)(s_bss+0x28));
	*edx = *edx;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x28));
	*rax = *((u64*)(*rax));
	if (*rax == 0x1)
		goto _bb9;

	// basic block 7; prev 6; next 8
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x20;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rax));
	*rax = *((u64*)(s_bss+0x20));
	*rdx += 0x8;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(*rax));
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = (u64)stderr;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x240));
	*rdx = *rax+0x1b0;
	*rax = *((u64*)(s_bss+0x70));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x70));
	*rax = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x28));
	*((u64*)(*rax)) = 0x0;
	*rax = *((u64*)(s_bss+0x98));
	*rax = *((u64*)(*rax));
	*rdx = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(*rdx));
	*rsi = *rdx;
	*rdx = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*rcx = *rdx;
	*rdx = *rax;
	*rdi = *rcx;
	*eax = 0x0;
	*eax = (u32)fprintf((FILE*)*rdi, (const char*)*rsi, *rdx);

	// basic block 8; prev 7; next 23
	*edx = *eax;
	*rax = *((u64*)(s_bss+0x28));
	*edx = *edx;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x28));
	*((u64*)(*rax)) = 0x2;
	goto _bb23;

	// basic block 9; prev 6; next 10, 12
	_bb9:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x10;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(*rax));
	if (*rax <= 0x5d)
		goto _bb12;

	// basic block 10; prev 9; next 11
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x10;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x98));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = (u64)stderr;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x240));
	*rdx = *rax+0x1d0;
	*rax = *((u64*)(s_bss+0x70));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x70));
	*rax = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x28));
	*((u64*)(*rax)) = 0x0;
	*rax = *((u64*)(s_bss+0x98));
	*rax = *((u64*)(*rax));
	*rdx = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(*rdx));
	*rsi = *rdx;
	*rdx = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*rcx = *rdx;
	*rdx = *rax;
	*rdi = *rcx;
	*eax = 0x0;
	*eax = (u32)fprintf((FILE*)*rdi, (const char*)*rsi, *rdx);

	// basic block 11; prev 10; next 23
	*edx = *eax;
	*rax = *((u64*)(s_bss+0x28));
	*edx = *edx;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x28));
	*((u64*)(*rax)) = 0x3;
	goto _bb23;

	// basic block 12; prev 9; next 13
	_bb12:
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x10;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	fib_rec();

	// basic block 13; prev 12; next 14
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x240));
	*rdx = *rax+0x1e9;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x28));
	*((u64*)(*rax)) = 0x0;
	*rax = *((u64*)(s_bss+0xc0));
	*rax = *((u64*)(*rax));
	*rdx = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*rsi = *rax;
	*rdi = *rdx;
	*eax = 0x0;
	*eax = (u32)printf((const char*)*rdi, *rsi);

	// basic block 14; prev 13; next 15
	*edx = *eax;
	*rax = *((u64*)(s_bss+0x28));
	*edx = *edx;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x10;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	fib_tbl_static();

	// basic block 15; prev 14; next 16
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x240));
	*rdx = *rax+0x1f8;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x28));
	*((u64*)(*rax)) = 0x0;
	*rax = *((u64*)(s_bss+0xc0));
	*rax = *((u64*)(*rax));
	*rdx = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*rsi = *rax;
	*rdi = *rdx;
	*eax = 0x0;
	*eax = (u32)printf((const char*)*rdi, *rsi);

	// basic block 16; prev 15; next 17
	*edx = *eax;
	*rax = *((u64*)(s_bss+0x28));
	*edx = *edx;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x10;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	fib_tbl_dyn();

	// basic block 17; prev 16; next 18
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x240));
	*rdx = *rax+0x207;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x28));
	*((u64*)(*rax)) = 0x0;
	*rax = *((u64*)(s_bss+0xc0));
	*rax = *((u64*)(*rax));
	*rdx = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*rsi = *rax;
	*rdi = *rdx;
	*eax = 0x0;
	*eax = (u32)printf((const char*)*rdi, *rsi);

	// basic block 18; prev 17; next 19
	*edx = *eax;
	*rax = *((u64*)(s_bss+0x28));
	*edx = *edx;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x10;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	fib_loop();

	// basic block 19; prev 18; next 20
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x240));
	*rdx = *rax+0x216;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x28));
	*((u64*)(*rax)) = 0x0;
	*rax = *((u64*)(s_bss+0xc0));
	*rax = *((u64*)(*rax));
	*rdx = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*rsi = *rax;
	*rdi = *rdx;
	*eax = 0x0;
	*eax = (u32)printf((const char*)*rdi, *rsi);

	// basic block 20; prev 19; next 21
	*edx = *eax;
	*rax = *((u64*)(s_bss+0x28));
	*edx = *edx;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(*rax));
	*rax -= 0x10;
	*rdx = *rax;
	*rax = *((u64*)(s_bss+0x20));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	fib_switch();

	// basic block 21; prev 20; next 22
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x240));
	*rdx = *rax+0x225;
	*rax = *((u64*)(s_bss+0x20));
	*((u64*)(*rax)) = *rdx;
	*rdx = *((u64*)(s_bss+0x20));
	*rax = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x28));
	*((u64*)(*rax)) = 0x0;
	*rax = *((u64*)(s_bss+0xc0));
	*rax = *((u64*)(*rax));
	*rdx = *((u64*)(s_bss+0xe0));
	*rdx = *((u64*)(*rdx));
	*rsi = *rax;
	*rdi = *rdx;
	*eax = 0x0;
	*eax = (u32)printf((const char*)*rdi, *rsi);

	// basic block 22; prev 21; next 23
	*edx = *eax;
	*rax = *((u64*)(s_bss+0x28));
	*edx = *edx;
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0x28));
	*((u64*)(*rax)) = 0x0;

	// basic block 23; prev 4, 8, 11, 22; next 24
	_bb23:
	*rdx = *((u64*)(s_bss+0x100));
	*rax = *((u64*)(s_bss+0x120));
	*rdx = *((u64*)(*rdx));
	*((u64*)(*rax)) = *rdx;
	*rbx = *((u64*)(s_bss+0x100));
	pop_u64_();

	// basic block 24; prev 23; next n/a
	*((u64*)(*rbx)) = *rax;
	*rbx = *((u64*)(local1));
	*rsp = *rbp;
	*rbp = pop_u64();
	return;

#undef local1
}

void init_(void)
{

	// basic block 1; prev n/a; next 2
	push_u64(*rbp);
	*rbp = *rsp;
	init_regs_();

	// basic block 2; prev 1; next 3
	init_stack_();

	// basic block 3; prev 2; next 4
	init_sections_();

	// basic block 4; prev 3; next n/a
	*rbp = pop_u64();
	return;

}

void main_(void)
{
#define local1 (*rbp-0x4)
#define local2 (*rbp-0x10)

	// basic block 1; prev n/a; next 2
	push_u64(*rbp);
	*rbp = *rsp;
	*rsp -= 0x10;
	*((u32*)(local1)) = *edi;
	*((u64*)(local2)) = *rsi;
	init_();

	// basic block 2; prev 1; next 3
	*rax = *((u64*)(s_bss+0xe8));
	*edx = *((u32*)(local1));
	*rdx = (i64)(*edx);
	*((u64*)(*rax)) = *rdx;
	*rax = *((u64*)(s_bss+0xc0));
	*rdx = *((u64*)(local2));
	*((u64*)(*rax)) = *rdx;
	main__();

	// basic block 3; prev 2; next n/a
	*rax = *((u64*)(s_bss+0x28));
	*rax = *((u64*)(*rax));
	*rsp = *rbp;
	*rbp = pop_u64();
	return;

#undef local1
#undef local2
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
