int N=10;

int fibonacci(int n)
{
  if(n==1)
    return 1;
  if(n==2)
    return 1;
  if(n>2)
    return fibonacci(n-1)+fibonacci(n-2);
  return 0;
}

void setup()
{
  size(800,600);
  for(int i=0; i<N; i++)
    rect(i*(width/N), 0, width/N, height);
}
