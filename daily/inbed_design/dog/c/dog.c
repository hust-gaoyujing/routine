#include <stdio.h>
#include <stdlib.h>

int main(){
	int gs_3[3] = {1,2,1};		//Guassian kernel	
	int gs_7[7] = {1,6,15,20,15,6,1};
	int row = 256;					
	int col = 256;
	int x;							//coordinate of row 
	int y;							//coordinate of col 
	int sr;							//scan radius from -2 to 2
	int mod;
	int gs3_tmp[65536] 	= {0};
	int gs7_tmp[65536] 	= {0};
	int dog_tmp[65536] 	= {0};
	int gs3_out[65536] 	= {0};
	int gs7_out[65536] 	= {0};
	int dog_out[65536] 	= {0};
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
	
	//calculate data with row
	for(x = 0;x < row;x++){
		for(y = 0;y < col;y++){
			//7*7 Guassian Blur
			for(sr = -3;sr <= 3;sr++){
				int y_sr = 	((y+sr) < 0) ?  -(y+sr) : 
							((y+sr) >= col) ? (2*(col-1) - (y+sr)) : 
							(y+sr);
				gs7_tmp[x*row+y] += gs_7[sr + 3] * data_in[x*row+y_sr];
			}
			mod = gs7_tmp[x*row+y] % 64;
			gs7_tmp[x*row+y] /= 64;
			if(mod >= 32)
				gs7_tmp[x*row+y]++;
			else 
				gs7_tmp[x*row+y] = gs7_tmp[x*row+y];
			//3*3 Guassian Blur
			for(sr = -1;sr <= 1;sr++){
				int y_sr = 	((y+sr) < 0) ?  -(y+sr) : 
							((y+sr) >= col) ? (2*(col-1) - (y+sr)) : 
							(y+sr);
				gs3_tmp[x*row+y] += gs_3[sr + 1] * data_in[x*row+y_sr];
			}
			mod = gs3_tmp[x*row+y] % 4;
		//	if((x*row+y) < 10) 
		//		printf("mod = %x\t",mod);
		//	if((x*row+y) < 10) 
		//		printf("gs3_tmp[x*row+y] = %x\t",gs3_tmp[x*row+y]);
			gs3_tmp[x*row+y] /= 4;
		//	if((x*row+y) < 10) 
		//		printf("gs3_tmp[x*row+y] = %x\t",gs3_tmp[x*row+y]);
			if(mod >= 2)
				gs3_tmp[x*row+y]++;
			else 
				gs3_tmp[x*row+y] = gs3_tmp[x*row+y];
		//	if((x*row+y) < 10) 
		//		printf("gs3_tmp[x*row+y] = %x\n",gs3_tmp[x*row+y]);
			//dog by (7*7gs - 3*3gs)
			dog_tmp[x*row+y] = gs7_tmp[x*row+y] - gs3_tmp[x*row+y];
			if(dog_tmp[x*row+y] < 0) 
				//dog_tmp[x*row+y] = 256;
				dog_tmp[x*row+y] = 256 + dog_tmp[x*row+y];
			//	dog_tmp[x*row+y] = 0;
			//else 
			//	dog_tmp[x*row+y] = 0;
		}
	}

	//calculate data with column	
	for(y = 0;y < col;y++){
		for(x = 0;x < row;x++){
			//7*7 Guassian Blur
			for(sr = -3;sr <= 3;sr++){
				int x_sr = 	((x+sr) < 0) ?  -(x+sr) : 
							((x+sr) >= row) ? (2*(row-1) - (x+sr)) : 
							(x+sr);
				gs7_out[x*row+y] += gs_7[sr + 3] * dog_tmp[x_sr*row+y];
			}
			mod = gs7_out[x*row+y] % 64;
			gs7_out[x*row+y] /= 64;
			if(mod >= 32)
				gs7_out[x*row+y]++;
			else 
				gs7_out[x*row+y] = gs7_out[x*row+y];
			if((x*row+y) == 0)
				printf("gs7_out[0] = %x\n",gs7_out[x*row+y]);
			//3*3 Guassian Blur
			for(sr = -1;sr <= 1;sr++){
				int x_sr = 	((x+sr) < 0) ?  -(x+sr) : 
							((x+sr) >= col) ? (2*(col-1) - (x+sr)) : 
							(x+sr);
				gs3_out[x*row+y] += gs_3[sr + 1] * dog_tmp[x_sr*row+y];
			}
			mod = gs3_out[x*row+y] % 4;
			gs3_out[x*row+y] /= 4;
			if(mod >= 2)
				gs3_out[x*row+y]++;
			else 
				gs3_out[x*row+y] = gs3_out[x*row+y];
			if((x*row+y) == 0)
				printf("gs3_out[0] = %x\n",gs3_out[x*row+y]);
			//dog by (3*3gs - 7*7gs)
			dog_out[x*row+y] = gs7_out[x*row+y] - gs3_out[x*row+y];
			if(dog_out[x*row+y] < 0) 
				dog_out[x*row+y] = 256 + dog_out[x*row+y];
			//	dog_out[x*row+y] = 0;
			//else 
			//	dog_tmp[x*row+y] = 255;
		}
	}
	
	//load array data of dog_tmp to file
	FILE  *fp_1;
	if((fp_1=fopen("dog_tmp.txt","w"))==NULL){
		printf("open file failed\n");
		exit(0);	
	}
	else{
		printf("open file successfully\n");
		for(x=0; x<row; x++){
			for(y=0; y<col; y++){
				fprintf(fp_1,"%x\t",dog_tmp[row*x+y]);
			}
				fprintf(fp_1,"\n");
		}
		fclose(fp_1);	
	}

	//load array data of dog_out to file
	FILE  *fp_2;
	if((fp_2=fopen("dog_out_hex.txt","w"))==NULL){
		printf("open file failed\n");
		exit(0);	
	}
	else{
		printf("open file successfully\n");
		for(x=0; x<row; x++){
			for(y=0; y<col; y++){
				fprintf(fp_2,"%x\t",dog_out[row*x+y]);
			}
				fprintf(fp_2,"\n");
		}
		fclose(fp_2);	
	}
	
	//load array data of dog_out to file
	FILE  *fp_3;
	if((fp_3=fopen("dog_out_dec.txt","w"))==NULL){
		printf("open file failed\n");
		exit(0);	
	}
	else{
		printf("open file successfully\n");
		for(x=0; x<row; x++){
			for(y=0; y<col; y++){
				fprintf(fp_3,"%d\t",dog_out[row*x+y]);
			}
				fprintf(fp_3,"\n");
		}
		fclose(fp_2);	
	}
}
