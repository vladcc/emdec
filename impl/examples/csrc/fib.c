#include <stdio.h>
#include <stdlib.h>

#define MAX_FIB 93

static size_t fib_rec(size_t n)
{
	return (n < 2) ? n : fib_rec(n-1) + fib_rec(n-2);
}
static size_t fib_tbl_static(size_t n)
{
	static size_t cache[MAX_FIB+1];

	if (n < 2)
		return n;

	if (cache[n])
		return cache[n];

	return (cache[n] = fib_tbl_static(n-1) + fib_tbl_static(n-2));
}
static size_t fib_tbl_dyn_(size_t n, size_t * cache)
{
	if (n < 2)
		return n;

	if (cache[n])
		return cache[n];

	return (cache[n] = fib_tbl_dyn_(n-1, cache) + fib_tbl_dyn_(n-2, cache));
}
static size_t fib_tbl_dyn(size_t n)
{
	size_t * cache = calloc(n+1, sizeof(*cache));
	if (!cache)
	{
		fprintf(stderr, "error: calloc() failed\n");
		exit(EXIT_FAILURE);
	}
	size_t res = fib_tbl_dyn_(n, cache);
	free(cache);
	return res;
}
static size_t fib_loop(size_t n)
{
	if (n < 2)
		return n;

	size_t a = 0;
	size_t b = 1;
	size_t c = a+b;

	for (size_t i = 2; i < n; ++i)
	{
		a = b;
		b = c;
		c = a+b;
	}

	return c;
}
static size_t fib_switch(size_t n)
{
	size_t fib = 0;

	switch (n)
	{
		case 0: fib = 0; break;
		case 1: fib = 1; break;
		case 2: fib = 1; break;
		case 3: fib = 2; break;
		case 4: fib = 3; break;
		case 5: fib = 5; break;
		case 6: fib = 8; break;
		case 7: fib = 13; break;
		case 8: fib = 21; break;
		case 9: fib = 34; break;
		case 10: fib = 55; break;
		case 11: fib = 89; break;
		case 12: fib = 144; break;
		case 13: fib = 233; break;
		case 14: fib = 377; break;
		case 15: fib = 610; break;
		case 16: fib = 987; break;
		case 17: fib = 1597; break;
		case 18: fib = 2584; break;
		case 19: fib = 4181; break;
		case 20: fib = 6765; break;
		case 21: fib = 10946; break;
		case 22: fib = 17711; break;
		case 23: fib = 28657; break;
		case 24: fib = 46368; break;
		case 25: fib = 75025; break;
		case 26: fib = 121393; break;
		case 27: fib = 196418; break;
		case 28: fib = 317811; break;
		case 29: fib = 514229; break;
		case 30: fib = 832040; break;
		case 31: fib = 1346269; break;
		case 32: fib = 2178309; break;
		case 33: fib = 3524578; break;
		case 34: fib = 5702887; break;
		case 35: fib = 9227465; break;
		case 36: fib = 14930352; break;
		case 37: fib = 24157817; break;
		case 38: fib = 39088169; break;
		case 39: fib = 63245986; break;
		case 40: fib = 102334155; break;
		case 41: fib = 165580141; break;
		case 42: fib = 267914296; break;
		case 43: fib = 433494437; break;
		case 44: fib = 701408733; break;
		case 45: fib = 1134903170; break;
		case 46: fib = 1836311903; break;
		case 47: fib = 2971215073; break;
		case 48: fib = 4807526976; break;
		case 49: fib = 7778742049; break;
		case 50: fib = 12586269025; break;
		case 51: fib = 20365011074; break;
		case 52: fib = 32951280099; break;
		case 53: fib = 53316291173; break;
		case 54: fib = 86267571272; break;
		case 55: fib = 139583862445; break;
		case 56: fib = 225851433717; break;
		case 57: fib = 365435296162; break;
		case 58: fib = 591286729879; break;
		case 59: fib = 956722026041; break;
		case 60: fib = 1548008755920; break;
		case 61: fib = 2504730781961; break;
		case 62: fib = 4052739537881; break;
		case 63: fib = 6557470319842; break;
		case 64: fib = 10610209857723; break;
		case 65: fib = 17167680177565; break;
		case 66: fib = 27777890035288; break;
		case 67: fib = 44945570212853; break;
		case 68: fib = 72723460248141; break;
		case 69: fib = 117669030460994; break;
		case 70: fib = 190392490709135; break;
		case 71: fib = 308061521170129; break;
		case 72: fib = 498454011879264; break;
		case 73: fib = 806515533049393; break;
		case 74: fib = 1304969544928657; break;
		case 75: fib = 2111485077978050; break;
		case 76: fib = 3416454622906707; break;
		case 77: fib = 5527939700884757; break;
		case 78: fib = 8944394323791464; break;
		case 79: fib = 14472334024676221; break;
		case 80: fib = 23416728348467685; break;
		case 81: fib = 37889062373143906; break;
		case 82: fib = 61305790721611591; break;
		case 83: fib = 99194853094755497; break;
		case 84: fib = 160500643816367088; break;
		case 85: fib = 259695496911122585; break;
		case 86: fib = 420196140727489673; break;
		case 87: fib = 679891637638612258; break;
		case 88: fib = 1100087778366101931; break;
		case 89: fib = 1779979416004714189; break;
		case 90: fib = 2880067194370816120; break;
		case 91: fib = 4660046610375530309; break;
		case 92: fib = 7540113804746346429; break;
		case 93: fib = 12200160415121876738u; break;
		default: break;
	}

	return fib;
}

int main(int argc, char * argv[])
{
	if (argc != 2)
	{
		fprintf(stderr, "Use: fib <num>\n");
		return 1;
	}

	size_t num = 0;
	if (sscanf(argv[1], "%zu", &num) != 1)
	{
		fprintf(stderr, "error: '%s' not a valid number\n", argv[1]);
		return 2;
	}

	if (num > MAX_FIB)
	{
		fprintf(stderr, "error: %zu is too large\n", num);
		return 3;
	}

	printf("recursive %zu\n", fib_rec(num));
	printf("static    %zu\n", fib_tbl_static(num));
	printf("dynamic   %zu\n", fib_tbl_dyn(num));
	printf("loop      %zu\n", fib_loop(num));
	printf("switch    %zu\n", fib_switch(num));
	return 0;
}
