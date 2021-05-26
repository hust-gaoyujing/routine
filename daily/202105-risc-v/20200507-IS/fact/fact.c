#include <stdio.h>

int fact(int n){
	if(n < 1) return(1);
	else return (n * fact(n-1));
}

int main(){
	int num = 2;
	int mul;

	mul = fact(num);
	printf("mul = %d",mul);
}


