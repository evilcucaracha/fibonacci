int N=30;

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
  
  int x=width/2;
  int y=height/2;
  int id=0;
  
  for(int i=1; i<N; i++)
  {
    if(id==0)
    {
      rect(x, y, fibonacci(i), fibonacci(i));
      y-=fibonacci(i+1); //1A
    }
    if(id==1)
    {
      rect(x, y, fibonacci(i), fibonacci(i));
      x+=fibonacci(i); //2D
    }
    if(id==2)
    {
      rect(x, y, fibonacci(i), fibonacci(i));
      y+=fibonacci(i); //3a
      x-=fibonacci(i-1);
    }
    if(id==3)
    {
      rect(x, y, fibonacci(i), fibonacci(i));
      x-=fibonacci(i+1); //4I
      y-=fibonacci(i-1);
    }
    id++;
    if(id>3)
      id=0;
  }
}
