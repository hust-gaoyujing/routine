#include <stdio.h>
#include <stdlib.h>

int main(){
	
	int array_c[65536] = {1,2,3};
	int array_v[65536] = {1,2,3};
	int array_error[65536] = {0};
	int cnt = 0;
	
	FILE  *fp;
	if((fp=fopen("dog_out_dec.txt","r"))==NULL){
		printf("read file failed\n");
		exit(0);	
	}
	else{
		printf("read file successfully\n");
		for(int i=0; i<65536; i++)
			fscanf(fp,"%d",&array_c[i]);
		fclose(fp);	
	}	
	
	FILE  *fp_1;
	if((fp_1=fopen("dog_out_verilog.txt","r"))==NULL){
		printf("read file failed\n");
		exit(0);	
	}
	else{
		printf("read file successfully\n");
		for(int i=0; i<65536; i++)
			fscanf(fp_1,"%d",&array_v[i]);
		fclose(fp);	
	}
	
	for(int i = 0;i < 65536;i++){
		if(array_c[i] != array_v[i]) {
			array_error[cnt] = i;
			cnt ++;
		}
	}
		
	if(cnt == 0)
		printf("=====copare successfully========\n");
	else{
		printf("=====copare failed========\n");
		FILE  *fp_2;
		if((fp_2=fopen("dog_out_error.txt","w"))==NULL){
			printf("open file failed\n");
			exit(0);	
		}
		else{
			for(int x=0; x<256; x++){
				for(int y=0; y<256; y++){
					fprintf(fp_2,"%d\t",array_error[256*x+y]);
				}
					fprintf(fp_2,"\n");
			}
			fclose(fp_2);	
		}
	}
}