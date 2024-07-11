#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int cnt1 = 1120;
int cnt2 = 2976;
char line[100];
int main()
{
	FILE  *code, *handler, *coe;
	code = fopen("code.txt", "r");
	handler	= fopen("handler.txt", "r");
	coe = fopen("coe.im.txt", "w");
	int i, len;
	fprintf(coe, "memory_initialization_radix=16;\nmemory_initialization_vector=\n");
	for(i=0;i<cnt1;i++){
		if(fgets(line,15,code)!=NULL){
			len = strlen(line);
			if(len == 9) 
				line[len-1]='\0';
			else
				line[len] = '\0';
			fprintf(coe, "%s,\n", line);
			memset(line, 0, 100);
		}
		else {
			fprintf(coe, "00000000,\n");
		}
	}
	for(i=0;i<cnt2;i++) {
		if(fgets(line,10,handler)!=NULL) {
			len = strlen(line);
			if(len == 9) 
				line[len-1]='\0';
			else
				line[len] = '\0';
			fprintf(coe, "%s,\n", line);
			memset(line, 0, 100);
		}
		else if(i<2975){
			fprintf(coe, "00000000,\n");
		}
		else if(i==2975) {
			fprintf(coe, "00000000;\n");
		}
	}
} 
