#include<stdio.h>
#include <string.h>
#include <math.h>

int main(int argc,char* argv[]){
int sum = 0;
for(int  i =1;i<argc;i++){
	sum+=strtol(argv[i]);
}
printf("%d is the sum",sum);
return 0;
}

