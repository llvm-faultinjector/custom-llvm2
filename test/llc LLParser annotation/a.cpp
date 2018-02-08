
int foo_c(int a, int& r)
{
	return a+r;
}

int foo_called(int r)
{
        int a = 1;
	return foo_c(a,r)+1;
}

int foo(int k) 
{
	int __attribute__((annotate("xxx"))) a;
	
	for (int i = 0; i < k; i++)
	{
		int c = a + k;
		a += foo_called(c);
	}
	
	return 0;
}