#include <stdio.h>
int main()
{
    int T;
    FILE * fin = fopen("input.txt","r");
    fscanf(fin,"%d",&T);
    printf("�AŪ��FT: %d\n",T);
}
