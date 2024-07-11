#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int cnt1 = 3072;
char line[100];
int main()
{
	FILE  *coe;
	coe = fopen("coe.dm.txt", "w");
	int i, len;
	fprintf(coe, "memory_initialization_radix=16;\nmemory_initialization_vector=\n");
	for(i=0;i<cnt1;i++){
		if(i<3071) {
			fprintf(coe, "00000000,\n");
		}
		else {
			fprintf(coe, "00000000;\n");
		}
	}
} 
