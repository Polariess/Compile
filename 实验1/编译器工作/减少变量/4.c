#include<stdio.h>
int main()
{
    int a,b,i,n;
    a=0;
    b=1;
    i=1;
    scanf("%d",&n);
    printf("%d\n",a);
    printf("%d\n",b);
    while(i<n)
    {
        b=a+b;
        printf("%d\n",b);
        a=b-a;
        i=i+1;
    }
    return 0;
}