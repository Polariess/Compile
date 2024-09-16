#include<stdio.h>
int main()
{
    int a,b,i,t,n;
    a=0;
    b=1;
    i=1;
    scanf("%d",&n);
    printf("%d\n",a);
    printf("%d\n",b);
    for(i=1;i<n;i++)
    {
        t=b;
        b=a+b;
        printf("%d\n",b);
        a=t;
    }
    return 0;
}