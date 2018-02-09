
#define ANNORATE(msg) __attribute__((annotate(msg)))

extern int foo_called(int a);
extern int foo_called2(int a);

int foo(int k)
{
  int ANNORATE("b") b = 0;
  int ANNORATE("a") a = 0;

  for (int i = 0; i < k; i++)
  {
    int c = a + k;
    int d = b + k;
    a += foo_called(c);
    b += foo_called2(c);
  }

  return a + foo_called(b);
}