#include <stdio.h>
#include <stdlib.h>

int main(){
	int gs[5] = {1,4,6,4,1};		//Guassian kernel	
	int line = 256;					
	int column = 256;
	int x;							//coordinate of line 
	int y;							//coordinate of column 
	int sr;							//scan radius from -2 to 2
	int mod;
	int data_tmp[65536] 	= {0};
	int data_out[65536] 	= {0};
	int data_in[65536] 	= {	};
	
	FILE  *fp;
	if((fp=fopen("data_in.txt","r"))==NULL){
		printf("read file failed\n");
		exit(0);	
	}
	else{
		printf("read file successfully\n");
		for(int i=0; i<65536; i++)
			fscanf(fp,"%x",&data_in[i]);
		fclose(fp);	
	}

	for(x = 0;x < line;x++){
		for(y = 0;y < column;y++){
			for(sr = -2;sr <= 2;sr++){
				int y_sr = 	((y+sr) < 0) ?  -(y+sr) : 
							((y+sr) >= column) ? (2*(column-1) - (y+sr)) : 
							(y+sr);
				data_tmp[x*line+y] += gs[sr + 2] * data_in[x*line+y_sr];
			}
			mod = data_tmp[x*line+y] % 16;
		//`	if((x*line+y) < 10) 
		//`		printf("mod = %x\t",mod);
		//`	if((x*line+y) < 10) 
		//`		printf("data_tmp[x*line+y] = %x\t",data_tmp[x*line+y]);
			data_tmp[x*line+y] /= 16;
		//	if((x*line+y) < 10) 
		//		printf("data_tmp[x*line+y] = %x\t",data_tmp[x*line+y]);
			if(mod >= 8)
				data_tmp[x*line+y]++;
			else 
				data_tmp[x*line+y] = data_tmp[x*line+y];
		//	if((x*line+y) < 10) 
		//		printf("data_tmp[x*line+y] = %x\n",data_tmp[x*line+y]);
			
		}
	}
	
	for(y = 0;y < column;y++){
		for(x = 0;x < line;x++){
			for(sr = -2;sr <= 2;sr++){
				int x_sr = 	((x+sr) < 0) ?  -(x+sr) : 
							((x+sr) >= line) ? (2*(line-1) - (x+sr)) : 
							(x+sr);
				data_out[x*line+y] += gs[sr + 2] * data_tmp[x_sr*line+y];
			}
			mod = data_out[x*line+y] % 16;
			data_out[x*line+y] /= 16;
			if(mod >= 8)
				data_out[x*line+y]++;
			else 
				data_out[x*line+y] = data_out[x*line+y];
		}
	}
	

	FILE  *fp_1;
	if((fp_1=fopen("data_tmp.txt","w"))==NULL){
		printf("open file failed\n");
		exit(0);	
	}
	else{
		printf("open file successfully\n");
		for(x=0; x<256; x++){
			for(y=0; y<256; y++){
				fprintf(fp_1,"%d\t",data_tmp[256*x+y]);
			}
				fprintf(fp_1,"\n");
		}
		fclose(fp_1);	
	}


	FILE  *fp_2;
	if((fp_2=fopen("data_out.txt","w"))==NULL){
		printf("open file failed\n");
		exit(0);	
	}
	else{
		printf("open file successfully\n");
		for(x=0; x<256; x++){
			for(y=0; y<256; y++){
				fprintf(fp_2,"%d\t",data_out[256*x+y]);
			}
				fprintf(fp_2,"\n");
		}
		fclose(fp_2);	
	}



}
