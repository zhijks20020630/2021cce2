#include <stdio.h>
char line[100];
int main()
{
    int T;
    FILE * fin = fopen("input.txt","r");
    fscanf(fin,"%d",&T);
    printf("�AŪ��FT: %d\n",T);

    while(fgets(line, 100, fin) ){
        printf("Ū��F= %s =\n", line);
    }
}
