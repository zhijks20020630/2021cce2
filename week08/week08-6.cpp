#include <stdio.h>
#include <string.h>
char names[3][20];
int grades[3];
int main()
{
    FILE * fin = fopen("file.txt","r+");
    char name[20];
    int grade;
    for(int i=0;i<3;i++){
        fscanf(fin,"%s",name);
        fscanf(fin,"%d",&grade);
        strcpy(names[i],name);
        grades[i]=grade;
    }
    ///FILE * fout = fopen("file.txt","w+");
    for(int i=0;i<3;i++){
        printf("%s %d\n",names[i],grades[i]);
        ///fprintf(fout,"%s %d\n",names[i],grades[i]);
    }
}

