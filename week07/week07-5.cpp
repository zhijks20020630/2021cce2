#include <stdio.h>
#include <stdlib.h>//qsort()
#include <string.h>//strcmp()
char line[2001][80];
int compare (const void *p1,const void *p2)
{
	return strcmp( (char*)p1, (char*)p2);
}
int main()
{
	int n;
	scanf("%d\n",&n);

	for(int i=0;i<n;i++){
		scanf("%s",line[i]);
		char others[80];
		gets(others);
		}

	qsort(line,n,80,compare);

	line[n][0]=0;///sentinal��L
	int combo=1;
	for(int i=0;i<n;i++){
		if(strcmp(line[i],line[i+1])==0){
			combo++;
		}else{
			printf("%s %d\n",line[i],combo);
			combo=1;
		}
	}
	return 0;
}
